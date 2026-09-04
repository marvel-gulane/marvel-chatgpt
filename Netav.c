/*
 * netav.c
 *
 * Educational network antivirus / IDS for Fedora Linux.
 *
 * Features:
 *   - Lists available network interfaces
 *   - Lets the user select an interface
 *   - Captures packets with libpcap
 *   - Inspects IPv4 TCP/UDP traffic
 *   - Detects simple text-based suspicious signatures
 *   - Displays packet statistics
 *
 * IMPORTANT:
 * This is an educational IDS/scanner.
 * It does not block, modify, inject, or attack network traffic.
 *
 * Fedora dependencies:
 *   sudo dnf install gcc libpcap-devel
 *
 * Compile:
 *   gcc -Wall -Wextra -O2 netav.c -o netav -lpcap
 *
 * Run:
 *   sudo ./netav
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include <pcap.h>

#include <arpa/inet.h>
#include <netinet/ip.h>
#include <netinet/tcp.h>
#include <netinet/udp.h>
#include <net/ethernet.h>

#define SNAPLEN 65535
#define PCAP_TIMEOUT 1000

#define MAX_INTERFACE_NAME 256
#define MAX_SIGNATURE_LENGTH 64

/* --------------------------------------------------------- */
/* Statistics                                                */
/* --------------------------------------------------------- */

static unsigned long total_packets = 0;
static unsigned long ipv4_packets = 0;
static unsigned long tcp_packets = 0;
static unsigned long udp_packets = 0;
static unsigned long suspicious_packets = 0;

/* --------------------------------------------------------- */
/* Simple educational signatures                             */
/* --------------------------------------------------------- */

static const char *signatures[] = {
    "powershell",
    "cmd.exe",
    "wget ",
    "curl ",
    "/bin/sh",
    "meterpreter",
    "ransomware",
    "malware"
};

#define SIGNATURE_COUNT \
    (sizeof(signatures) / sizeof(signatures[0]))

/* --------------------------------------------------------- */
/* Case-insensitive payload search                            */
/* --------------------------------------------------------- */

static int contains_signature(
    const unsigned char *data,
    int length,
    const char *signature)
{
    size_t sig_len = strlen(signature);

    if (sig_len == 0 || length < (int)sig_len)
        return 0;

    for (int i = 0; i <= length - (int)sig_len; i++) {

        int match = 1;

        for (size_t j = 0; j < sig_len; j++) {

            unsigned char a =
                (unsigned char)tolower(data[i + j]);

            unsigned char b =
                (unsigned char)tolower(signature[j]);

            if (a != b) {
                match = 0;
                break;
            }
        }

        if (match)
            return 1;
    }

    return 0;
}

/* --------------------------------------------------------- */
/* Check payload against signatures                          */
/* --------------------------------------------------------- */

static const char *detect_payload(
    const unsigned char *payload,
    int length)
{
    for (size_t i = 0; i < SIGNATURE_COUNT; i++) {

        if (contains_signature(
                payload,
                length,
                signatures[i])) {

            return signatures[i];
        }
    }

    return NULL;
}

/* --------------------------------------------------------- */
/* Print statistics                                           */
/* --------------------------------------------------------- */

static void print_statistics(void)
{
    printf("\n");
    printf("\033[1;36m");
    printf("========================================\n");
    printf("          NETWORK AV STATISTICS\n");
    printf("========================================\n");
    printf("\033[0m");

    printf("Total packets      : %lu\n", total_packets);
    printf("IPv4 packets       : %lu\n", ipv4_packets);
    printf("TCP packets        : %lu\n", tcp_packets);
    printf("UDP packets        : %lu\n", udp_packets);

    if (suspicious_packets > 0) {
        printf(
            "\033[1;31m"
            "Suspicious packets : %lu"
            "\033[0m\n",
            suspicious_packets
        );
    } else {
        printf(
            "\033[32m"
            "Suspicious packets : 0"
            "\033[0m\n"
        );
    }

    printf("========================================\n\n");
}

