#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/stat.h>
#include <openssl/evp.h>

#define PATH_SIZE 4096

/*
    Example malware hashes.

    These are placeholders for demonstration.
    Replace them with hashes from a trusted threat-intelligence
    source if you are building a real scanner.
*/
const char *BAD_HASHES[] = {
    "0000000000000000000000000000000000000000000000000000000000000000"
};

#define BAD_HASH_COUNT \
    (sizeof(BAD_HASHES) / sizeof(BAD_HASHES[0]))

/* ---------------------------------------------------- */
/* Calculate SHA-256                                    */
/* ---------------------------------------------------- */

#include <openssl/evp.h>

int calculate_sha256(const char *filename, char *output)
{
    FILE *file;
    unsigned char buffer[8192];
    unsigned char hash[EVP_MAX_MD_SIZE];

    unsigned int hash_length = 0;
    size_t bytesRead;

    EVP_MD_CTX *ctx;

    file = fopen(filename, "rb");

    if (file == NULL)
        return 0;

    ctx = EVP_MD_CTX_new();

    if (ctx == NULL) {
        fclose(file);
        return 0;
    }

    /*
        Initialize SHA-256 using the modern
        OpenSSL EVP interface.
    */
    if (EVP_DigestInit_ex(ctx, EVP_sha256(), NULL) != 1) {
        EVP_MD_CTX_free(ctx);
        fclose(file);
        return 0;
    }

    while ((bytesRead = fread(
                buffer,
                1,
                sizeof(buffer),
                file)) > 0) {

        if (EVP_DigestUpdate(
                ctx,
                buffer,
                bytesRead) != 1) {

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
            &hash_length) != 1) {

        EVP_MD_CTX_free(ctx);
        fclose(file);
        return 0;
    }

    EVP_MD_CTX_free(ctx);
    fclose(file);

    /*
        Convert binary SHA-256 to hexadecimal.
    */
    for (unsigned int i = 0; i < hash_length; i++) {

        sprintf(
            output + (i * 2),
            "%02x",
            hash[i]
        );
    }

    output[hash_length * 2] = '\0';

    return 1;
}

/* ---------------------------------------------------- */
/* Check hash                                            */
/* ---------------------------------------------------- */

int is_malware_hash(const char *hash)
{
    for (size_t i = 0; i < BAD_HASH_COUNT; i++) {

        if (strcmp(hash, BAD_HASHES[i]) == 0)
            return 1;
    }

    return 0;
}

/* ---------------------------------------------------- */
/* Check suspicious extension                            */
/* ---------------------------------------------------- */

int suspicious_extension(const char *filename)
{
    const char *extensions[] = {
        ".exe",
        ".dll",
        ".scr",
        ".bat",
        ".cmd",
        ".vbs",
        ".ps1",
        ".sh"
    };

    int count =
        sizeof(extensions) / sizeof(extensions[0]);

    for (int i = 0; i < count; i++) {

        if (strstr(filename, extensions[i]) != NULL)
            return 1;
    }

    return 0;
}

/* ---------------------------------------------------- */
/* Scan one file                                         */
/* ---------------------------------------------------- */

void scan_file(const char *filename)
{
    struct stat st;

    if (stat(filename, &st) != 0)
        return;

    if (!S_ISREG(st.st_mode))
        return;

    char hash[65];

    printf("[SCAN] %s\n", filename);

    if (!calculate_sha256(filename, hash)) {
        printf("       Could not read file\n");
        return;
    }

    printf("       SHA256: %s\n", hash);

    if (is_malware_hash(hash)) {

        printf(
            "\033[1;31m"
            "[!!! MALWARE DETECTED !!!]"
            "\033[0m\n"
        );

        return;
    }

    if (suspicious_extension(filename)) {

        printf(
            "\033[1;33m"
            "[WARNING] Suspicious file extension"
            "\033[0m\n"
        );

        return;
    }

    printf(
        "\033[32m"
        "[OK] Clean according to current rules"
        "\033[0m\n"
    );
}

/* ---------------------------------------------------- */
/* Scan directory recursively                            */
/* ---------------------------------------------------- */

void scan_directory(const char *directory)
{
    DIR *dir;
    struct dirent *entry;

    dir = opendir(directory);

    if (dir == NULL) {

        perror(directory);
        return;
    }

    while ((entry = readdir(dir)) != NULL) {

        /*
            Ignore "." and ".."
        */
        if (strcmp(entry->d_name, ".") == 0 ||
            strcmp(entry->d_name, "..") == 0) {

            continue;
        }

        char path[PATH_SIZE];

        snprintf(
            path,
            sizeof(path),
            "%s/%s",
            directory,
            entry->d_name
        );

        struct stat st;

        if (stat(path, &st) != 0)
            continue;

        if (S_ISDIR(st.st_mode)) {

            scan_directory(path);

        } else if (S_ISREG(st.st_mode)) {

            scan_file(path);
        }
    }

    closedir(dir);
}

/* ---------------------------------------------------- */
/* Main                                                  */
/* ---------------------------------------------------- */

int main(int argc, char *argv[])
{
    printf("\n");
    printf("\033[1;36m");
    printf("=====================================\n");
    printf("        C FEDORA ANTIVIRUS\n");
    printf("=====================================\n");
    printf("\033[0m\n");

    if (argc != 2) {

        printf("Usage:\n");
        printf("  %s <directory>\n\n", argv[0]);

        printf("Example:\n");
        printf("  %s ~/Downloads\n", argv[0]);

        return 1;
    }

    printf(
        "Scanning: %s\n\n",
        argv[1]
    );

    scan_directory(argv[1]);

    printf("\n");
    printf("\033[1;32mScan complete.\033[0m\n");

    return 0;
}

