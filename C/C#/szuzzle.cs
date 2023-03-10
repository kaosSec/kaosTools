using System;
using System.Net;
using System.Net.Sockets;
using System.Threading;
using EasyModbus;

class Program
{
    static void Main(string[] args)
    {
        // Get the IP address of the local machine
        string local_ip = Dns.GetHostEntry(Dns.GetHostName())
                              .AddressList
                              .First(x => x.AddressFamily == AddressFamily.InterNetwork)
                              .ToString();

        // Get the subnet mask of the local network
        string subnet_mask = new IPAddress(BitConverter
                                          .GetBytes(BitConverter
                                                    .ToUInt32(IPAddress.Parse(local_ip)
                                                    .GetAddressBytes(), 0))
                                          .Reverse()
                                          .ToArray())
                                          .ToString();

        // Generate a list of IP addresses in the same subnet
        string subnet = local_ip + "/" + subnet_mask;
        IPAddress[] ip_addresses = Array.ConvertAll<IPAddress, string>(
                                        IPAddress.Parse(local_ip).GetAddressBytes(),
                                        b => int.Parse(b.ToString())
                                        )
                                        .Select((b, i) => new IPAddress(ip_addresses[0].GetAddressBytes()
                                                                                  .Select((x, j) => j < i ? x : b)
                                                                                  .ToArray()))
                                        .ToArray();

        // Iterate through the list of IP addresses and attempt to connect to each of them
        for (int i = 0; i < ip_addresses.Length; i++)
        {
            // Create a Modbus TCP client object
            ModbusClient client = new ModbusClient(ip_addresses[i].ToString(), 502);

            // Connect to the PLC with authentication
            client.Connect();

            // Write a value to a holding register in the PLC
            byte[] data = BitConverter.GetBytes(1234);
            client.WriteMultipleRegisters(0, data);

            // Create a dictionary to store the previous register values
            int start_address = 0;
            int end_address = 99999;  // inclusive upper bound of the range of addresses to write to
            int[] previous_values = new int[end_address + 1];

            // Continuously monitor the register values
            while (true)
            {
                // Read the current register values
                int[] current_values = client.ReadHoldingRegisters(start_address, end_address - start_address + 1);

                // Check if any of the register values have changed
                for (int address = start_address; address <= end_address; address++)
                {
                    int value = current_values[address - start_address];

                    // If the value has changed, execute the corresponding code
                    if (value != previous_values[address])
                    {
                        // Execute code for the register range
                        Console.WriteLine("Register " + address + " has changed to: " + value);
                        data = BitConverter.GetBytes(value);
                        client.WriteMultipleRegisters(address, data);

                        // Update the previous value for this register
                        previous_values[address] = value;
                    }
                }

                // Wait for a short time before checking again
                Thread.Sleep(100);
            }

            // When you are finished, close the connection to the PLC:
            client.Disconnect();
        }
    }
}