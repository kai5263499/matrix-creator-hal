#include <iostream>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <cstring>

#define WR_VALUE 1200
#define RD_VALUE 1201

int main() {
    int fd = open("/dev/matrixio_regmap", O_RDWR);
    if (fd < 0) {
        std::cout << "Failed to open /dev/matrixio_regmap" << std::endl;
        return 1;
    }

    std::cout << "Successfully opened /dev/matrixio_regmap" << std::endl;
    
    // Try to read device ID from address 0
    int32_t buffer[10];
    buffer[0] = 0;    // address
    buffer[1] = 8;    // length (2 x 4 bytes)
    
    if (ioctl(fd, RD_VALUE, buffer) == 0) {
        std::cout << "Device ID: 0x" << std::hex << buffer[2] << std::endl;
        std::cout << "Version: 0x" << std::hex << buffer[3] << std::endl;
    } else {
        std::cout << "ioctl read failed" << std::endl;
    }
    
    close(fd);
    return 0;
}
