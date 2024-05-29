################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.c \
../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d \
./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/%.o Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/%.su Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/%.cyclo: ../Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/%.c Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_arc.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_border.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_fill.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_image.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_label.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_line.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_mask_rectangle.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_triangle.su ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.cyclo ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.d ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.o ./Middlewares/Third_Party/lvgl/src/draw/renesas/dave2d/lv_draw_dave2d_utils.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-renesas-2f-dave2d

