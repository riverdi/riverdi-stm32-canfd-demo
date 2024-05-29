################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.c \
../Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.o \
./Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.d \
./Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/draw/%.o Middlewares/Third_Party/lvgl/src/draw/%.su Middlewares/Third_Party/lvgl/src/draw/%.cyclo: ../Middlewares/Third_Party/lvgl/src/draw/%.c Middlewares/Third_Party/lvgl/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/draw/lv_draw.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_arc.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_buf.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_image.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_label.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_line.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_mask.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_rect.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_triangle.su ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.d ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.o ./Middlewares/Third_Party/lvgl/src/draw/lv_draw_vector.su ./Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.cyclo ./Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.d ./Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.o ./Middlewares/Third_Party/lvgl/src/draw/lv_image_decoder.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw

