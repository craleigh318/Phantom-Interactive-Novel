//
//  PhantomReveal.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "PhantomReveal.h"

PhantomReveal::PhantomReveal()
{
}

std::shared_ptr<std::string> PhantomReveal::GetImageName()
{
    return std::make_shared<std::string>("Phantom-Reveal.png");
}

std::string PhantomReveal::GetText()
{
    return "I tilt my head up to look at the officer, but I can\'t feel my own face.  Is it missing?";
}

void PhantomReveal::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<PhantomRevealWithEyes>());
}