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

/*<! variable to handle the fault state.*/
uint8_t fault_state;


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


/* Set the level of the battery*/

/* setLevel Function  */
/**
  * @brief  Function implementing of setChargeLevel.
  * @param  argument: percentage of the battery.
  * @retval None
  */
void Screen1View::setChargeLevel(int value)
{

	/*Update the battery percentage*/
	imageProgress1.setValue(value);
	imageProgress1.invalidate();
	Unicode::snprintf(textArea1Buffer, TEXTAREA1_SIZE, "%d%", value);
	textArea1.invalidate();

}



/* Set the state of the battery*/

/*  setChargetState Function  */
/**
  * @brief  Function implementing of Set Charge State.
  * @param  argument: bool for state
  * @retval None
  */
void Screen1View::setChargeState(bool state)
{
	/*If the animation is notrunning and there is no fault.*/
	if(!animatedImage1.isAnimatedImageRunning() &&fault_state==false)
	{
		/*If the state is charging.*/
		if(state==true)
		{
			/*Start the animation.*/
			animatedImage1.setAlpha(255);
			animatedImage1.startAnimation(false, false, true);
			animatedImage1.invalidate();
		}
	}

	/*If the animation is already running.*/
	else if(animatedImage1.isAnimatedImageRunning())
	{
		/*If the battery is discharging*/
		if(state==false)
		{
			/*Stop the animation.*/
			animatedImage1.setAlpha(0);
			animatedImage1.stopAnimation();
			animatedImage1.invalidate();
		}
	}


}

/* Set the fault display*/

/*  Set the fault display Function  */
/**
  * @brief  Function implementing of fault .
  * @param  argument: bool for state
  * @retval None
  */
void Screen1View::SetFault(bool state)
{
	/*If there is an fault.*/
	if (state==true)
	{
		/*display the warning.*/
		image3.setAlpha(255);
		image4.setAlpha(255);

		image3.invalidate();
		image4.invalidate();

		/*Stop showing the charging indicator.*/
		animatedImage1.setAlpha(0);
		animatedImage1.stopAnimation();
		animatedImage1.invalidate();

		/*Set the fault state to true.*/
		fault_state=true;

	}

	else
	{
		/*If there is no fault, hide the warning.*/
		fault_state=false;
		image3.setAlpha(0);
		image4.setAlpha(0);

		image3.invalidate();
		image4.invalidate();
	}
}
