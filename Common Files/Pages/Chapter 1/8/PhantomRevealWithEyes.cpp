//
//  PhantomRevealWithEyes.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "PhantomRevealWithEyes.h"

PhantomRevealWithEyes::PhantomRevealWithEyes()
{
}

std::shared_ptr<std::string> PhantomRevealWithEyes::GetImageName()
{
    return std::make_shared<std::string>("Phantom-Reveal-with-Eyes.png");
}

std::string PhantomRevealWithEyes::GetText()
{
    return "Finally, I can open my eyes.";
}

void PhantomRevealWithEyes::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<OfficerPossessed>());
}