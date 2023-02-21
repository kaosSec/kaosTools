import socket
import ssl
import threading

# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

rovaja21 = input("Server: ")

# Connect the socket to the server's address and port
server_address = (rovaja21, 10000)
sock.connect(server_address)

# Wrap the socket with TLS
tls_sock = ssl.wrap_socket(sock, cert_reqs=ssl.CERT_REQUIRED, ca_certs='server.pem')

def receive_messages():
    while True:
        try:
            # Receive messages from the server
            data = tls_sock.recv(1024)
            if data:
                # Print the message to the user
                print(data.decode('utf-8'))
            else:
                # If no data received, close the socket and exit the thread
                tls_sock.close()
                break
        except:
            # If there is an error, close the socket and exit the thread
            tls_sock.close()
            break

# Start a new thread to receive messages from the server
t = threading.Thread(target=receive_messages)
t.start()

while True:
    # Read input from the user
    message = input('> ')

    # Send the message to the server
    tls_sock.sendall(message.encode('utf-8'))