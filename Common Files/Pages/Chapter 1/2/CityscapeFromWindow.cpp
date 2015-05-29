//
//  CityscapeFromWindow.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "CityscapeFromWindow.h"

CityscapeFromWindow::CityscapeFromWindow()
{
}

std::shared_ptr<std::string> CityscapeFromWindow::GetImageName()
{
    return std::make_shared<std::string>("Cityscape-from-Window.png");
}

std::string CityscapeFromWindow::GetText()
{
    return "That\'s the city out there.";
}

void CityscapeFromWindow::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<DrKadenDrinksElixir>());
}