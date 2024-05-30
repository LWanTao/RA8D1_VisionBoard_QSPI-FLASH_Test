################################################################################
# 自动生成的文件。不要编辑！
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/src/clock.c \
../rt-thread/src/components.c \
../rt-thread/src/idle.c \
../rt-thread/src/ipc.c \
../rt-thread/src/irq.c \
../rt-thread/src/kservice.c \
../rt-thread/src/memheap.c \
../rt-thread/src/mempool.c \
../rt-thread/src/object.c \
../rt-thread/src/scheduler_up.c \
../rt-thread/src/thread.c \
../rt-thread/src/timer.c 

OBJS += \
./rt-thread/src/clock.o \
./rt-thread/src/components.o \
./rt-thread/src/idle.o \
./rt-thread/src/ipc.o \
./rt-thread/src/irq.o \
./rt-thread/src/kservice.o \
./rt-thread/src/memheap.o \
./rt-thread/src/mempool.o \
./rt-thread/src/object.o \
./rt-thread/src/scheduler_up.o \
./rt-thread/src/thread.o \
./rt-thread/src/timer.o 

C_DEPS += \
./rt-thread/src/clock.d \
./rt-thread/src/components.d \
./rt-thread/src/idle.d \
./rt-thread/src/ipc.d \
./rt-thread/src/irq.d \
./rt-thread/src/kservice.d \
./rt-thread/src/memheap.d \
./rt-thread/src/mempool.d \
./rt-thread/src/object.d \
./rt-thread/src/scheduler_up.d \
./rt-thread/src/thread.d \
./rt-thread/src/timer.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/src/%.o: ../rt-thread/src/%.c
	arm-none-eabi-gcc -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -march=armv8.1-m.main+mve.fp+fp.dp -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board\ports" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers\config" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\api" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\instances" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg\bsp" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_gen" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi\sfud\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\fal\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\finsh" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\common\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\newlib" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\epoll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\eventfd" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\poll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\ipc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\common" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\cortex-m85" -include"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

