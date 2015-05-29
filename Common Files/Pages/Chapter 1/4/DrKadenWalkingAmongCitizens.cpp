//
//  DrKadenWalkingAmongCitizens.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "DrKadenWalkingAmongCitizens.h"

DrKadenWalkingAmongCitizens::DrKadenWalkingAmongCitizens()
{
}

std::shared_ptr<std::string> DrKadenWalkingAmongCitizens::GetImageName()
{
    return std::make_shared<std::string>("Dr-Kaden-Walking-among-Citizens.png");
}

std::string DrKadenWalkingAmongCitizens::GetText()
{
    return "I walk outside, alongside the city streets.";
}

void DrKadenWalkingAmongCitizens::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<DrKadenIll>());
}