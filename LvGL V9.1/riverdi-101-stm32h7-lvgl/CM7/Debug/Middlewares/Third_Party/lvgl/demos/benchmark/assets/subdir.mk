################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.c \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.c \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.c \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.c \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.c \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.c \
../Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.c 

OBJS += \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.o \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.o \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.o \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.o \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.d \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.d \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.d \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.d \
./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/demos/benchmark/assets/%.o Middlewares/Third_Party/lvgl/demos/benchmark/assets/%.su Middlewares/Third_Party/lvgl/demos/benchmark/assets/%.cyclo: ../Middlewares/Third_Party/lvgl/demos/benchmark/assets/%.c Middlewares/Third_Party/lvgl/demos/benchmark/assets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu18 -g3 -DDEBUG -DCORE_CM7 -DUSE_HAL_DRIVER -DSTM32H747xx -c -I../Core/Inc -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/ui" -I"/Users/hussamaldean/STM32CubeIDE/Riverdi_Lvgl/Riverdi_lvgl_new/riverdi-101-stm32h7-lvgl/CM7/Middlewares/Third_Party/lvgl" -I../FATFS/Target -I../FATFS/App -I../USB_HOST/App -I../USB_HOST/Target -I../../Drivers/STM32H7xx_HAL_Driver/Inc -I../../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../../Utilities/JPEG -I../../Middlewares/Third_Party/FatFs/src -I../../Middlewares/Third_Party/FreeRTOS/Source/include -I../../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../../Drivers/CMSIS/Include -Ofast -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-benchmark-2f-assets

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-benchmark-2f-assets:
	-$(RM) ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_alpha256.su ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_argb.su ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_indexed16.su ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/img_benchmark_cogwheel_rgb.su ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_12_compr_az.c.su ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_16_compr_az.c.su ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.cyclo ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.d ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.o ./Middlewares/Third_Party/lvgl/demos/benchmark/assets/lv_font_benchmark_montserrat_28_compr_az.c.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-benchmark-2f-assets

