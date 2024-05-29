/*********************
 *      INCLUDES
 *********************/

#include "lvgl_port_display.h"
#include "main.h"
#include "ltdc.h"
#include "dma2d.h"

/**********************
 *  STATIC PROTOTYPES
 **********************/

static void disp_flush (lv_display_t * disp, const lv_area_t * area, uint8_t * color_p);
static void disp_flush_complete (DMA2D_HandleTypeDef*);

/**********************
 *  STATIC VARIABLES
 **********************/

lv_display_t * disp;

lv_color_t lvgl_buffer1[MY_DISP_HOR_RES * 800]__attribute__ ((section (".SDRAM_data")));
lv_color_t lvgl_buffer2[MY_DISP_HOR_RES * 800]__attribute__ ((section (".SDRAM_data")));



/**********************
 *   GLOBAL FUNCTIONS
 **********************/

void
lvgl_display_init (void)
{
  /* display initialization */
   /* display is already initialized by cubemx-generated code */
	/*Create a display*/
	disp=lv_display_create(MY_DISP_HOR_RES,MY_DISP_VER_RES);

	/*Set the display flush callback*/
	lv_display_set_flush_cb(disp, disp_flush);


  /* display buffer initialization */
	lv_display_set_buffers(disp, &lvgl_buffer1, lvgl_buffer2, sizeof(lvgl_buffer1), LV_DISPLAY_RENDER_MODE_PARTIAL);

  /* interrupt callback for DMA2D transfer */
  hdma2d.XferCpltCallback = disp_flush_complete;


}

/**********************
 *   STATIC FUNCTIONS
 **********************/

static void
disp_flush (lv_display_t * disp, const lv_area_t * area, uint8_t * color_p)
{
  lv_coord_t width = lv_area_get_width(area);
  lv_coord_t height = lv_area_get_height(area);

  DMA2D->CR = 0x0U << DMA2D_CR_MODE_Pos;
  DMA2D->FGPFCCR = DMA2D_INPUT_RGB565;
  DMA2D->FGMAR = (uint32_t)color_p;
  DMA2D->FGOR = 0;
  DMA2D->OPFCCR = DMA2D_OUTPUT_RGB565;
  DMA2D->OMAR = hltdc.LayerCfg[0].FBStartAdress + 2 * \
                (area->y1 * MY_DISP_HOR_RES + area->x1);
  DMA2D->OOR = MY_DISP_HOR_RES - width;
  DMA2D->NLR = (width << DMA2D_NLR_PL_Pos) | (height << DMA2D_NLR_NL_Pos);
  DMA2D->IFCR = 0x3FU;
  DMA2D->CR |= DMA2D_CR_TCIE;
  DMA2D->CR |= DMA2D_CR_START;
}

static void
disp_flush_complete (DMA2D_HandleTypeDef *hdma2d)
{
  lv_disp_flush_ready(disp);
}
