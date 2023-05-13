class TITLE:
    a: str = "00000000000000000000000000000(:3)\n"
    b: str = "0              MASS\n"
    c: str = "00000000000000000000000000000\n"
    d: str = "                            0\n"
    e: str = "00000000000000000000000000000\n"
    f: str = "0\n"
    g: str = "00000000000000000000000000000\n"
    h: str = "                            0\n"
    i: str = "     CRAWL                  0\n"
    j: str = "                            0\n"
    k: str = "                            0\n"
    TITLESCREEN: list = [a, b, c, d, e, f, g, h, i, j, k]
vulnerable = 0
import socket
import requests
import threading
from bs4 import BeautifulSoup
PACKETS = {
    22: b"SSH packet",
    80: b"HTTP packet",
    443: b"HTTPS packet",
    21: b"FTP packet",
    25: b"SMTP packet",
    110: b"POP3 packet",
    143: b"IMAP packet",
    53: b"DNS packet",
    3306: b"MySQL packet",
    3389: b"RDP packet",
    8080: b"HTTP packet",
    23: b"Telnet packet",
    1723: b"PPTP packet",
    1194: b"OpenVPN packet",
    123: b"NTP packet",
    111: b"RPCBind packet",
    69: b"TFTP packet",
    179: b"BGP packet",
    514: b"Syslog packet",
}
class ChknScanner:
    def __init__(self, ip, port_range_start, port_range_end):
        self.ip = ip
        self.port_range_start = int(port_range_start)
        self.port_range_end = int(port_range_end)
        self.packets = PACKETS.copy()
    def _scan_port(self, port):
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(1)
        try:
            s.connect((self.ip, port))
            packet = self.packets.get(port, None)
            if packet:
                s.send(packet)
            response = s.recv(1024)
            print(f"Port {port}: {response}")
        except Exception as e:
            print(f"Error: {e}")
        s.close()
    def scan(self):
        threads = []
        for port in range(self.port_range_start, self.port_range_end + 1):
            t = threading.Thread(target=self._scan_port, args=(port,))
            threads.append(t)
            t.start()
        for t in threads:
            t.join()
    def report(self):
        open_ports = []
        for port in range(self.port_range_start, self.port_range_end + 1):
            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            s.settimeout(1)
            try:
                s.connect((self.ip, port))
                s.close()
                open_ports.append(port)
            except:
                pass
        print(f"Open ports: {open_ports}")
class MassCrawl:
    def gipa(url):
        try:
            ip_address = socket.gethostbyname(url)
            return ip_address
        except socket.gaierror:
            return None
    def sweb(self, query: str):
        flag: int = 0
        if flag == 0:
        if 'https://' in query:
            if '.com' in query:
                flag = 0
            elif '.org' in query:
                flag = 0
            elif '.edu' in query:
                flag = 0
            elif '.gg' in query:
                if 'cash' in query:
                    flag = 1
                elif 'robux' in query:
                    flag = 1
                elif 'prize' in query:
                    flag = 1
                elif 'money' in query:
                    flag = 1
                elif 'roux' in query:
                    flag = 1
                else:
                    flag = 0
            elif '.xyz' in query:
                flag = 1
            elif '.co' in query:
                flag = 1
            elif '.app' in query:
                flag = 1
            elif '.now' in query:
                flag = 1
            else:
                flag = 1
            if flag == 0:
                search_url = f"{query}"
        else:
            search_url = f"https://www.duckduckgo.com/search?q={query}"  # Replace with your preferred search engine
        response = requests.get(search_url)
        soup = BeautifulSoup(response.content, 'html.parser')
        for 'https://' in soup:
            bbro = soup['https://'][:'/']
            sweb(bbro)
        for 'box' in soup:
            if 'sanitize' in soup:
                continue
            elif 'trim' in soup:
                continue
            elif 'stripslashes' in soup:
                continue
            elif 'htmlspecialchars' in soup:
                continue
            else:
                print(f"Potentially vulnerable textbox {search_url}")
                textbox_vulnerable = 1
        if 'duckduckgo' in search_url:
            return 0
        else:
            ntrs = gipa(search_url)
            ChknScanner.__init__(ntrs, 11, 8080)
            ChknScanner.scan()
            ChknScanner.report()
if __name__ == "__main__":
    for t in TITLE.TITLESCREEN:
        print(t)
    print("mass_crawler")
    bibi: str = input("start>")
    MassCrawl.sweb(bibi)
