import os
from cryptography.fernet import Fernet

files = []

for file in os.listdir():
        if file == "LSE.py" or file == "thekey.key" or file == "decrypt.py":
                continue
        if os.path.isfile(file):
                files.append(file)

print(files)

with open("thekey.key", "rb") as key:
	secretkey = key.read()

print("lets decrypt0r")

for file in files:
    with open(file, "rb") as thefile:
            contents = thefile.read()
    contents_decryptor = Fernet(secretkey).decrypt(contents)
    with open(file, "wb") as thefile:
        thefile.write(contents_decryptor)
        os.rename(thefile, thefile".LSE")