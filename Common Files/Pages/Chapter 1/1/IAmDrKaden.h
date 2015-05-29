//
//  IAmDrKaden.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/28/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#ifndef __Phantom_of_the_West__IAmDrKaden__
#define __Phantom_of_the_West__IAmDrKaden__
#include "Page.h"
#include "CityscapeFromWindow.h"

class IAmDrKaden :
public Page
{
public:
    IAmDrKaden();
    
    std::shared_ptr<std::string> GetImageName();
    
    std::string GetText();
    
    void Continue(IStoryView* view);
};

#endif /* defined(__Phantom_of_the_West__IAmDrKaden__) */
