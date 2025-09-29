#include "cpp/driver/matrixio_bus.h"
#include <iostream>

int main() {
    std::cout << "Starting MATRIX HAL test..." << std::endl;
    
    matrix_hal::MatrixIOBus bus;
    std::cout << "Bus object created" << std::endl;
    
    if (bus.Init()) {
        std::cout << "Bus initialized successfully!" << std::endl;
        std::cout << "Device name: 0x" << std::hex << bus.MatrixName() << std::endl;
        std::cout << "LED count: " << std::dec << bus.MatrixLeds() << std::endl;
        std::cout << "Direct bus: " << (bus.IsDirectBus() ? "Yes" : "No") << std::endl;
        return 0;
    } else {
        std::cout << "Bus initialization failed" << std::endl;
        return 1;
    }
}
