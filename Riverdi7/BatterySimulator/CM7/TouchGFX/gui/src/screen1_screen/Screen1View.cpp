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



/*Set the state of the battery*/
void Screen1View::SetState(bool state)
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
	if(animatedImage1.isAnimatedImageRunning())
	{
		if(state==false)
		{
			animatedImage1.setAlpha(0);
			animatedImage1.stopAnimation();
			animatedImage1.invalidate();

		}
	}

}

/*Set the level of the battery*/
void Screen1View::SetLevel(int level)
{
	imageProgress1.setValue(level);
	imageProgress1.invalidate();

}
