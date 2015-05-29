//
//  OfficerPossessed.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "OfficerPossessed.h"

OfficerPossessed::OfficerPossessed()
{
}

std::shared_ptr<std::string> OfficerPossessed::GetImageName()
{
    return std::make_shared<std::string>("Officer-Possessed.png");
}

std::string OfficerPossessed::GetText()
{
    return "I feel as light as vapor.  Without hesitating, I leap towards the officer.";
}

void OfficerPossessed::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<OfficerHands>());
}