#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <sys/statvfs.h>
#include <sys/sysinfo.h>
#include <time.h>
#include <errno.h>

#define RESET   "\033[0m"
#define BOLD    "\033[1m"
#define DIM     "\033[2m"

#define BLACK   "\033[30m"
#define RED     "\033[31m"
#define GREEN   "\033[32m"
#define YELLOW  "\033[33m"
#define BLUE    "\033[34m"
#define MAGENTA "\033[35m"
#define CYAN    "\033[36m"
#define WHITE   "\033[37m"

#define BG_BLUE "\033[44m"

static volatile sig_atomic_t running = 1;

typedef struct {
    unsigned long long user;
    unsigned long long nice;
    unsigned long long system;
    unsigned long long idle;
    unsigned long long iowait;
    unsigned long long irq;
    unsigned long long softirq;
    unsigned long long steal;
} CPUStats;

typedef struct {
    unsigned long long rx;
    unsigned long long tx;
} NetStats;

static void stop_monitor(int sig)
{
    (void)sig;
    running = 0;
}

/* --------------------------------------------------------- */
/* CPU                                                         */
/* --------------------------------------------------------- */

static int read_cpu(CPUStats *c)
{
    FILE *fp = fopen("/proc/stat", "r");
    if (!fp)
        return -1;

    char line[512];

    if (!fgets(line, sizeof(line), fp)) {
        fclose(fp);
        return -1;
    }

    int n = sscanf(
        line,
        "cpu %llu %llu %llu %llu %llu %llu %llu %llu",
        &c->user,
        &c->nice,
        &c->system,
        &c->idle,
        &c->iowait,
        &c->irq,
        &c->softirq,
        &c->steal
    );

    fclose(fp);

    return n == 8 ? 0 : -1;
}

static double cpu_percent(
    const CPUStats *a,
    const CPUStats *b)
{
    unsigned long long idle_a =
        a->idle + a->iowait;

    unsigned long long idle_b =
        b->idle + b->iowait;

    unsigned long long total_a =
        a->user + a->nice + a->system +
        a->idle + a->iowait + a->irq +
        a->softirq + a->steal;

    unsigned long long total_b =
        b->user + b->nice + b->system +
        b->idle + b->iowait + b->irq +
        b->softirq + b->steal;

    unsigned long long total =
        total_b - total_a;

    unsigned long long idle =
        idle_b - idle_a;

    if (!total)
        return 0.0;

    return 100.0 *
           (double)(total - idle) /
           (double)total;
}

/* --------------------------------------------------------- */
/* Memory                                                       */
/* --------------------------------------------------------- */

static int read_memory(
    unsigned long long *total,
    unsigned long long *available,
    unsigned long long *swap_total,
    unsigned long long *swap_free)
{
    FILE *fp = fopen("/proc/meminfo", "r");

    if (!fp)
        return -1;

    char line[256];

    unsigned long long mt = 0;
    unsigned long long ma = 0;
    unsigned long long st = 0;
    unsigned long long sf = 0;

    while (fgets(line, sizeof(line), fp)) {

        if (sscanf(line, "MemTotal: %llu kB", &mt) == 1)
            continue;

        if (sscanf(line, "MemAvailable: %llu kB", &ma) == 1)
            continue;

        if (sscanf(line, "SwapTotal: %llu kB", &st) == 1)
            continue;

        if (sscanf(line, "SwapFree: %llu kB", &sf) == 1)
            continue;
    }

    fclose(fp);

    *total = mt * 1024ULL;
    *available = ma * 1024ULL;
    *swap_total = st * 1024ULL;
    *swap_free = sf * 1024ULL;

    return 0;
}

/* --------------------------------------------------------- */
/* Network                                                       */
/* --------------------------------------------------------- */

static int read_network(NetStats *net)
{
    FILE *fp = fopen("/proc/net/dev", "r");

    if (!fp)
        return -1;

    char line[512];

    net->rx = 0;
    net->tx = 0;

    while (fgets(line, sizeof(line), fp)) {

        char iface[64];

        unsigned long long rx_bytes;
        unsigned long long rx_packets;
        unsigned long long rx_err;
        unsigned long long rx_drop;
        unsigned long long rx_fifo;
        unsigned long long rx_frame;
        unsigned long long rx_compressed;
        unsigned long long rx_multicast;

        unsigned long long tx_bytes;
        unsigned long long tx_packets;
        unsigned long long tx_err;
        unsigned long long tx_drop;
        unsigned long long tx_fifo;
        unsigned long long tx_colls;
        unsigned long long tx_carrier;
        unsigned long long tx_compressed;

        int n = sscanf(
            line,
            " %63[^:]: "
            "%llu %llu %llu %llu %llu %llu %llu %llu "
            "%llu %llu %llu %llu %llu %llu %llu %llu",
            iface,

            &rx_bytes,
            &rx_packets,
            &rx_err,
            &rx_drop,
            &rx_fifo,
            &rx_frame,
            &rx_compressed,
            &rx_multicast,

            &tx_bytes,
            &tx_packets,
            &tx_err,
            &tx_drop,
            &tx_fifo,
            &tx_colls,
            &tx_carrier,
            &tx_compressed
        );

        if (n == 17 && strcmp(iface, "lo") != 0) {
            net->rx += rx_bytes;
            net->tx += tx_bytes;
        }
    }

    fclose(fp);

    return 0;
}

