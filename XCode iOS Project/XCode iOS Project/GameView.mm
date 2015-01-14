//
//  GameView.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "GameView.h"
#include "StoryViewIOS.h"

@implementation GameView

+ (UIView*)getGameView{
    StoryViewIOS storyView;
    return storyView.GetUIView();
}

@end