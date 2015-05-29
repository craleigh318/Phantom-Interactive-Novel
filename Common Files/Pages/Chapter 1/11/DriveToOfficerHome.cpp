//
//  DriveToOfficerHome.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "DriveToOfficerHome.h"

DriveToOfficerHome::DriveToOfficerHome()
{
}

std::shared_ptr<std::string> DriveToOfficerHome::GetImageName()
{
    return std::make_shared<std::string>("Drive-to-Officer-Home.png");
}

std::string DriveToOfficerHome::GetText()
{
    return "I need to rest and think about what I\'ll do.  I drive the officer\'s car to his home.";
}

void DriveToOfficerHome::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<OfficerOnBed>());
}