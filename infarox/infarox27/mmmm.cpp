#include <iostream>
#include <windows.h>

int main() {
    std::cout << "Hello World!" << std::endl;
    std::cout << "Exiting in 15 seconds..." << std::endl;
    Sleep(15000);
    return 0;
}