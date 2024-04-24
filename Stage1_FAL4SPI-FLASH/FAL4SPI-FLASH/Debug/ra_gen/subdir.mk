################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra_gen/common_data.c \
../ra_gen/hal_data.c \
../ra_gen/main.c \
../ra_gen/pin_data.c \
../ra_gen/vector_data.c 

OBJS += \
./ra_gen/common_data.o \
./ra_gen/hal_data.o \
./ra_gen/main.o \
./ra_gen/pin_data.o \
./ra_gen/vector_data.o 

C_DEPS += \
./ra_gen/common_data.d \
./ra_gen/hal_data.d \
./ra_gen/main.d \
./ra_gen/pin_data.d \
./ra_gen/vector_data.d 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	arm-none-eabi-gcc -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -march=armv8.1-m.main+mve.fp+fp.dp -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board\ports" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers\config" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\api" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\instances" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg\bsp" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_gen" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi\sfud\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\fal\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\finsh" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\common\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\newlib" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\epoll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\eventfd" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\poll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\ipc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\common" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\cortex-m85" -include"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