/* --------------------------------------------------------- */
/* Disk                                                          */
/* --------------------------------------------------------- */

static int read_disk(
    const char *path,
    unsigned long long *total,
    unsigned long long *used)
{
    struct statvfs fs;

    if (statvfs(path, &fs) != 0)
        return -1;

    *total =
        (unsigned long long)fs.f_blocks *
        fs.f_frsize;

    unsigned long long free =
        (unsigned long long)fs.f_bfree *
        fs.f_frsize;

    *used = *total - free;

    return 0;
}

/* --------------------------------------------------------- */
/* Process count                                                 */
/* --------------------------------------------------------- */

static int process_count(void)
{
    FILE *fp = popen(
        "ls -1 /proc/[0-9]* 2>/dev/null | wc -l",
        "r"
    );

    if (!fp)
        return 0;

    int count = 0;
    fscanf(fp, "%d", &count);

    pclose(fp);

    return count;
}

/* --------------------------------------------------------- */
/* Helpers                                                       */
/* --------------------------------------------------------- */

static void human_bytes(
    unsigned long long bytes,
    char *out,
    size_t size)
{
    const char *units[] = {
        "B", "K", "M", "G", "T", "P"
    };

    double value = (double)bytes;
    int unit = 0;

    while (value >= 1024.0 && unit < 5) {
        value /= 1024.0;
        unit++;
    }

    snprintf(
        out,
        size,
        "%.1f%s",
        value,
        units[unit]
    );
}

static const char *color_percent(double p)
{
    if (p >= 90.0)
        return RED;

    if (p >= 70.0)
        return YELLOW;

    return GREEN;
}

static void bar(
    double percent,
    int width)
{
    int filled =
        (int)((percent / 100.0) * width);

    if (filled > width)
        filled = width;

    if (filled < 0)
        filled = 0;

    printf("%s[", color_percent(percent));

    for (int i = 0; i < width; i++) {
        if (i < filled)
            printf("█");
        else
            printf("░");
    }

    printf("]%s", RESET);
}

static void uptime_string(
    double seconds,
    char *out,
    size_t size)
{
    unsigned long long s =
        (unsigned long long)seconds;

    unsigned long long days = s / 86400;
    s %= 86400;

    unsigned long long hours = s / 3600;
    s %= 3600;

    unsigned long long minutes = s / 60;
    s %= 60;

    snprintf(
        out,
        size,
        "%llud %02lluh %02llum",
        days,
        hours,
        minutes
    );
}

static void hostname(char *out, size_t size)
{
    if (gethostname(out, size) != 0)
        snprintf(out, size, "unknown");

    out[size - 1] = '\0';
}

/* --------------------------------------------------------- */
/* Dashboard                                                     */
/* --------------------------------------------------------- */

