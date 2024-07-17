/**
  ******************************************************************************
  * File Name          : Screen1View.cpp
  * Description        : Code for Screen1View applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2023 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */

#include <gui/screen1_screen/Screen1View.hpp>


extern  uint8_t CAN_FD_State;


Screen1View::Screen1View()
{

}

void Screen1View::setupScreen()
{
    Screen1ViewBase::setupScreen();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}



/* Set the state of the battery*/

/*  setState Function  */
/**
  * @brief  Function implementing of SetState.
  * @param  argument: bool for state
  * @retval None
  */
void Screen1View::SetState(bool state)
{
	/* If animation is not running*/
	if(!animatedImage1.isAnimatedImageRunning())
	{
		/* If state is charging*/
		if(state==true)
		{
			/* Show the charging animation*/
			animatedImage1.setAlpha(255);
			animatedImage1.startAnimation(false, false, true);
			animatedImage1.invalidate();
		}
	}

	/* If animation is running*/
	if(animatedImage1.isAnimatedImageRunning())
	{
		/* If the battery is discharging*/
		if(state==false)
		{
			/* Stop the animation*/
			animatedImage1.setAlpha(0);
			animatedImage1.stopAnimation();
			animatedImage1.invalidate();

		}
	}

	if(CAN_FD_State ==0)
	{
		image3.setAlpha(0);
		image3.invalidate();
	}
	else
	{
		image3.setAlpha(255);
		image3.invalidate();
	}

}

/* Set the level of the battery*/

/* setLevel Function  */
/**
  * @brief  Function implementing of SetLevel.
  * @param  argument: percentage of the battery.
  * @retval None
  */
void Screen1View::SetLevel(int level)
{
	/* Set the battery level*/
	imageProgress1.setValue(level);
	imageProgress1.invalidate();

}
