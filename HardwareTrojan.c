/*
 * hardware_guard.c
 *
 * Educational hardware-integrity / Trojan detection monitor.
 *
 * It:
 *   1. Calculates SHA-256 of a firmware/image file.
 *   2. Compares it against a trusted baseline.
 *   3. Monitors a telemetry file for abnormal values.
 *   4. Reports a suspected hardware Trojan.
 *   5. Places the device into a defensive "BLOCKED" state.
 *
 * This does NOT claim to prove that a physical chip contains a Trojan.
 * Hardware-Trojan detection normally requires hardware-level testing,
 * side-channel analysis, FPGA instrumentation, or trusted attestation.
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <openssl/evp.h>

#define HASH_SIZE 65

#define MAX_TEMP 85.0
#define MAX_CURRENT 2.0

static char trusted_hash[HASH_SIZE];

static int blocked = 0;

/* -------------------------------------------------- */
/* SHA-256                                             */
/* -------------------------------------------------- */

int sha256_file(const char *filename, char *output)
{
    FILE *file;
    unsigned char buffer[8192];
    unsigned char hash[EVP_MAX_MD_SIZE];

    unsigned int hash_len = 0;
    size_t bytes;

    EVP_MD_CTX *ctx;

    file = fopen(filename, "rb");

    if (file == NULL)
        return 0;

    ctx = EVP_MD_CTX_new();

    if (ctx == NULL) {
        fclose(file);
        return 0;
    }

    if (EVP_DigestInit_ex(
            ctx,
            EVP_sha256(),
            NULL) != 1) {

        EVP_MD_CTX_free(ctx);
        fclose(file);
        return 0;
    }

    while ((bytes = fread(
                buffer,
                1,
                sizeof(buffer),
                file)) > 0) {

        if (EVP_DigestUpdate(
                ctx,
                buffer,
                bytes) != 1) {

            EVP_MD_CTX_free(ctx);
            fclose(file);
            return 0;
        }
    }

    if (ferror(file)) {

        EVP_MD_CTX_free(ctx);
        fclose(file);
        return 0;
    }

    if (EVP_DigestFinal_ex(
            ctx,
            hash,
            &hash_len) != 1) {

        EVP_MD_CTX_free(ctx);
        fclose(file);
        return 0;
    }

    EVP_MD_CTX_free(ctx);
    fclose(file);

    for (unsigned int i = 0; i < hash_len; i++) {

        sprintf(
            output + i * 2,
            "%02x",
            hash[i]
        );
    }

    output[hash_len * 2] = '\0';

    return 1;
}

/* -------------------------------------------------- */
/* Load trusted firmware hash                          */
/* -------------------------------------------------- */

int load_baseline(const char *filename)
{
    FILE *file = fopen(filename, "r");

    if (file == NULL)
        return 0;

    if (fgets(
            trusted_hash,
            sizeof(trusted_hash),
            file) == NULL) {

        fclose(file);
        return 0;
    }

    trusted_hash[
        strcspn(trusted_hash, "\r\n")
    ] = '\0';

    fclose(file);

    return strlen(trusted_hash) == 64;
}

/* -------------------------------------------------- */
/* Verify firmware                                     */
/* -------------------------------------------------- */

int verify_firmware(const char *firmware)
{
    char current_hash[HASH_SIZE];

    printf("\n");
    printf("[*] Checking firmware integrity...\n");

    if (!sha256_file(
            firmware,
            current_hash)) {

        printf(
            "\033[1;31m"
            "[ERROR] Cannot read firmware\n"
            "\033[0m"
        );

        return 0;
    }

    printf(
        "    Current SHA-256:\n"
        "    %s\n",
        current_hash
    );

    printf(
        "    Trusted SHA-256:\n"
        "    %s\n",
        trusted_hash
    );

    if (strcmp(
            current_hash,
            trusted_hash) != 0) {

        printf(
            "\n\033[1;41;97m"
            " HARDWARE INTEGRITY ALERT "
            "\033[0m\n"
        );

        printf(
            "Firmware does not match the trusted baseline.\n"
        );

        return 0;
    }

    printf(
        "\033[32m"
        "[OK] Firmware integrity verified.\n"
        "\033[0m"
    );

    return 1;
}

/* -------------------------------------------------- */
/* Telemetry monitor                                   */
/* -------------------------------------------------- */

int check_telemetry(
    double temperature,
    double current)
{
    int abnormal = 0;

    if (temperature > MAX_TEMP) {

        printf(
            "\033[1;31m"
            "[ALERT] Excessive temperature: %.2f C\n"
            "\033[0m",
            temperature
        );

        abnormal = 1;
    }

    if (current > MAX_CURRENT) {

        printf(
            "\033[1;31m"
            "[ALERT] Excessive current: %.2f A\n"
            "\033[0m",
            current
        );

        abnormal = 1;
    }

    return abnormal;
}

/* -------------------------------------------------- */
/* Defensive block                                     */
/* -------------------------------------------------- */

void block_device(void)
{
    if (blocked)
        return;

    blocked = 1;

    printf("\n");
    printf(
        "\033[1;41;97m"
        "========================================\n"
        "       DEVICE BLOCKED\n"
        "========================================\n"
        "\033[0m"
    );

    printf(
        "Reason: hardware integrity anomaly.\n"
    );

    printf(
        "The monitor will no longer consider\n"
        "this device trusted.\n"
    );
}

/* -------------------------------------------------- */
/* Main                                                */
/* -------------------------------------------------- */

int main(int argc, char *argv[])
{
    if (argc != 3) {

        printf(
            "Usage:\n"
            "  %s <firmware_file> <baseline_file>\n\n",
            argv[0]
        );

        printf(
            "Example:\n"
            "  %s firmware.bin trusted.sha256\n",
            argv[0]
        );

        return EXIT_FAILURE;
    }

    const char *firmware = argv[1];
    const char *baseline = argv[2];

    printf(
        "\033[1;36m"
        "========================================\n"
        "       HARDWARE TROJAN GUARD\n"
        "========================================\n"
        "\033[0m"
    );

    /*
     * Load trusted hash.
     */
    if (!load_baseline(baseline)) {

        printf(
            "\033[1;31m"
            "[ERROR] Invalid baseline file.\n"
            "\033[0m"
        );

        return EXIT_FAILURE;
    }

    /*
     * Verify firmware.
     */
    if (!verify_firmware(firmware)) {

        block_device();

        return EXIT_FAILURE;
    }

    /*
     * Example telemetry loop.
     *
     * In a real implementation, replace these values with
     * readings obtained through a trusted hardware interface.
     */
    printf("\n");
    printf("[*] Starting hardware monitor...\n");
    printf("[*] Press Ctrl+C to stop.\n\n");

    while (!blocked) {

        /*
         * Example safe simulated telemetry.
         *
         * Replace these with actual readings from your
         * board/device.
         */
        double temperature = 45.0;
        double current = 0.80;

        printf(
            "Temperature: %.2f C | Current: %.2f A\n",
            temperature,
            current
        );

        if (check_telemetry(
                temperature,
                current)) {

            block_device();
            break;
        }

        sleep(2);
    }

    return EXIT_SUCCESS;
}

