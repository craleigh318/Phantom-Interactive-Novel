//
//  OfficerNoticesDrKaden.cpp
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "OfficerNoticesDrKaden.h"

OfficerNoticesDrKaden::OfficerNoticesDrKaden()
{
}

std::shared_ptr<std::string> OfficerNoticesDrKaden::GetImageName()
{
    return std::make_shared<std::string>("Officer-Notices-Dr-Kaden.png");
}

std::string OfficerNoticesDrKaden::GetText()
{
    return "A police officer notices me.";
}

void OfficerNoticesDrKaden::Continue(IStoryView* view)
{
    view->ShowPage(std::make_shared<PhantomReveal>());
}