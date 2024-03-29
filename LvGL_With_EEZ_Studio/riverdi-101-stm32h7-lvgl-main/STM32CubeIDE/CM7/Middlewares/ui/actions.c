/*
 * actions.c
 *
 *  Created on: Mar 29, 2024
 *      Author: hussamaldean
 */


#include "actions.h"
#include "main.h"
#include "lvgl/lvgl.h"

int16_t value;
void action_toggle_led(lv_event_t * e)
{
	lv_obj_t *ta=lv_event_get_target(e);
	if(lv_obj_has_state(ta, LV_STATE_CHECKED))
	{
		HAL_GPIO_WritePin(GPIOJ, GPIO_PIN_10, GPIO_PIN_SET);
	}
	else
	{
		HAL_GPIO_WritePin(GPIOJ, GPIO_PIN_10, GPIO_PIN_RESET);
	}

}

void action_brightness_control(lv_event_t * e)
{
	lv_obj_t *ta=lv_event_get_target(e);
	value=lv_slider_get_value(ta);
	TIM15->CCR1=value;
}
