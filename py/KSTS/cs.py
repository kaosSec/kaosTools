import socket
import threading

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

rovaja21 = input("Server: ")
leeroy09 = input("Port: ")
l09 = int(leeroy09)

server_address = (rovaja21, l09)
sock.bind(server_address)

sock.listen(1)

clients = []

def handle_client(client_socket):
    while True:
        try:
            data = client_socket.recv(1024)
            if data:
                for c in clients:
                    if c != client_socket:
                        c.sendall(data)
            else:
                clients.remove(client_socket)
                break
        except:
            clients.remove(client_socket)
            client_socket.close()
            break

while True:
 try:
    client_socket, client_address = sock.accept()

    clients.append(client_socket)

    t = threading.Thread(target=handle_client, args=(client_socket,))
    t.start()
    print(data)
    print(c)
    print(clients)
    print("+")
 except:
    print(data)
    print(c)
    print(clients)
    print("-")
