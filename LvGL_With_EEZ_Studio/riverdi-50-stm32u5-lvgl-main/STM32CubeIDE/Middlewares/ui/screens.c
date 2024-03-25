#include "screens.h"
#include "images.h"
#include "fonts.h"
#include "actions.h"
#include "vars.h"
#include "styles.h"
#include "ui.h"

objects_t objects;
lv_obj_t *tick_value_change_obj;


lv_obj_t *obj_meter1;
lv_obj_t *obj_meter2;

lv_meter_scale_t *scale1;
lv_meter_scale_t *scale2;

lv_meter_indicator_t *indicator1;
lv_meter_indicator_t *indicator2;

static void event_handler_cb_main_obj0(lv_event_t *e) {
    lv_event_code_t event = lv_event_get_code(e);
    void *flowState = e->user_data;
    if (event == LV_EVENT_CLICKED) {
        action_led_control(e);
    }
}

void create_screen_main() {
    lv_obj_t *obj = lv_obj_create(0);
    objects.main = obj;
    lv_obj_set_pos(obj, 0, 0);
    lv_obj_set_size(obj, 800, 480);
    lv_obj_clear_flag(obj, LV_OBJ_FLAG_SCROLLABLE);
    {
        lv_obj_t *parent_obj = obj;
        {
            lv_obj_t *obj = lv_label_create(parent_obj);
            lv_obj_set_pos(obj, 357, 240);
            lv_obj_set_size(obj, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
            lv_label_set_text(obj, "LED Control");
        }
        {
            lv_obj_t *obj = lv_switch_create(parent_obj);
            objects.obj0 = obj;
            lv_obj_set_pos(obj, 375, 262);
            lv_obj_set_size(obj, 50, 25);
            lv_obj_add_event_cb(obj, event_handler_cb_main_obj0, LV_EVENT_ALL, 0);
        }
        {
            lv_obj_t *obj = lv_spinner_create(parent_obj, 1000, 60);
            lv_obj_set_pos(obj, 39, 57);
            lv_obj_set_size(obj, 80, 80);
        }
        {
            obj_meter1 = lv_meter_create(parent_obj);
            lv_obj_set_pos(obj_meter1, 513, 287);
            lv_obj_set_size(obj_meter1, 180, 180);
            {
            	scale1 = lv_meter_add_scale(obj_meter1);
                lv_meter_set_scale_ticks(obj_meter1, scale1, 41, 1, 5, lv_color_hex(0xffa0a0a0));
                lv_meter_set_scale_major_ticks(obj_meter1, scale1, 8, 3, 10, lv_color_hex(0xff000000), 10);
                lv_meter_set_scale_range(obj_meter1, scale1, 0, 100, 300, 120);
                {
                	indicator1= lv_meter_add_needle_line(obj_meter1, scale1, 3, lv_color_hex(0xff0000ff), -28);
                    lv_meter_set_indicator_value(obj_meter1, indicator1, 0);
                }
            }
        }
        {
        	obj_meter2 = lv_meter_create(parent_obj);
            lv_obj_set_pos(obj_meter2, 119, 287);
            lv_obj_set_size(obj_meter2, 180, 180);
            {
            	scale2 = lv_meter_add_scale(obj_meter2);
                lv_meter_set_scale_ticks(obj_meter2, scale2, 41, 1, 5, lv_color_hex(0xffa0a0a0));
                lv_meter_set_scale_major_ticks(obj_meter2, scale2, 8, 3, 10, lv_color_hex(0xff000000), 10);
                lv_meter_set_scale_range(obj_meter2, scale2, 0, 100, 300, 120);
                {
                    indicator2 = lv_meter_add_needle_line(obj_meter2, scale2, 3, lv_color_hex(0xff0000ff), -28);
                    lv_meter_set_indicator_value(obj_meter2, indicator2, 0);
                }
            }
        }
        {
            lv_obj_t *obj = lv_spinner_create(parent_obj, 1000, 60);
            lv_obj_set_pos(obj, 653, 57);
            lv_obj_set_size(obj, 80, 80);
        }
        {
            lv_obj_t *obj = lv_chart_create(parent_obj);
            lv_obj_set_pos(obj, 164, 15);
            lv_obj_set_size(obj, 439, 217);
        }
    }
}



void update_meter1(uint32_t value)
{
	lv_meter_set_indicator_value(obj_meter1, indicator1, value);
}

void update_meter2(uint32_t value)
{
	lv_meter_set_indicator_value(obj_meter2, indicator2, value);
}


void tick_screen_main() {
}


void create_screens() {
    lv_disp_t *dispp = lv_disp_get_default();
    lv_theme_t *theme = lv_theme_default_init(dispp, lv_palette_main(LV_PALETTE_BLUE), lv_palette_main(LV_PALETTE_RED), false, LV_FONT_DEFAULT);
    lv_disp_set_theme(dispp, theme);
    
    create_screen_main();
}

typedef void (*tick_screen_func_t)();

tick_screen_func_t tick_screen_funcs[] = {
    tick_screen_main,
};

void tick_screen(int screen_index) {
    tick_screen_funcs[screen_index]();
}
