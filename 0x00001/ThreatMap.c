#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

#define MAP_WIDTH  60
#define MAP_HEIGHT 20
#define MAX_EVENTS 50

typedef struct {
    int x;
    int y;
    int country;
    int type;
    int severity;
} Threat;

Threat events[MAX_EVENTS];

int eventCount = 0;
int total = 0;
int low = 0;
int medium = 0;
int high = 0;
int critical = 0;

const char *countries[] = {
    "USA",
    "China",
    "Russia",
    "Germany",
    "India",
    "Japan",
    "UK",
    "Brazil"
};

const char *types[] = {
    "Port Scan",
    "Brute Force",
    "Malware",
    "DDoS",
    "Phishing"
};

const char *severityName[] = {
    "LOW",
    "MEDIUM",
    "HIGH",
    "CRITICAL"
};

int randomNumber(int min, int max)
{
    return min + rand() % (max - min + 1);
}

void clearScreen()
{
    printf("\033[2J\033[H");
}

void generateThreat()
{
    Threat t;

    t.x = randomNumber(0, MAP_WIDTH - 1);
    t.y = randomNumber(0, MAP_HEIGHT - 1);
    t.country = randomNumber(0, 7);
    t.type = randomNumber(0, 4);
    t.severity = randomNumber(0, 3);

    if (eventCount < MAX_EVENTS) {
        events[eventCount] = t;
        eventCount++;
    } else {
        for (int i = 1; i < MAX_EVENTS; i++) {
            events[i - 1] = events[i];
        }

        events[MAX_EVENTS - 1] = t;
    }

    total++;

    if (t.severity == 0)
        low++;
    else if (t.severity == 1)
        medium++;
    else if (t.severity == 2)
        high++;
    else
        critical++;
}

void drawMap()
{
    printf("+");

    for (int i = 0; i < MAP_WIDTH; i++)
        printf("-");

    printf("+\n");

    for (int y = 0; y < MAP_HEIGHT; y++) {

        printf("|");

        for (int x = 0; x < MAP_WIDTH; x++) {

            int found = 0;

            for (int i = 0; i < eventCount; i++) {

                if (events[i].x == x &&
                    events[i].y == y) {

                    found = 1;

                    if (events[i].severity == 3)
                        printf("\033[1;41;97mX\033[0m");
                    else if (events[i].severity == 2)
                        printf("\033[31m@\033[0m");
                    else if (events[i].severity == 1)
                        printf("\033[33m*\033[0m");
                    else
                        printf("\033[32m.\033[0m");

                    break;
                }
            }

            if (!found)
                printf(" ");
        }

        printf("|\n");
    }

    printf("+");

    for (int i = 0; i < MAP_WIDTH; i++)
        printf("-");

    printf("+\n");
}

void showStats()
{
    printf("\n");
    printf("\033[1;36m=== LIVE THREAT MAP ===\033[0m\n\n");

    printf("Total threats : %d\n", total);

    printf("\033[32mLOW          : %d\033[0m\n", low);
    printf("\033[33mMEDIUM       : %d\033[0m\n", medium);
    printf("\033[31mHIGH         : %d\033[0m\n", high);
    printf("\033[1;41;97mCRITICAL     : %d\033[0m\n", critical);

    printf("\nLegend:\n");
    printf("\033[32m. LOW\033[0m\n");
    printf("\033[33m* MEDIUM\033[0m\n");
    printf("\033[31m@ HIGH\033[0m\n");
    printf("\033[1;41;97mX CRITICAL\033[0m\n");
}

void showRecent()
{
    printf("\nRecent events:\n");
    printf("-------------------------------\n");

    int start = eventCount - 5;

    if (start < 0)
        start = 0;

    for (int i = start; i < eventCount; i++) {

        printf(
            "%-10s %-12s %-8s\n",
            countries[events[i].country],
            types[events[i].type],
            severityName[events[i].severity]
        );
    }
}

int main()
{
    srand((unsigned int)time(NULL));

    while (1) {

        clearScreen();

        int amount = randomNumber(1, 3);

        for (int i = 0; i < amount; i++)
            generateThreat();

        showStats();

        printf("\n");

        drawMap();

        showRecent();

        printf("\nUpdating...\n");
        printf("Press Ctrl+C to quit.\n");

        sleep(1);
    }

    return 0;
}

