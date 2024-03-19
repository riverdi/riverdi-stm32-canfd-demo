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


void Screen1Presenter::setChargeLevel(int value)
{
	view.setChargeLevel(value);
}

void Screen1Presenter::setChargeState(bool state)
{
	view.setChargeState(state);
}

void Screen1Presenter:: SetFault (bool state)
{
	view.SetFault(state);
}
