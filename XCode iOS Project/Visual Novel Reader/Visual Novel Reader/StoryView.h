//
//  StoryView.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PReaderNavigationController.h"
#import "StoryNavigator.h"
#import "StoryImageView.h"
#import "StoryTextView.h"

@import UIKit;

@interface StoryView : UIView

/*
 Initializes with the specified ReaderNavigationController
 */
- (id)initWithNavigationController: (UINavigationController <PReaderNavigationController, PStoryNavigator> *) nc;

/*
 Add new constraints when device rotates.
 */
- (void) addOrientationConstraints: (UIInterfaceOrientation) interfaceOrientation;

/*
 Remove olds constraints when device rotates.
 */
- (void) removeOrientationConstraints;

@end
