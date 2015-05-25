//
//  Page.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/24/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#pragma once
#include "stdafx.h"
#include "IPage.h"

class Page :
public IPage
{
public:
    /*
     Makes providing an image optional.
     */
    virtual std::shared_ptr<std::string> GetImageName();
    
    /*
     Makes providing audio optional.
     */
    virtual std::shared_ptr<std::string> GetVoiceoverName();
};