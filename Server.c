#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define PORT 8080
#define BUFFER_SIZE 8192

void send_response(
    int client,
    const char *status,
    const char *content_type,
    const char *body)
{
    char response[BUFFER_SIZE];

    int body_length = strlen(body);

    snprintf(
        response,
        sizeof(response),

        "HTTP/1.1 %s\r\n"
        "Content-Type: %s\r\n"
        "Content-Length: %d\r\n"
        "Connection: close\r\n"
        "\r\n"
        "%s",

        status,
        content_type,
        body_length,
        body
    );

    send(
        client,
        response,
        strlen(response),
        0
    );
}

void serve_file(
    int client,
    const char *filename,
    const char *content_type)
{
    FILE *file = fopen(filename, "rb");

    if (file == NULL) {

        send_response(
            client,
            "404 Not Found",
            "text/plain",
            "404 - File not found\n"
        );

        return;
    }

    fseek(file, 0, SEEK_END);

    long size = ftell(file);

    rewind(file);

    if (size <= 0 || size > 10 * 1024 * 1024) {

        fclose(file);

        send_response(
            client,
            "500 Internal Server Error",
            "text/plain",
            "Invalid file\n"
        );

        return;
    }

    char *data = malloc(size + 1);

    if (data == NULL) {

        fclose(file);

        send_response(
            client,
            "500 Internal Server Error",
            "text/plain",
            "Memory allocation failed\n"
        );

        return;
    }

    fread(data, 1, size, file);

    data[size] = '\0';

    fclose(file);

    char header[1024];

    snprintf(
        header,
        sizeof(header),

        "HTTP/1.1 200 OK\r\n"
        "Content-Type: %s\r\n"
        "Content-Length: %ld\r\n"
        "Connection: close\r\n"
        "\r\n",

        content_type,
        size
    );

    send(
        client,
        header,
        strlen(header),
        0
    );

    send(
        client,
        data,
        size,
        0
    );

    free(data);
}

void handle_request(
    int client,
    const char *request)
{
    char method[16];
    char path[1024];

    if (sscanf(
            request,
            "%15s %1023s",
            method,
            path) != 2) {

        send_response(
            client,
            "400 Bad Request",
            "text/plain",
            "Bad request\n"
        );

        return;
    }

    /*
     * Only allow GET in this simple server.
     */
    if (strcmp(method, "GET") != 0) {

        send_response(
            client,
            "405 Method Not Allowed",
            "text/plain",
            "Only GET is supported\n"
        );

        return;
    }

    /*
     * API endpoint.
     */
    if (strcmp(path, "/api/hello") == 0) {

        send_response(
            client,
            "200 OK",
            "application/json",
            "{\"message\":\"Hello from C!\"}"
        );

        return;
    }

    /*
     * Prevent basic path traversal.
     */
    if (strstr(path, "..") != NULL) {

        send_response(
            client,
            "403 Forbidden",
            "text/plain",
            "Forbidden\n"
        );

        return;
    }

    /*
     * Static files.
     */
    if (strcmp(path, "/") == 0) {

        serve_file(
            client,
            "public/index.html",
            "text/html"
        );

        return;
    }

    if (strcmp(path, "/app.js") == 0) {

        serve_file(
            client,
            "public/app.js",
            "application/javascript"
        );

        return;
    }

    if (strcmp(path, "/style.css") == 0) {

        serve_file(
            client,
            "public/style.css",
            "text/css"
        );

        return;
    }

    send_response(
        client,
        "404 Not Found",
        "text/plain",
        "404 - Not found\n"
    );
}

int main(void)
{
    int server;
    int client;

    struct sockaddr_in address;

    char buffer[BUFFER_SIZE];

    /*
     * Create TCP socket.
     */
    server = socket(
        AF_INET,
        SOCK_STREAM,
        0
    );

    if (server < 0) {

        perror("socket");
        return 1;
    }

    /*
     * Allow quick restart after shutdown.
     */
    int option = 1;

    setsockopt(
        server,
        SOL_SOCKET,
        SO_REUSEADDR,
        &option,
        sizeof(option)
    );

    /*
     * Configure address.
     */
    memset(
        &address,
        0,
        sizeof(address)
    );

    address.sin_family = AF_INET;

    /*
     * Listen only on localhost.
     * This is safer for a personal development server.
     */
    address.sin_addr.s_addr =
        htonl(INADDR_LOOPBACK);

    address.sin_port =
        htons(PORT);

    /*
     * Bind.
     */
    if (bind(
            server,
            (struct sockaddr *)&address,
            sizeof(address)) < 0) {

        perror("bind");

        close(server);

        return 1;
    }

    /*
     * Listen.
     */
    if (listen(server, 10) < 0) {

        perror("listen");

        close(server);

        return 1;
    }

    printf(
        "====================================\n"
        "       C PERSONAL WEB SERVER\n"
        "====================================\n"
    );

    printf(
        "Running at:\n"
        "http://127.0.0.1:%d/\n\n",
        PORT
    );

    while (1) {

        client = accept(
            server,
            NULL,
            NULL
        );

        if (client < 0) {

            if (errno == EINTR)
                continue;

            perror("accept");
            break;
        }

        memset(
            buffer,
            0,
            sizeof(buffer)
        );

        ssize_t received =
            recv(
                client,
                buffer,
                sizeof(buffer) - 1,
                0
            );

        if (received > 0) {

            buffer[received] = '\0';

            printf(
                "Request:\n%s\n",
                buffer
            );

            handle_request(
                client,
                buffer
            );
        }

        close(client);
    }

    close(server);

    return 0;
}

