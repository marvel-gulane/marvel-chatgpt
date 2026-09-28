#include <ncurses.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>

#define BOARD_WIDTH  10
#define BOARD_HEIGHT 20

#define BLOCK 'O'

/*
    Tetromino definitions.

    Each piece has 4 rotations.
    Each rotation contains 4 blocks: {row, column}.
*/

static const int PIECES[7][4][4][2] = {
    // I
    {
        {{1,0},{1,1},{1,2},{1,3}},
        {{0,2},{1,2},{2,2},{3,2}},
        {{2,0},{2,1},{2,2},{2,3}},
        {{0,1},{1,1},{2,1},{3,1}}
    },

    // O
    {
        {{0,1},{0,2},{1,1},{1,2}},
        {{0,1},{0,2},{1,1},{1,2}},
        {{0,1},{0,2},{1,1},{1,2}},
        {{0,1},{0,2},{1,1},{1,2}}
    },

    // T
    {
        {{0,1},{1,0},{1,1},{1,2}},
        {{0,1},{1,1},{1,2},{2,1}},
        {{1,0},{1,1},{1,2},{2,1}},
        {{0,1},{1,0},{1,1},{2,1}}
    },

    // S
    {
        {{0,1},{0,2},{1,0},{1,1}},
        {{0,1},{1,1},{1,2},{2,2}},
        {{1,1},{1,2},{2,0},{2,1}},
        {{0,0},{1,0},{1,1},{2,1}}
    },

    // Z
    {
        {{0,0},{0,1},{1,1},{1,2}},
        {{0,2},{1,1},{1,2},{2,1}},
        {{1,0},{1,1},{2,1},{2,2}},
        {{0,1},{1,0},{1,1},{2,0}}
    },

    // J
    {
        {{0,0},{1,0},{1,1},{1,2}},
        {{0,1},{0,2},{1,1},{2,1}},
        {{1,0},{1,1},{1,2},{2,2}},
        {{0,1},{1,1},{2,0},{2,1}}
    },

    // L
    {
        {{0,2},{1,0},{1,1},{1,2}},
        {{0,1},{1,1},{2,1},{2,2}},
        {{1,0},{1,1},{1,2},{2,0}},
        {{0,0},{0,1},{1,1},{2,1}}
    }
};

typedef struct {
    int type;
    int rotation;
    int x;
    int y;
} Piece;

int board[BOARD_HEIGHT][BOARD_WIDTH];

int score = 0;
int lines = 0;
int level = 1;

Piece current;
int nextPiece;

/* --------------------------------------------------------- */
/* Utility functions                                         */
/* --------------------------------------------------------- */

void initializeBoard(void)
{
    for (int y = 0; y < BOARD_HEIGHT; y++) {
        for (int x = 0; x < BOARD_WIDTH; x++) {
            board[y][x] = 0;
        }
    }
}

Piece createPiece(int type)
{
    Piece p;

    p.type = type;
    p.rotation = 0;
    p.x = BOARD_WIDTH / 2 - 2;
    p.y = 0;

    return p;
}

int collision(Piece p)
{
    for (int i = 0; i < 4; i++) {

        int blockY = p.y + PIECES[p.type][p.rotation][i][0];
        int blockX = p.x + PIECES[p.type][p.rotation][i][1];

        /* Left/right walls */
        if (blockX < 0 || blockX >= BOARD_WIDTH)
            return 1;

        /* Bottom */
        if (blockY >= BOARD_HEIGHT)
            return 1;

        /* Existing block */
        if (blockY >= 0 && board[blockY][blockX])
            return 1;
    }

    return 0;
}

void placePiece(Piece p)
{
    for (int i = 0; i < 4; i++) {

        int y = p.y + PIECES[p.type][p.rotation][i][0];
        int x = p.x + PIECES[p.type][p.rotation][i][1];

        if (y >= 0 && y < BOARD_HEIGHT &&
            x >= 0 && x < BOARD_WIDTH) {

            board[y][x] = p.type + 1;
        }
    }
}

