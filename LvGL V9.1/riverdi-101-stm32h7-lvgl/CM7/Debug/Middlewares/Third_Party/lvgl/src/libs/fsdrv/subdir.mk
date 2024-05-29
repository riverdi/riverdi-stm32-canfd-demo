################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.c \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.c \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.c \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.c \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.c \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.c \
../Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.o \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.o \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.o \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.o \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.o \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.o \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.d \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.d \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.d \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.d \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.d \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.d \
./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/libs/fsdrv/%.o Middlewares/Third_Party/lvgl/src/libs/fsdrv/%.su Middlewares/Third_Party/lvgl/src/libs/fsdrv/%.cyclo: ../Middlewares/Third_Party/lvgl/src/libs/fsdrv/%.c Middlewares/Third_Party/lvgl/src/libs/fsdrv/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-libs-2f-fsdrv

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-libs-2f-fsdrv:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_cbfs.su ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_fatfs.su ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_littlefs.su ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_memfs.su ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_posix.su ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_stdio.su ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.cyclo ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.d ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.o ./Middlewares/Third_Party/lvgl/src/libs/fsdrv/lv_fs_win32.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-libs-2f-fsdrv

