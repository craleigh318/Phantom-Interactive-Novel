//
//  TextViewAndNavigator.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/05/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StoryNavigator.h"

@interface TextViewAndNavigator : UIView

- (id) initWithObserver: (NSObject <PStoryNavigatorObserver> *) observer;

- (NSString *) text;

- (void) setText: (NSString *) value;

- (void) setChoiceSelectorEnabled : (BOOL) enabled;

@end
