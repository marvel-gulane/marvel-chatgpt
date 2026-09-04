#define _GNU_SOURCE

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/inotify.h>

#define BUFFER_SIZE (1024 * (sizeof(struct inotify_event) + 64))
#define MAX_LINE 4096

int failed_attempts = 0;

void alert(const char *message)
{
    printf(
        "\033[1;31m"
        "\n[SECURITY ALERT] %s\n"
        "\033[0m",
        message
    );
}

int suspicious_line(const char *line)
{
    const char *patterns[] = {
        "Failed password",
        "authentication failure",
        "Invalid user",
        "BREAK-IN",
        "authentication failed"
    };

    int count =
        sizeof(patterns) / sizeof(patterns[0]);

    for (int i = 0; i < count; i++) {

        if (strstr(line, patterns[i]) != NULL)
            return 1;
    }

    return 0;
}

void process_log(const char *filename)
{
    FILE *file = fopen(filename, "r");

    if (!file) {
        perror("fopen");
        return;
    }

    char line[MAX_LINE];

    while (fgets(line, sizeof(line), file)) {

        if (suspicious_line(line)) {

            failed_attempts++;

            printf(
                "\033[33m[SUSPICIOUS]\033[0m %s",
                line
            );

            if (failed_attempts >= 5) {

                alert(
                    "Multiple authentication failures detected!"
                );

                failed_attempts = 0;
            }
        }
    }

    fclose(file);
}

int main(int argc, char *argv[])
{
    const char *logfile;

    if (argc == 2) {
        logfile = argv[1];
    } else {
        /*
         * Fedora commonly uses the systemd journal instead
         * of a traditional authentication log.
         *
         * This default is useful on systems where
         * /var/log/secure exists.
         */
        logfile = "/var/log/secure";
    }

    printf(
        "\033[1;36m"
        "========================================\n"
        "       C HACKING DEFENSE MONITOR\n"
        "========================================\n"
        "\033[0m"
    );

    printf("Monitoring: %s\n", logfile);
    printf("Press Ctrl+C to stop.\n\n");

    /*
     * Read existing log.
     */
    process_log(logfile);

    /*
     * Watch the directory containing the log.
     */
    char directory[4096];

    strncpy(
        directory,
        logfile,
        sizeof(directory) - 1
    );

    directory[sizeof(directory) - 1] = '\0';

    char *slash = strrchr(directory, '/');

    if (slash != NULL)
        *slash = '\0';
    else
        strcpy(directory, ".");

    int fd = inotify_init1(IN_NONBLOCK);

    if (fd < 0) {
        perror("inotify_init1");
        return EXIT_FAILURE;
    }

    int watch = inotify_add_watch(
        fd,
        directory,
        IN_MODIFY | IN_CLOSE_WRITE | IN_MOVED_TO
    );

    if (watch < 0) {
        perror("inotify_add_watch");
        close(fd);
        return EXIT_FAILURE;
    }

    char buffer[BUFFER_SIZE];

    while (1) {

        int length = read(
            fd,
            buffer,
            sizeof(buffer)
        );

        if (length <= 0) {
            sleep(1);
            continue;
        }

        int position = 0;

        while (position < length) {

            struct inotify_event *event =
                (struct inotify_event *)
                &buffer[position];

            if (event->len > 0) {

                char fullpath[4096];

                snprintf(
                    fullpath,
                    sizeof(fullpath),
                    "%s/%s",
                    directory,
                    event->name
                );

                /*
                 * The monitored log was modified.
                 */
                if (strcmp(fullpath, logfile) == 0) {

                    process_log(logfile);
                }
            }

            position +=
                sizeof(struct inotify_event) +
                event->len;
        }
    }

    inotify_rm_watch(fd, watch);
    close(fd);

    return EXIT_SUCCESS;
}

