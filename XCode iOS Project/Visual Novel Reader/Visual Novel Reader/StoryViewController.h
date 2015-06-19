//
//  StoryViewController.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PReaderNavigationController.h"
#import "PStoryReader.h"
#import "PStoryNavigator.h"
#import "StoryView.h"
#import "Bookmark.h"

@import UIKit;

/*
 Controls the gameplay view.
 */
@interface StoryViewController : UIViewController

/*
 Initializes with the specified ReaderNavigationController
 */
- (id)initWithNavigationController: (UINavigationController <PReaderNavigationController, PStoryReader, PStoryNavigator> *) nc;

/*
 Has the reader display the specified set of pages.
 */
- (void) showPages : (NSArray *) pages;

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

@end
