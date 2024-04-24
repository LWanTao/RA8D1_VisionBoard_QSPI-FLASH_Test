################################################################################
# �Զ����ɵ��ļ�����Ҫ�༭��
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rt-thread/components/fal/src/fal.c \
../rt-thread/components/fal/src/fal_flash.c \
../rt-thread/components/fal/src/fal_partition.c \
../rt-thread/components/fal/src/fal_rtt.c 

OBJS += \
./rt-thread/components/fal/src/fal.o \
./rt-thread/components/fal/src/fal_flash.o \
./rt-thread/components/fal/src/fal_partition.o \
./rt-thread/components/fal/src/fal_rtt.o 

C_DEPS += \
./rt-thread/components/fal/src/fal.d \
./rt-thread/components/fal/src/fal_flash.d \
./rt-thread/components/fal/src/fal_partition.d \
./rt-thread/components/fal/src/fal_rtt.d 


# Each subdirectory must supply rules for building sources it contributes
rt-thread/components/fal/src/%.o: ../rt-thread/components/fal/src/%.c
	arm-none-eabi-gcc -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 -march=armv8.1-m.main+mve.fp+fp.dp -O0 -ffunction-sections -fdata-sections -Wall  -g -gdwarf-2 -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board\ports" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\board" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers\config" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\libraries\HAL_Drivers" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\arm\CMSIS_5\CMSIS\Core\Include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\api" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc\instances" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra\fsp\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg\bsp" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_cfg\fsp_cfg" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\ra_gen" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi\sfud\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\drivers\spi" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\fal\inc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\finsh" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\common\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\compilers\newlib" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\epoll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\eventfd" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\io\poll" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\components\libc\posix\ipc" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\include" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\common" -I"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rt-thread\libcpu\arm\cortex-m85" -include"E:\DevTools\RT-ThreadStudio\workspace\FAL4SPI-FLASH\rtconfig_preinc.h" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"

