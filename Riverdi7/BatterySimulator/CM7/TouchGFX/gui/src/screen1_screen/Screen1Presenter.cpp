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


/*In Screen presenter, call the functions which they are in the view this time*/

void Screen1Presenter::SetState(bool state)
{
	view.SetState(state);
}

void Screen1Presenter::SetLevel(int level)
{
	view.SetLevel(level);
}
