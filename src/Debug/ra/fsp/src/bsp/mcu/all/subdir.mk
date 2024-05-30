################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/bsp/mcu/all/bsp_clocks.c \
../ra/fsp/src/bsp/mcu/all/bsp_common.c \
../ra/fsp/src/bsp/mcu/all/bsp_delay.c \
../ra/fsp/src/bsp/mcu/all/bsp_group_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_guard.c \
../ra/fsp/src/bsp/mcu/all/bsp_io.c \
../ra/fsp/src/bsp/mcu/all/bsp_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_register_protection.c \
../ra/fsp/src/bsp/mcu/all/bsp_rom_registers.c \
../ra/fsp/src/bsp/mcu/all/bsp_sbrk.c \
../ra/fsp/src/bsp/mcu/all/bsp_security.c 

OBJS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.o \
./ra/fsp/src/bsp/mcu/all/bsp_common.o \
./ra/fsp/src/bsp/mcu/all/bsp_delay.o \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_guard.o \
./ra/fsp/src/bsp/mcu/all/bsp_io.o \
./ra/fsp/src/bsp/mcu/all/bsp_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.o \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.o \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.o \
./ra/fsp/src/bsp/mcu/all/bsp_security.o 

C_DEPS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.d \
./ra/fsp/src/bsp/mcu/all/bsp_common.d \
./ra/fsp/src/bsp/mcu/all/bsp_delay.d \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_guard.d \
./ra/fsp/src/bsp/mcu/all/bsp_io.d \
./ra/fsp/src/bsp/mcu/all/bsp_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.d \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.d \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.d \
./ra/fsp/src/bsp/mcu/all/bsp_security.d 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/bsp/mcu/all/%.o: ../ra/fsp/src/bsp/mcu/all/%.c
	arm-none-eabi-gcc -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -march=armv8.1-m.main+mve.fp+fp.dp -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board\ports" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers\config" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\api" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\instances" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg\bsp" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_gen" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi\sfud\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\fal\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\finsh" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\common\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\newlib" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\epoll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\eventfd" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\poll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\ipc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\common" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\cortex-m85" -include"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

