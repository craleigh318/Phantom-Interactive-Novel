//
//  OfficerOnBed.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "OfficerOnBed.h"

OfficerOnBed::OfficerOnBed()
{
}

std::shared_ptr<std::string> OfficerOnBed::GetImageName()
{
    return std::make_shared<std::string>("Officer-On-Bed.png");
}

std::string OfficerOnBed::GetText()
{
    return "I need to rest and think about what I\'ll do.  I drive the officer\'s car to his home.";
}

void OfficerOnBed::Continue(IStoryView* view)
{
    
}