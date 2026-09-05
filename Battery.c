/*
 * batteryoptimize.c
 *
 * Fedora/Linux battery optimizer with centralized safe_snprintf().
 *
 * Build:
 *   gcc -Wall -Wextra -Wpedantic -O2 -std=c11 \
 *       batteryoptimize.c -o batteryoptimize
 *
 * Usage:
 *   ./batteryoptimize
 *   ./batteryoptimize --status
 *   sudo ./batteryoptimize --optimize
 */

#define _GNU_SOURCE

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdarg.h>

#define PATH_SIZE 512
#define VALUE_SIZE 128

/*
 * Safe snprintf helper.
 *
 * Return values:
 *   0  = success
 *  -1  = invalid argument or snprintf() error
 *   1  = output was truncated
 */
static int safe_snprintf(char *dest,
                         size_t dest_size,
                         const char *format,
                         ...)
{
    int ret;
    va_list args;

    if (dest == NULL || format == NULL || dest_size == 0)
        return -1;

    va_start(args, format);

    ret = vsnprintf(dest, dest_size, format, args);

    va_end(args);

    if (ret < 0) {
        dest[0] = '\0';
        return -1;
    }

    if ((size_t)ret >= dest_size) {
        dest[dest_size - 1] = '\0';
        return 1;
    }

    return 0;
}

/*
 * Read one line from a file.
 */
static int read_file(const char *path,
                     char *buffer,
                     size_t buffer_size)
{
    FILE *file;
    size_t len;

    if (path == NULL || buffer == NULL || buffer_size == 0)
        return -1;

    file = fopen(path, "r");

    if (file == NULL)
        return -1;

    if (fgets(buffer, (int)buffer_size, file) == NULL) {
        fclose(file);
        return -1;
    }

    fclose(file);

    len = strlen(buffer);

    if (len > 0 && buffer[len - 1] == '\n')
        buffer[len - 1] = '\0';

    return 0;
}

/*
 * Find the first battery exposed by Linux sysfs.
 */
static int find_battery(char *battery_path,
                        size_t path_size)
{
    char path[PATH_SIZE];
    char type[VALUE_SIZE];

    if (battery_path == NULL || path_size == 0)
        return -1;

    for (int i = 0; i < 10; ++i) {

        if (safe_snprintf(path,
                          sizeof(path),
                          "/sys/class/power_supply/BAT%d/type",
                          i) != 0) {
            continue;
        }

        if (read_file(path, type, sizeof(type)) != 0)
            continue;

        if (strcmp(type, "Battery") == 0) {

            if (safe_snprintf(battery_path,
                              path_size,
                              "/sys/class/power_supply/BAT%d",
                              i) != 0) {
                return -1;
            }

            return 0;
        }
    }

    return -1;
}

/*
 * Read a value from a battery sysfs entry.
 */
static int read_battery_value(const char *battery_path,
                              const char *filename,
                              char *value,
                              size_t value_size)
{
    char path[PATH_SIZE];

    if (battery_path == NULL ||
        filename == NULL ||
        value == NULL ||
        value_size == 0) {
        return -1;
    }

    /*
     * The destination is bounded by sizeof(path), while the helper
     * checks for truncation.
     */
    if (safe_snprintf(path,
                      sizeof(path),
                      "%s/%s",
                      battery_path,
                      filename) != 0) {
        return -1;
    }

    return read_file(path, value, value_size);
}

/*
 * Display battery status.
 */
