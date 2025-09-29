# Install script for directory: /home/pi/matrix-creator-hal/cpp/driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmatrix_creator_hal.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmatrix_creator_hal.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmatrix_creator_hal.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/matrix-creator-hal/build/demos/driver/libmatrix_creator_hal.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmatrix_creator_hal.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmatrix_creator_hal.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmatrix_creator_hal.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/matrix_hal" TYPE FILE FILES
    "/home/pi/matrix-creator-hal/cpp/driver/circular_queue.h"
    "/home/pi/matrix-creator-hal/cpp/driver/creator_memory_map.h"
    "/home/pi/matrix-creator-hal/cpp/driver/dummy_data.h"
    "/home/pi/matrix-creator-hal/cpp/driver/dummy_sensor.h"
    "/home/pi/matrix-creator-hal/cpp/driver/everloop.h"
    "/home/pi/matrix-creator-hal/cpp/driver/everloop_image.h"
    "/home/pi/matrix-creator-hal/cpp/driver/fw_data.h"
    "/home/pi/matrix-creator-hal/cpp/driver/gpio_control.h"
    "/home/pi/matrix-creator-hal/cpp/driver/humidity_data.h"
    "/home/pi/matrix-creator-hal/cpp/driver/humidity_sensor.h"
    "/home/pi/matrix-creator-hal/cpp/driver/imu_data.h"
    "/home/pi/matrix-creator-hal/cpp/driver/imu_sensor.h"
    "/home/pi/matrix-creator-hal/cpp/driver/matrix_driver.h"
    "/home/pi/matrix-creator-hal/cpp/driver/mcu_firmware.h"
    "/home/pi/matrix-creator-hal/cpp/driver/microphone_array.h"
    "/home/pi/matrix-creator-hal/cpp/driver/microphone_core.h"
    "/home/pi/matrix-creator-hal/cpp/driver/microphone_core_fir.h"
    "/home/pi/matrix-creator-hal/cpp/driver/microphone_array_location.h"
    "/home/pi/matrix-creator-hal/cpp/driver/pressure_data.h"
    "/home/pi/matrix-creator-hal/cpp/driver/pressure_sensor.h"
    "/home/pi/matrix-creator-hal/cpp/driver/uv_data.h"
    "/home/pi/matrix-creator-hal/cpp/driver/uv_sensor.h"
    "/home/pi/matrix-creator-hal/cpp/driver/matrixio_bus.h"
    "/home/pi/matrix-creator-hal/cpp/driver/bus.h"
    "/home/pi/matrix-creator-hal/cpp/driver/bus_direct.h"
    "/home/pi/matrix-creator-hal/cpp/driver/bus_kernel.h"
    "/home/pi/matrix-creator-hal/cpp/driver/cross_correlation.h"
    "/home/pi/matrix-creator-hal/cpp/driver/direction_of_arrival.h"
    "/home/pi/matrix-creator-hal/cpp/driver/uart_control.h"
    "/home/pi/matrix-creator-hal/cpp/driver/audio_output.h"
    "/home/pi/matrix-creator-hal/cpp/driver/zwave_gpio.h"
    )
endif()

