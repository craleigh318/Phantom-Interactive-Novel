//
//  StoryNavigator.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/30/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PStoryNavigatorObserver.h"

@interface StoryNavigator : UIView <PStoryNavigatorObserver>

@property NSObject <PStoryNavigatorObserver> * observer;

- (id) initWithObserver: (NSObject <PStoryNavigatorObserver> *) observer;

/*
 If set to true, enables the appropriate buttons for user choice selection.
 */
- (void) setChoiceSelectorEnabled : (BOOL) enabled;

@end
