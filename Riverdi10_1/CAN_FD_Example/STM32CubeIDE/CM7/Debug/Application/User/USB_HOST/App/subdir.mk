################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/hussamaldean/STM32CubeIDE/Riverdi/Riverdi_Displays/Riverdi10_1/CAN_FD_Example/CM7/USB_HOST/App/usb_host.c 

C_DEPS += \
./Application/User/USB_HOST/App/usb_host.d 

OBJS += \
./Application/User/USB_HOST/App/usb_host.o 


# Each subdirectory must supply rules for building sources it contributes
Application/User/USB_HOST/App/usb_host.o: C:/Users/hussamaldean/STM32CubeIDE/Riverdi/Riverdi_Displays/Riverdi10_1/CAN_FD_Example/CM7/USB_HOST/App/usb_host.c Application/User/USB_HOST/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../../../CM7/Core/Inc -I../../../CM7/FATFS/Target -I../../../CM7/FATFS/App -I../../../CM7/TouchGFX/App -I../../../CM7/TouchGFX/target/generated -I../../../CM7/TouchGFX/target -I../../../CM7/USB_HOST/App -I../../../CM7/USB_HOST/Target -I../../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../../Utilities/JPEG -I../../../Middlewares/Third_Party/FatFs/src -I../../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../../Drivers/CMSIS/Include -I../../CM7/../../CM7/Middlewares/ST/touchgfx/framework/include -I../../CM7/../../CM7/TouchGFX/generated/fonts/include -I../../CM7/../../CM7/TouchGFX/generated/gui_generated/include -I../../CM7/../../CM7/TouchGFX/generated/images/include -I../../CM7/../../CM7/TouchGFX/generated/texts/include -I../../CM7/../../CM7/TouchGFX/generated/videos/include -I../../CM7/../../CM7/TouchGFX/gui/include -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-USB_HOST-2f-App

clean-Application-2f-User-2f-USB_HOST-2f-App:
	-$(RM) ./Application/User/USB_HOST/App/usb_host.cyclo ./Application/User/USB_HOST/App/usb_host.d ./Application/User/USB_HOST/App/usb_host.o ./Application/User/USB_HOST/App/usb_host.su

.PHONY: clean-Application-2f-User-2f-USB_HOST-2f-App

