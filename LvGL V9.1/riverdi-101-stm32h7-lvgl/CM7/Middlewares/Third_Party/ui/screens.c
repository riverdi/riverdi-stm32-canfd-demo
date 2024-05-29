#include "screens.h"
#include "images.h"
#include "fonts.h"
#include "actions.h"
#include "vars.h"
#include "styles.h"
#include "ui.h"
#include "stdio.h"
objects_t objects;
lv_obj_t *tick_value_change_obj;


lv_obj_t *obj_bar, *obj_text ;

static void event_handler_cb_main_obj0(lv_event_t *e) {
    lv_event_code_t event = lv_event_get_code(e);
    void *flowState = e->user_data;
    if (event == LV_EVENT_CLICKED) {
        action_toggle_led(e);
    }
}

static void event_handler_cb_main_obj1(lv_event_t *e) {
    lv_event_code_t event = lv_event_get_code(e);
    void *flowState = e->user_data;
    if (event == LV_EVENT_VALUE_CHANGED) {
        action_set_brightness(e);
    }
}

void create_screen_main() {
    lv_obj_t *obj = lv_obj_create(0);
    objects.main = obj;
    lv_obj_set_pos(obj, 0, 0);
    lv_obj_set_size(obj, 1280, 800);
    lv_obj_clear_flag(obj, LV_OBJ_FLAG_SCROLLABLE);
    {
        lv_obj_t *parent_obj = obj;
        {
            lv_obj_t *obj = lv_label_create(parent_obj);
            lv_obj_set_pos(obj, 596, 566);
            lv_obj_set_size(obj, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
            lv_label_set_text(obj, "LED Control");
        }
        {
            lv_obj_t *obj = lv_switch_create(parent_obj);
            objects.obj0 = obj;
            lv_obj_set_pos(obj, 615, 604);
            lv_obj_set_size(obj, 50, 25);
            lv_obj_add_event_cb(obj, event_handler_cb_main_obj0, LV_EVENT_ALL, 0);
        }
        {
            lv_obj_t *obj = lv_dropdown_create(parent_obj);
            lv_obj_set_pos(obj, 1023, 384);
            lv_obj_set_size(obj, 150, LV_SIZE_CONTENT);
            lv_dropdown_set_options(obj, "Option 1\nOption 2\nOption 3\nOption 4\nOption 5\nOption 6\nOption 7");
        }
        {
            lv_obj_t *obj = lv_roller_create(parent_obj);
            lv_obj_set_pos(obj, 186, 355);
            lv_obj_set_size(obj, 80, 100);
            lv_roller_set_options(obj, "Option 1\nOption 2\nOption 3\nOption 4\nOption 5\nOption 6\nOption 7", LV_ROLLER_MODE_NORMAL);
        }
        {
        	obj_bar= lv_bar_create(parent_obj);
            lv_obj_set_pos(obj_bar, 484, 761);
            lv_obj_set_size(obj_bar, 312, 10);
            lv_obj_add_flag(obj_bar, LV_OBJ_FLAG_CLICKABLE);
        }
        {
        	obj_text = lv_label_create(parent_obj);
            lv_obj_set_pos(obj_text, 807, 758);
            lv_obj_set_size(obj_text, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
            lv_label_set_text(obj_text, "0%");
        }
        {
            lv_obj_t *obj = lv_img_create(parent_obj);
            lv_obj_set_pos(obj, 76, 37);
            lv_obj_set_size(obj, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
            lv_img_set_src(obj, &img_lv_gl);
            lv_obj_add_flag(obj, LV_OBJ_FLAG_ADV_HITTEST);
            lv_obj_clear_flag(obj, LV_OBJ_FLAG_SCROLLABLE);
        }
        {
            lv_obj_t *obj = lv_img_create(parent_obj);
            lv_obj_set_pos(obj, 840, 28);
            lv_obj_set_size(obj, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
            lv_img_set_src(obj, &img_riverdi);
            lv_obj_add_flag(obj, LV_OBJ_FLAG_ADV_HITTEST);
            lv_obj_clear_flag(obj, LV_OBJ_FLAG_SCROLLABLE);
        }
        {
            lv_obj_t *obj = lv_label_create(parent_obj);
            lv_obj_set_pos(obj, 385, 77);
            lv_obj_set_size(obj, LV_SIZE_CONTENT, LV_SIZE_CONTENT);
            lv_label_set_text(obj, "V9.1");
        }
        {
            lv_obj_t *obj = lv_slider_create(parent_obj);
            objects.obj1 = obj;
            lv_obj_set_pos(obj, 385, 257);
            lv_obj_set_size(obj, 298, 27);
            lv_slider_set_range(obj, 100, 999);
            lv_slider_set_value(obj, 250, LV_ANIM_ON);
            lv_obj_add_event_cb(obj, event_handler_cb_main_obj1, LV_EVENT_ALL, 0);
        }
        {
            lv_obj_t *obj = lv_img_create(parent_obj);
            lv_obj_set_pos(obj, 690, 211);
            lv_obj_set_size(obj, LV_PCT(10), LV_PCT(15));
            lv_img_set_src(obj, &img_brightness);
            lv_obj_add_flag(obj, LV_OBJ_FLAG_ADV_HITTEST);
            lv_obj_clear_flag(obj, LV_OBJ_FLAG_SCROLLABLE);
        }
        {
            lv_obj_t *obj = lv_spinner_create(parent_obj);
            lv_spinner_set_anim_params(obj, 1000, 10);
            lv_obj_set_pos(obj, 575, 365);
            lv_obj_set_size(obj, 80, 80);
        }
    }
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

void update_slider(int value)
{
	lv_bar_set_value(obj_bar,value,0);
	uint8_t buf[10];
	sprintf(buf,"%d%",value);
	lv_label_set_text(obj_text,buf);

}
