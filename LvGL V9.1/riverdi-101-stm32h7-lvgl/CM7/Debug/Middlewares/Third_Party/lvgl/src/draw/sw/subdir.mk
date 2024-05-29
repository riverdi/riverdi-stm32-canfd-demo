################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.c \
../Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.o \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.d \
./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/draw/sw/%.o Middlewares/Third_Party/lvgl/src/draw/sw/%.su Middlewares/Third_Party/lvgl/src/draw/sw/%.cyclo: ../Middlewares/Third_Party/lvgl/src/draw/sw/%.c Middlewares/Third_Party/lvgl/src/draw/sw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-sw

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-sw:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_arc.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_border.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_box_shadow.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_fill.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_gradient.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_img.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_letter.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_line.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_mask_rect.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_transform.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_triangle.su ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.cyclo ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.d ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.o ./Middlewares/Third_Party/lvgl/src/draw/sw/lv_draw_sw_vector.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-sw

