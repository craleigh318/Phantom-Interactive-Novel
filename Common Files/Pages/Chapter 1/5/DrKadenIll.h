//
//  DrKadenIll.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#ifndef __Phantom_of_the_West__DrKadenIll__
#define __Phantom_of_the_West__DrKadenIll__
#include "Page.h"
#include "OfficerNoticesDrKaden.h"

class DrKadenIll :
public Page
{
public:
    DrKadenIll();
    
    std::shared_ptr<std::string> GetImageName();
    
    std::string GetText();
    
    void Continue(IStoryView* view);
};

#endif /* defined(__Phantom_of_the_West__DrKadenIll__) */