void clearLines(void)
{
    int cleared = 0;

    for (int y = BOARD_HEIGHT - 1; y >= 0; y--) {

        int full = 1;

        for (int x = 0; x < BOARD_WIDTH; x++) {
            if (board[y][x] == 0) {
                full = 0;
                break;
            }
        }

        if (full) {

            cleared++;

            /* Move everything above down */
            for (int row = y; row > 0; row--) {
                for (int x = 0; x < BOARD_WIDTH; x++) {
                    board[row][x] = board[row - 1][x];
                }
            }

            /* Clear top row */
            for (int x = 0; x < BOARD_WIDTH; x++) {
                board[0][x] = 0;
            }

            /* Check this row again */
            y++;
        }
    }

    if (cleared > 0) {

        lines += cleared;

        switch (cleared) {
            case 1:
                score += 100 * level;
                break;

            case 2:
                score += 300 * level;
                break;

            case 3:
                score += 500 * level;
                break;

            case 4:
                score += 800 * level;
                break;
        }

        level = lines / 10 + 1;
    }
}

/* --------------------------------------------------------- */
/* Drawing                                                    */
/* --------------------------------------------------------- */

void drawBlock(int y, int x, int value)
{
    if (value <= 0)
        return;

    /*
        Different colors for different pieces.
    */
    attron(COLOR_PAIR(value));

    mvprintw(y, x * 2 + 2, "[]");

    attroff(COLOR_PAIR(value));
}

void drawBoard(void)
{
    clear();

    /* Top border */
    mvprintw(0, 0, "+");
    for (int x = 0; x < BOARD_WIDTH * 2; x++)
        printw("-");
    printw("+");

    /* Board */
    for (int y = 0; y < BOARD_HEIGHT; y++) {

        mvprintw(y + 1, 0, "|");

        for (int x = 0; x < BOARD_WIDTH; x++) {

            if (board[y][x])
                drawBlock(y + 1, x, board[y][x]);
            else
                mvprintw(y + 1, x * 2 + 2, "  ");
        }

        mvprintw(y + 1, BOARD_WIDTH * 2 + 2, "|");
    }

    /* Bottom border */
    mvprintw(BOARD_HEIGHT + 1, 0, "+");

    for (int x = 0; x < BOARD_WIDTH * 2; x++)
        printw("-");

    printw("+");

    /* Current falling piece */
    for (int i = 0; i < 4; i++) {

        int y = current.y +
                PIECES[current.type][current.rotation][i][0];

        int x = current.x +
                PIECES[current.type][current.rotation][i][1];

        if (y >= 0 && y < BOARD_HEIGHT &&
            x >= 0 && x < BOARD_WIDTH) {

            drawBlock(y + 1, x, current.type + 1);
        }
    }

    /* Information panel */
    int infoX = BOARD_WIDTH * 2 + 5;

    mvprintw(2, infoX, "TETRIS");

    mvprintw(5, infoX, "Score:");
    mvprintw(6, infoX, "%d", score);

    mvprintw(8, infoX, "Lines:");
    mvprintw(9, infoX, "%d", lines);

    mvprintw(11, infoX, "Level:");
    mvprintw(12, infoX, "%d", level);

    mvprintw(15, infoX, "Controls");
    mvprintw(16, infoX, "< >  Move");
    mvprintw(17, infoX, "^    Rotate");
    mvprintw(18, infoX, "v    Soft drop");
    mvprintw(19, infoX, "Space Hard drop");
    mvprintw(20, infoX, "Q    Quit");

    refresh();
}

/* --------------------------------------------------------- */
/* Piece movement                                             */
/* --------------------------------------------------------- */

void movePiece(int dx, int dy)
{
    Piece test = current;

    test.x += dx;
    test.y += dy;

    if (!collision(test)) {
        current = test;
    }
}

