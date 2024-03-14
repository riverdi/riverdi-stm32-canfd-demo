#include <gui/screen1_screen/Screen1View.hpp>




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

void Screen1View::setChargeLevel(int value)
{

	imageProgress1.setValue(value);
	imageProgress1.invalidate();

}

void Screen1View::setChargeState(bool state)
{
	if(!animatedImage1.isAnimatedImageRunning())
	{
		if(state==true)
		{
			animatedImage1.setAlpha(255);
			animatedImage1.startAnimation(false, false, true);
			animatedImage1.invalidate();
		}
	}

	else if(animatedImage1.isAnimatedImageRunning())
	{
		if(state==false)
		{
			animatedImage1.setAlpha(0);
			animatedImage1.stopAnimation();
			animatedImage1.invalidate();
		}
	}


}
