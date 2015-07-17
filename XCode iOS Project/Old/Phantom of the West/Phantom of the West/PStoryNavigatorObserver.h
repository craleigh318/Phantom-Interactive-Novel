//
//  PStoryNavigatorObserver.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/30/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Handles events for the StoryNavigator buttons.
 */
@protocol PStoryNavigatorObserver <NSObject>

/*
 The continue button is pressed.
 */
- (void) onButtonContinue;

/*
 The previous button is pressed.
 */
- (void) onButtonPrevious;

/*
 The next button is pressed.
 */
- (void) onButtonNext;

/*
 The pause button is pressed.
 */
- (void) onButtonPause;

@end
