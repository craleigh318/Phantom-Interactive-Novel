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
    
static ADBannerView * adBanner;

+ (UIView*)getGameView
    {
        CGRect viewRectangle = [[UIScreen mainScreen] bounds];
        // Save space for status bar.
        CGFloat statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
        viewRectangle.origin.y += statusBarHeight;
        viewRectangle.size.height -= statusBarHeight;
        UIView * gameView = [[UIView alloc] initWithFrame:viewRectangle];
        // Add advertisment, if applicable.
        
        if ([Advertising shouldDisplayAdvertisement])
        {
            adBanner = [Advertising getIAdBanner];
            CGFloat adHeight = (adBanner.frame.size.height / 2.0);
            viewRectangle.origin.y = adHeight;
            viewRectangle.size.height -= adHeight;
            [gameView addSubview:adBanner];
        }
        else
        {
            adBanner = nil;
            viewRectangle.origin.y = 0.0;
        }
        // Initialize main view.
        StoryViewIOSObjC * storyView = [[StoryViewIOSObjC alloc] initWithFrame:viewRectangle];
        [gameView addSubview:storyView];
        return gameView;
    }
    
    @end