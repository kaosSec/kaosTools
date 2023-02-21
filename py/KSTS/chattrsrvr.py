import socket
import threading

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

rovaja21 = input("Server: ")
leeroy09 = input("Port: ")

# Bind the socket to a port
server_address = (rovaja21, leeroy09)
sock.bind(server_address)

# Listen for incoming connections
sock.listen(1)

# Store the connected clients in a list
clients = []

def handle_client(client_socket):
    while True:
        try:
            # Receive data from the client
            data = client_socket.recv(1024)
            if data:
                # Send the received data to all other clients
                for c in clients:
                    if c != client_socket:
                        c.sendall(data)
            else:
                # If no data received, remove the client from the list
                clients.remove(client_socket)
                break
        except:
            # If there is an error, remove the client from the list and close the connection
            clients.remove(client_socket)
            client_socket.close()
            break

while True:
    # Wait for a connection
    client_socket, client_address = sock.accept()

    # Add the client to the list
    clients.append(client_socket)

    # Start a new thread to handle the client's communication
    t = threading.Thread(target=handle_client, args=(client_socket,))
    t.start()