/* --------------------------------------------------------- */
/* Packet callback                                            */
/* --------------------------------------------------------- */

static void packet_handler(
    unsigned char *user,
    const struct pcap_pkthdr *header,
    const unsigned char *packet)
{
    (void)user;

    total_packets++;

    /*
     * Need an Ethernet header.
     */
    if (header->caplen < sizeof(struct ether_header))
        return;

    const struct ether_header *ether =
        (const struct ether_header *)packet;

    /*
     * Only inspect IPv4.
     */
    if (ntohs(ether->ether_type) != ETHERTYPE_IP)
        return;

    ipv4_packets++;

    /*
     * Check that enough data exists for an IP header.
     */
    size_t ethernet_size =
        sizeof(struct ether_header);

    if (header->caplen <
        ethernet_size + sizeof(struct ip)) {

        return;
    }

    const struct ip *ip =
        (const struct ip *)(packet + ethernet_size);

    int ip_header_length =
        ip->ip_hl * 4;

    /*
     * Invalid IP header.
     */
    if (ip_header_length < 20)
        return;

    if (header->caplen <
        ethernet_size + (unsigned int)ip_header_length) {

        return;
    }

    char source[INET_ADDRSTRLEN];
    char destination[INET_ADDRSTRLEN];

    if (inet_ntop(
            AF_INET,
            &ip->ip_src,
            source,
            sizeof(source)) == NULL) {

        strcpy(source, "?");
    }

    if (inet_ntop(
            AF_INET,
            &ip->ip_dst,
            destination,
            sizeof(destination)) == NULL) {

        strcpy(destination, "?");
    }

    /*
     * TCP
     */
    if (ip->ip_p == IPPROTO_TCP) {

        tcp_packets++;

        size_t tcp_offset =
            ethernet_size + ip_header_length;

        if (header->caplen <
            tcp_offset + sizeof(struct tcphdr)) {

            return;
        }

        const struct tcphdr *tcp =
            (const struct tcphdr *)
            (packet + tcp_offset);

        int tcp_header_length =
            tcp->th_off * 4;

        if (tcp_header_length < 20)
            return;

        size_t payload_offset =
            tcp_offset + tcp_header_length;

        printf(
            "[%lu] TCP  %s:%u -> %s:%u",
            total_packets,
            source,
            ntohs(tcp->th_sport),
            destination,
            ntohs(tcp->th_dport)
        );

        /*
         * Inspect payload if captured.
         */
        if (payload_offset < header->caplen) {

            int payload_length =
                (int)(header->caplen - payload_offset);

            const unsigned char *payload =
                packet + payload_offset;

            const char *threat =
                detect_payload(
                    payload,
                    payload_length
                );

            if (threat != NULL) {

                suspicious_packets++;

                printf(
                    " \033[1;31m"
                    "[THREAT: %s]"
                    "\033[0m",
                    threat
                );
            }
        }

        printf("\n");
    }

    /*
     * UDP
     */
    else if (ip->ip_p == IPPROTO_UDP) {

        udp_packets++;

        size_t udp_offset =
            ethernet_size + ip_header_length;

        if (header->caplen <
            udp_offset + sizeof(struct udphdr)) {

            return;
        }

        const struct udphdr *udp =
            (const struct udphdr *)
            (packet + udp_offset);

        printf(
            "[%lu] UDP  %s:%u -> %s:%u",
            total_packets,
            source,
            ntohs(udp->uh_sport),
            destination,
            ntohs(udp->uh_dport)
        );

        /*
         * UDP payload.
         */
        size_t payload_offset =
            udp_offset + sizeof(struct udphdr);

        if (payload_offset < header->caplen) {

            int payload_length =
                (int)(header->caplen - payload_offset);

            const unsigned char *payload =
                packet + payload_offset;

            const char *threat =
                detect_payload(
                    payload,
                    payload_length
                );

            if (threat != NULL) {

                suspicious_packets++;

                printf(
                    " \033[1;31m"
                    "[THREAT: %s]"
                    "\033[0m",
                    threat
                );
            }
        }

        printf("\n");
    }
}

