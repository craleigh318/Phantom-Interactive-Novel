//
//  GameView.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "GameView.h"
#include "StoryViewIOSObjC.h"

@implementation GameView
    
+ (UIView*)getGameView
    {
        return [[StoryViewIOSObjC alloc] init];
    }
    
    @end