void rotatePiece(void)
{
    Piece test = current;

    test.rotation =
        (test.rotation + 1) % 4;

    /*
        Basic wall-kick behavior.
        If rotation hits a wall, try moving left/right.
    */

    if (!collision(test)) {
        current = test;
        return;
    }

    test.x++;

    if (!collision(test)) {
        current = test;
        return;
    }

    test.x -= 2;

    if (!collision(test)) {
        current = test;
        return;
    }
}

void hardDrop(void)
{
    while (!collision((Piece){
        current.type,
        current.rotation,
        current.x,
        current.y + 1
    })) {
        current.y++;
    }
}

/* --------------------------------------------------------- */
/* New piece                                                  */
/* --------------------------------------------------------- */

int spawnPiece(void)
{
    current = createPiece(nextPiece);

    nextPiece = rand() % 7;

    if (collision(current))
        return 0;

    return 1;
}

/* --------------------------------------------------------- */
/* Main game                                                   */
/* --------------------------------------------------------- */

int main(void)
{
    srand((unsigned int)time(NULL));

    /* Initialize ncurses */
    initscr();
    noecho();
    cbreak();
    curs_set(0);

    /*
        getch() becomes non-blocking.
        This lets the game continue falling automatically.
    */
    nodelay(stdscr, TRUE);

    keypad(stdscr, TRUE);

    /* Colors */
    if (has_colors()) {

        start_color();

        init_pair(1, COLOR_CYAN, COLOR_BLACK);
        init_pair(2, COLOR_YELLOW, COLOR_BLACK);
        init_pair(3, COLOR_MAGENTA, COLOR_BLACK);
        init_pair(4, COLOR_GREEN, COLOR_BLACK);
        init_pair(5, COLOR_RED, COLOR_BLACK);
        init_pair(6, COLOR_BLUE, COLOR_BLACK);
        init_pair(7, COLOR_WHITE, COLOR_BLACK);
    }

    initializeBoard();

    nextPiece = rand() % 7;

    if (!spawnPiece()) {
        endwin();
        return 0;
    }

    /*
        Time between automatic drops.
        Higher level = faster.
    */
    long lastDrop = 0;

    int gameOver = 0;
    int running = 1;

    while (running && !gameOver) {

        int ch = getch();

        /* Keyboard input */
        switch (ch) {

            case 'q':
            case 'Q':
                running = 0;
                break;

            case KEY_LEFT:
                movePiece(-1, 0);
                break;

            case KEY_RIGHT:
                movePiece(1, 0);
                break;

            case KEY_DOWN:
                movePiece(0, 1);
                break;

            case KEY_UP:
                rotatePiece();
                break;

            case ' ':
                hardDrop();
                break;
        }

        /*
            Current time in milliseconds.
        */
        long now = (long)(clock() * 1000 / CLOCKS_PER_SEC);

        /*
            Falling speed.

            Level 1: ~600 ms
            Level 2: ~550 ms
            ...
            Minimum: 80 ms
        */
        int dropSpeed = 600 - (level - 1) * 50;

        if (dropSpeed < 80)
            dropSpeed = 80;

        if (now - lastDrop >= dropSpeed) {

            Piece test = current;
            test.y++;

            if (!collision(test)) {

                current = test;

            } else {

                /*
                    Piece has landed.
                */
                placePiece(current);

                clearLines();

                /*
                    Spawn next piece.
                */
                if (!spawnPiece()) {
                    gameOver = 1;
                }
            }

            lastDrop = now;
        }

        drawBoard();

        /*
            Small delay prevents excessive CPU usage.
        */
        napms(10);
    }

    /* Game over screen */
    if (gameOver) {

        nodelay(stdscr, FALSE);

        int centerX = 5;

        mvprintw(
            BOARD_HEIGHT / 2,
            centerX,
            "GAME OVER!"
        );

        mvprintw(
            BOARD_HEIGHT / 2 + 1,
            centerX,
            "Score: %d",
            score
        );

        mvprintw(
            BOARD_HEIGHT / 2 + 2,
            centerX,
            "Press any key..."
        );

        refresh();

        getch();
    }

    endwin();

    return 0;
}

