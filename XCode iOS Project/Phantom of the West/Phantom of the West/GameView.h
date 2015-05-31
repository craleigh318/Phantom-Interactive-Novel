//
//  GameView.h
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Advertising.h"
#include "StoryViewIOSObjC.h"

/*
 A basic class used to load the UI.
 */
@interface GameView : UIView

/*
 Returns the game's user interface as a UIView.
 */
+ (GameView *) getGameView : (UIViewController <ADBannerViewDelegate, UITableViewDelegate> *) controller;

@property UIView * adBannerContainer;
@property StoryViewIOSObjC * storyView;

@end