static void show_battery(const char *battery_path)
{
    char capacity[VALUE_SIZE];
    char status[VALUE_SIZE];
    char output[VALUE_SIZE];

    int capacity_num;
    int ret;

    if (read_battery_value(battery_path,
                            "capacity",
                            capacity,
                            sizeof(capacity)) != 0) {
        fprintf(stderr,
                "Unable to read battery capacity.\n");
        return;
    }

    if (read_battery_value(battery_path,
                            "status",
                            status,
                            sizeof(status)) != 0) {
        strcpy(status, "Unknown");
    }

    capacity_num = atoi(capacity);

    /*
     * IMPORTANT:
     *
     * safe_snprintf() checks the destination size and detects
     * truncation instead of allowing an unchecked snprintf().
     */
    ret = safe_snprintf(output,
                        sizeof(output),
                        "Battery: %d%% | Status: %.80s",
                        capacity_num,
                        status);

    if (ret != 0) {
        fprintf(stderr,
                "Warning: battery status output was truncated.\n");
    }

    printf("%s\n", output);
}

/*
 * Write a value to a sysfs file.
 */
static int write_sysfs(const char *path,
                       const char *value)
{
    FILE *file;

    if (path == NULL || value == NULL)
        return -1;

    file = fopen(path, "w");

    if (file == NULL)
        return -1;

    if (fputs(value, file) == EOF) {
        fclose(file);
        return -1;
    }

    if (fclose(file) != 0)
        return -1;

    return 0;
}

/*
 * Set CPU governor to powersave where supported.
 */
static void optimize_cpu_governor(void)
{
    char path[PATH_SIZE];

    for (int cpu = 0; cpu < 256; ++cpu) {

        if (safe_snprintf(
                path,
                sizeof(path),
                "/sys/devices/system/cpu/cpu%d/cpufreq/scaling_governor",
                cpu) != 0) {
            continue;
        }

        /*
         * Systems without this sysfs entry are simply skipped.
         */
        (void)write_sysfs(path, "powersave");
    }
}

/*
 * Enable runtime power management for PCI devices where exposed.
 */
static void optimize_runtime_pm(void)
{
    char path[PATH_SIZE];

    for (int bus = 0; bus < 256; ++bus) {

        if (safe_snprintf(
                path,
                sizeof(path),
                "/sys/bus/pci/devices/0000:%02x:00.0/power/control",
                bus) != 0) {
            continue;
        }

        (void)write_sysfs(path, "auto");
    }
}

/*
 * Apply battery-saving settings.
 */
static void optimize(void)
{
    printf("Applying battery-saving settings...\n");

    optimize_cpu_governor();
    optimize_runtime_pm();

    printf("Optimization completed.\n");
}

/*
 * Command-line help.
 */
static void usage(const char *program)
{
    printf("Usage: %s [OPTION]\n\n", program);

    printf("Options:\n");
    printf("  --status       Show battery status\n");
    printf("  --optimize     Apply power-saving settings\n");
    printf("  --help         Show this help\n");
}

/*
 * Main program.
 */
int main(int argc, char *argv[])
{
    char battery_path[PATH_SIZE];

    if (find_battery(battery_path,
                     sizeof(battery_path)) != 0) {
        fprintf(stderr,
                "No battery found under "
                "/sys/class/power_supply/.\n");

        return EXIT_FAILURE;
    }

    /*
     * Default action.
     */
    if (argc == 1 ||
        strcmp(argv[1], "--status") == 0) {

        show_battery(battery_path);

        return EXIT_SUCCESS;
    }

    /*
     * Optimization requires root privileges.
     */
    if (strcmp(argv[1], "--optimize") == 0) {

        show_battery(battery_path);

        if (geteuid() != 0) {
            fprintf(stderr,
                    "Optimization requires root privileges.\n");

            fprintf(stderr,
                    "Run:\n"
                    "  sudo %s --optimize\n",
                    argv[0]);

            return EXIT_FAILURE;
        }

        optimize();

        return EXIT_SUCCESS;
    }

    /*
     * Help.
     */
    if (strcmp(argv[1], "--help") == 0 ||
        strcmp(argv[1], "-h") == 0) {

        usage(argv[0]);

        return EXIT_SUCCESS;
    }

    fprintf(stderr,
            "Unknown option: %.100s\n",
            argv[1]);

    usage(argv[0]);

    return EXIT_FAILURE;
}