/* --------------------------------------------------------- */
/* List interfaces                                            */
/* --------------------------------------------------------- */

static int select_interface(
    char *interface,
    size_t interface_size)
{
    char errbuf[PCAP_ERRBUF_SIZE];

    pcap_if_t *devices = NULL;
    pcap_if_t *device = NULL;

    int result =
        pcap_findalldevs(
            &devices,
            errbuf
        );

    if (result == -1) {

        fprintf(
            stderr,
            "pcap_findalldevs(): %s\n",
            errbuf
        );

        return 0;
    }

    if (devices == NULL) {

        fprintf(
            stderr,
            "No network interfaces found.\n"
        );

        return 0;
    }

    printf("\n");
    printf("\033[1;36m");
    printf("Available network interfaces:\n");
    printf("\033[0m");

    int count = 0;

    for (device = devices;
         device != NULL;
         device = device->next) {

        count++;

        printf(
            "  %d. %s",
            count,
            device->name
        );

        if (device->description != NULL) {

            printf(
                " - %s",
                device->description
            );
        }

        printf("\n");
    }

    if (count == 0) {

        pcap_freealldevs(devices);

        return 0;
    }

    int selection;

    printf("\nSelect interface [1-%d]: ", count);

    if (scanf("%d", &selection) != 1) {

        pcap_freealldevs(devices);

        return 0;
    }

    if (selection < 1 || selection > count) {

        printf("Invalid selection.\n");

        pcap_freealldevs(devices);

        return 0;
    }

    device = devices;

    for (int i = 1; i < selection; i++) {
        device = device->next;
    }

    snprintf(
        interface,
        interface_size,
        "%s",
        device->name
    );

    pcap_freealldevs(devices);

    return 1;
}

/* --------------------------------------------------------- */
/* Main                                                       */
/* --------------------------------------------------------- */

int main(void)
{
    char errbuf[PCAP_ERRBUF_SIZE];

    char interface[MAX_INTERFACE_NAME];

    pcap_t *handle;

    /*
     * Select network interface.
     */
    if (!select_interface(
            interface,
            sizeof(interface))) {

        return EXIT_FAILURE;
    }

    printf("\n");
    printf("\033[1;36m");
    printf("========================================\n");
    printf("          C NETWORK ANTIVIRUS\n");
    printf("========================================\n");
    printf("\033[0m");

    printf(
        "Interface: %s\n",
        interface
    );

    printf(
        "Starting packet inspection...\n"
    );

    printf(
        "Press Ctrl+C to stop.\n\n"
    );

    /*
     * Open the interface for packet capture.
     *
     * Promiscuous mode is enabled here.
     */
    handle = pcap_open_live(
        interface,
        SNAPLEN,
        1,
        PCAP_TIMEOUT,
        errbuf
    );

    if (handle == NULL) {

        fprintf(
            stderr,
            "pcap_open_live(): %s\n",
            errbuf
        );

        return EXIT_FAILURE;
    }

    /*
     * Check link type.
     */
    int datalink = pcap_datalink(handle);

    if (datalink != DLT_EN10MB) {

        fprintf(
            stderr,
            "Unsupported link type: %d\n",
            datalink
        );

        fprintf(
            stderr,
            "This example expects Ethernet.\n"
        );

        pcap_close(handle);

        return EXIT_FAILURE;
    }

    /*
     * Start capture.
     */
    int result =
        pcap_loop(
            handle,
            -1,
            packet_handler,
            NULL
        );

    if (result == PCAP_ERROR) {

        fprintf(
            stderr,
            "\npcap_loop(): %s\n",
            pcap_geterr(handle)
        );
    }

    /*
     * Final statistics.
     */
    printf("\n");
    print_statistics();

    pcap_close(handle);

    return EXIT_SUCCESS;
}