static void dashboard(
    double cpu,
    unsigned long long mem_total,
    unsigned long long mem_used,
    unsigned long long swap_total,
    unsigned long long swap_used,
    unsigned long long disk_total,
    unsigned long long disk_used,
    double load1,
    double load5,
    double load15,
    double uptime,
    double rx,
    double tx,
    int processes,
    int cores)
{
    char host[256];
    char mem[32];
    char memt[32];
    char swap[32];
    char swapt[32];
    char disk[32];
    char diskt[32];
    char rx_s[32];
    char tx_s[32];
    char up[64];

    hostname(host, sizeof(host));

    human_bytes(mem_used, mem, sizeof(mem));
    human_bytes(mem_total, memt, sizeof(memt));

    human_bytes(swap_used, swap, sizeof(swap));
    human_bytes(swap_total, swapt, sizeof(swapt));

    human_bytes(disk_used, disk, sizeof(disk));
    human_bytes(disk_total, diskt, sizeof(diskt));

    human_bytes(
        (unsigned long long)rx,
        rx_s,
        sizeof(rx_s)
    );

    human_bytes(
        (unsigned long long)tx,
        tx_s,
        sizeof(tx_s)
    );

    uptime_string(uptime, up, sizeof(up));

    double mem_pct =
        mem_total ?
        100.0 * mem_used / mem_total :
        0.0;

    double swap_pct =
        swap_total ?
        100.0 * swap_used / swap_total :
        0.0;

    double disk_pct =
        disk_total ?
        100.0 * disk_used / disk_total :
        0.0;

    printf("\033[2J\033[H");

    printf(
        BOLD CYAN
        "╔══════════════════════════════════════════════════════════╗\n"
        "║                  FEDORA SYSTEM MONITOR                  ║\n"
        "╚══════════════════════════════════════════════════════════╝"
        RESET "\n\n"
    );

    printf(
        BOLD WHITE " HOST " RESET
        "%-30s "
        BOLD WHITE " CPU " RESET
        "%d cores\n",
        host,
        cores
    );

    printf(
        DIM " ─────────────────────────────────────────────────────────\n"
        RESET
    );

    printf(
        BOLD " CPU   " RESET
    );

    bar(cpu, 28);

    printf(
        " %s%6.2f%%%s\n",
        color_percent(cpu),
        cpu,
        RESET
    );

    printf(
        BOLD " RAM   " RESET
    );

    bar(mem_pct, 28);

    printf(
        " %s / %s\n",
        mem,
        memt
    );

    printf(
        BOLD " SWAP  " RESET
    );

    bar(swap_pct, 28);

    printf(
        " %s / %s\n",
        swap,
        swapt
    );

    printf(
        BOLD " DISK  " RESET
    );

    bar(disk_pct, 28);

    printf(
        " %s / %s\n",
        disk,
        diskt
    );

    printf("\n");

    printf(
        BOLD MAGENTA
        " LOAD\n"
        RESET
    );

    printf(
        "   1m   %s%.2f%s\n"
        "   5m   %s%.2f%s\n"
        "  15m   %s%.2f%s\n",
        CYAN, load1, RESET,
        CYAN, load5, RESET,
        CYAN, load15, RESET
    );

    printf("\n");

    printf(
        BOLD BLUE
        " NETWORK\n"
        RESET
        "   ↓ RX   %s%-10s%s / sec\n"
        "   ↑ TX   %s%-10s%s / sec\n",
        GREEN, rx_s, RESET,
        YELLOW, tx_s, RESET
    );

    printf("\n");

    printf(
        BOLD GREEN
        " SYSTEM\n"
        RESET
        "   Uptime      %s\n"
        "   Processes   %d\n"
        "   CPUs        %d\n",
        up,
        processes,
        cores
    );

    printf(
        "\n" DIM
        "   Refresh: 1s    Ctrl+C: exit\n"
        RESET
    );

    fflush(stdout);
}

/* --------------------------------------------------------- */
/* Main                                                          */
/* --------------------------------------------------------- */

int main(void)
{
    signal(SIGINT, stop_monitor);
    signal(SIGTERM, stop_monitor);

    CPUStats old_cpu;
    CPUStats new_cpu;

    NetStats old_net;
    NetStats new_net;

    if (read_cpu(&old_cpu) != 0) {
        fprintf(stderr, "Failed to read /proc/stat\n");
        return 1;
    }

    if (read_network(&old_net) != 0) {
        fprintf(stderr, "Failed to read /proc/net/dev\n");
        return 1;
    }

    int cores = get_nprocs();

    while (running) {

        sleep(1);

        if (read_cpu(&new_cpu) != 0)
            break;

        if (read_network(&new_net) != 0)
            break;

        double cpu =
            cpu_percent(&old_cpu, &new_cpu);

        double rx =
            (double)(new_net.rx - old_net.rx);

        double tx =
            (double)(new_net.tx - old_net.tx);

        unsigned long long mem_total = 0;
        unsigned long long mem_available = 0;
        unsigned long long swap_total = 0;
        unsigned long long swap_free = 0;

        read_memory(
            &mem_total,
            &mem_available,
            &swap_total,
            &swap_free
        );

        unsigned long long mem_used =
            mem_total - mem_available;

        unsigned long long swap_used =
            swap_total - swap_free;

        unsigned long long disk_total = 0;
        unsigned long long disk_used = 0;

        read_disk(
            "/",
            &disk_total,
            &disk_used
        );

        double load1 = 0;
        double load5 = 0;
        double load15 = 0;

{
    FILE *fp = fopen("/proc/loadavg", "r");

    if (fp) {
        if (fscanf(
                fp,
                "%lf %lf %lf",
                &load1,
                &load5,
                &load15
            ) != 3) {
            load1 = load5 = load15 = 0.0;
        }

        fclose(fp);
    }
}

        double uptime = 0;

        {
            FILE *fp = fopen("/proc/uptime", "r");

            if (fp) {
                fscanf(fp, "%lf", &uptime);
                fclose(fp);
            }
        }

        dashboard(
            cpu,
            mem_total,
            mem_used,
            swap_total,
            swap_used,
            disk_total,
            disk_used,
            load1,
            load5,
            load15,
            uptime,
            rx,
            tx,
            process_count(),
            cores
        );

        old_cpu = new_cpu;
        old_net = new_net;
    }

    printf(
        "\033[0m\n"
        "Monitor stopped.\n"
    );

    return 0;
}

