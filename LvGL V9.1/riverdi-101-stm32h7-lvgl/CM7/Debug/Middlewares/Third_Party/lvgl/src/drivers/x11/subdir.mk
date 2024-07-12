################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.c \
../Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.o \
./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.d \
./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/drivers/x11/%.o Middlewares/Third_Party/lvgl/src/drivers/x11/%.su Middlewares/Third_Party/lvgl/src/drivers/x11/%.cyclo: ../Middlewares/Third_Party/lvgl/src/drivers/x11/%.c Middlewares/Third_Party/lvgl/src/drivers/x11/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-drivers-2f-x11

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-drivers-2f-x11:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.d ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.o ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_display.su ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.d ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.o ./Middlewares/Third_Party/lvgl/src/drivers/x11/lv_x11_input.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-drivers-2f-x11
