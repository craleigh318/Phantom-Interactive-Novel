//
//  IAmDrKaden.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "IAmDrKaden.h"

IAmDrKaden::IAmDrKaden()
{
}

std::shared_ptr<std::string> IAmDrKaden::GetImageName()
{
    return std::make_shared<std::string>("I-am-Dr-Kaden.png");
}

std::string IAmDrKaden::GetText()
{
    return "My name is Dr. Alexander Kaden.";
}

void IAmDrKaden::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<CityscapeFromWindow>());
}