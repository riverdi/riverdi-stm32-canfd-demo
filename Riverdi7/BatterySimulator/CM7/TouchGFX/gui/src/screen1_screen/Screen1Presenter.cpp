/**
  ******************************************************************************
  * File Name          : Screen1Presenter.cpp
  * Description        : Code for Screen1Presenter applications
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
#include <gui/screen1_screen/Screen1Presenter.hpp>

Screen1Presenter::Screen1Presenter(Screen1View& v)
    : view(v)
{

}

void Screen1Presenter::activate()
{

}

void Screen1Presenter::deactivate()
{

}

void Screen1Presenter::tearDownScreen()
{

}

/* In Screen presenter, call the functions which they are in the view this time*/

/* setState Function  */
/**
  * @brief  Function implementing of SetState.
  * @param  argument: bool for state
  * @retval None
  */
void Screen1Presenter::SetState(bool state)
{
	view.SetState(state);
}

/* setLevel Function  */
/**
  * @brief  Function implementing of setLevel.
  * @param  argument: Level of the battery
  * @retval None
  */
void Screen1Presenter::SetLevel(int level)
{
	view.SetLevel(level);
}
