################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.c \
../Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.c 

OBJS += \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.o \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.d \
./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/examples/styles/%.o Middlewares/Third_Party/lvgl/examples/styles/%.su Middlewares/Third_Party/lvgl/examples/styles/%.cyclo: ../Middlewares/Third_Party/lvgl/examples/styles/%.c Middlewares/Third_Party/lvgl/examples/styles/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-styles

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-styles:
	-$(RM) ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_1.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_10.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_11.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_12.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_13.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_14.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_15.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_2.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_3.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_4.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_5.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_6.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_7.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_8.su ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.cyclo ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.d ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.o ./Middlewares/Third_Party/lvgl/examples/styles/lv_example_style_9.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-styles

