//
//  PStoryNavigator.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

@import Foundation;

/*
 Handles events for the StoryNavigator buttons.
 */
@protocol PStoryNavigator <NSObject>

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
 The options button is pressed.
 */
- (void) onButtonOptions;

@end
