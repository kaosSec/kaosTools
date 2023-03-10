#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <time.h>
#include <arpa/inet.h>
#include <modbus.h>

#define PLC_PORT_NUMBER 502 // replace with your PLC's Modbus TCP port number
#define USERNAME "username" // replace with your PLC's username
#define PASSWORD "password" // replace with your PLC's password

int main() {
    // Get the IP address of the local machine
    char local_ip[INET_ADDRSTRLEN];
    struct addrinfo hints = {0}, *res;
    hints.ai_family = AF_INET; // IPv4 only
    hints.ai_socktype = SOCK_DGRAM; // dummy
    getaddrinfo("example.com", "http", &hints, &res);
    inet_ntop(AF_INET, &((struct sockaddr_in *)res->ai_addr)->sin_addr, local_ip, INET_ADDRSTRLEN);
    freeaddrinfo(res);

    // Get the subnet mask of the local network
    struct in_addr local_addr, subnet_addr;
    inet_aton(local_ip, &local_addr);
    inet_aton("255.255.255.0", &subnet_addr);
    subnet_addr.s_addr &= local_addr.s_addr;
    char subnet_mask[INET_ADDRSTRLEN];
    inet_ntop(AF_INET, &subnet_addr, subnet_mask, INET_ADDRSTRLEN);

    // Generate a list of IP addresses in the same subnet
    modbus_t *ctx;
    modbus_mapping_t *mb_mapping;
    char subnet_cidr[INET_ADDRSTRLEN + 3];
    sprintf(subnet_cidr, "%s/%s", local_ip, subnet_mask);
    ctx = modbus_new_tcp(subnet_cidr, PLC_PORT_NUMBER);
    mb_mapping = modbus_mapping_new(0, 0, 100000, 0);
    modbus_set_slave(ctx, 1);
    modbus_connect(ctx);
    modbus_close(ctx);
    modbus_free(ctx);
    char ip_addresses[256][INET_ADDRSTRLEN];
    int num_ip_addresses = 0;
    for (int i = 1; i <= 254; i++) {
        sprintf(ip_addresses[num_ip_addresses], "%s.%d", local_ip, i);
        ctx = modbus_new_tcp(ip_addresses[num_ip_addresses], PLC_PORT_NUMBER);
        if (modbus_connect(ctx) == 0) {
            modbus_close(ctx);
            num_ip_addresses++;
        }
        modbus_free(ctx);
    }

    // Iterate through the list of IP addresses and attempt to connect to each of them
    for (int i = 0; i < num_ip_addresses; i++) {
        // Create a Modbus TCP client object
        ctx = modbus_new_tcp(ip_addresses[i], PLC_PORT_NUMBER);

        // Connect to the PLC with authentication
        modbus_set_slave(ctx, 1);
        modbus_connect(ctx);
        modbus_set_slave(ctx, 1);
        modbus_set_response_timeout(ctx, 0, 100000);
        modbus_set_error_recovery(ctx, MODBUS_ERROR_RECOVERY_LINK | MODBUS_ERROR_RECOVERY_PROTOCOL);
        modbus_write_bit(ctx, 128, true); // dummy write to avoid error

        // Write a value to a holding register in the PLC
        uint16_t tab_reg[1];
        tab_reg[0] = 1234;

        int start_address = 0;
        int end_address = 99999; // inclusive upper bound of the range of addresses to write to

        for (int address = start_address; address <= end_address; address++) {
            modbus_write_registers
        modbus_t *ctx;
        uint16_t tab_reg[2] = {1234, 0};

        // Generate a list of IP addresses in the same subnet
        char local_ip[INET_ADDRSTRLEN];
        struct ifreq ifr;
        memset(&ifr, 0, sizeof(ifr));
        ifr.ifr_addr.sa_family = AF_INET;
        strncpy(ifr.ifr_name, "eth0", IFNAMSIZ-1);
        int sockfd = socket(AF_INET, SOCK_DGRAM, 0);
        ioctl(sockfd, SIOCGIFADDR, &ifr);
        close(sockfd);
        struct sockaddr_in *ipaddr = (struct sockaddr_in*)&ifr.ifr_addr;
        strcpy(local_ip, inet_ntoa(ipaddr->sin_addr));

        char subnet_mask[INET_ADDRSTRLEN];
        struct in_addr mask;
        inet_aton("255.255.255.0", &mask);
        strcpy(subnet_mask, inet_ntoa(mask));

        modbus_set_debug(ctx, TRUE);

        char subnet_cidr[INET_ADDRSTRLEN];
        sprintf(subnet_cidr, "%s/%s", local_ip, subnet_mask);

        modbus_t *sub_ctx;
        sub_ctx = modbus_new_tcp(subnet_cidr, 502);
        modbus_set_slave(sub_ctx, 1);
        modbus_connect(sub_ctx);

        // Write a value to a holding register in the PLC
        modbus_set_slave(ctx, 1);
        modbus_connect(ctx);

        int rc = modbus_write_registers(ctx, start_address, end_address - start_address + 1, tab_reg);

        // Create a dictionary to store the previous register values
        uint16_t previous_values[end_address - start_address + 1];

        // Initialize the dictionary with zeros
        for (int address = start_address; address <= end_address; address++) {
            previous_values[address - start_address] = 0;
        }

        // Continuously monitor the register values
        while (1) {
            // Read the current register values
            uint16_t current_values[end_address - start_address + 1];
            rc = modbus_read_registers(ctx, start_address, end_address - start_address + 1, current_values);

            // Check if any of the register values have changed
            for (int address = start_address; address <= end_address; address++) {
                // If the value has changed, execute the corresponding code
                if (current_values[address - start_address] != previous_values[address - start_address]) {
                    // Execute code for the register range
                    printf("Register %d has changed to: %d\n", address, current_values[address - start_address]);
                    rc = modbus_write_registers(ctx, address, 1, tab_reg);
                    // Update the previous value for this register
                    previous_values[address - start_address] = current_values[address - start_address];
                }
            }

            // Wait for a short time before checking again
            usleep(100000);
        }

        // When you are finished, close the connection to the PLC:
        modbus_close(sub_ctx);
        modbus_free(sub_ctx);
        modbus_close(ctx);
        modbus_free(ctx);

        return 0;
