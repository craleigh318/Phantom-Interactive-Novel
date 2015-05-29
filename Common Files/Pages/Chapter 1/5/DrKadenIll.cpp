//
//  DrKadenIll.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "DrKadenIll.h"

DrKadenIll::DrKadenIll()
{
}

std::shared_ptr<std::string> DrKadenIll::GetImageName()
{
    return std::make_shared<std::string>("Dr-Kaden-Ill.png");
}

std::string DrKadenIll::GetText()
{
    return "My head feels light.";
}

void DrKadenIll::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<OfficerNoticesDrKaden>());
}