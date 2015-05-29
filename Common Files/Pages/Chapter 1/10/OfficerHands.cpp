//
//  OfficerHands.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "OfficerHands.h"

OfficerHands::OfficerHands()
{
}

std::shared_ptr<std::string> OfficerHands::GetImageName()
{
    return std::make_shared<std::string>("Officer-Hands.png");
}

std::string OfficerHands::GetText()
{
    return "My hands.  My skin.  My clothes.  They\'re all different.  The elixir must have worked.";
}

void OfficerHands::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<DriveToOfficerHome>());
}