//
//  StoryView.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "ExternalHeaders.h"

@protocol PReaderNavigationController;
@protocol PStoryNavigator;
@class StoryNavigator;
@class StoryImageView;
@class StoryTextView;

@interface StoryView : UIView

/*
 Initializes with the specified ReaderNavigationController
 */
- (id)initWithNavigationController: (NSObject <PStoryNavigator> *) nc;

/*
 Add new constraints after device rotates.
 */
- (void) addOrientationConstraints: (UIInterfaceOrientation) interfaceOrientation;

/*
 Remove olds constraints before device rotates.
 */
- (void) removeOrientationConstraints;

/*
 Enables the continue button if true.
 */
- (void) enableButtonContinue: (BOOL) enable;

/*
 Enables the previous and next buttons if true.
 */
- (void) enableButtonPreviousAndNext: (BOOL) enable;

/*
 Displays the specified image.
 */
- (void) showImage: (UIImage *) img;

/*
 Displays the specified text.
 */
- (void) showText: (NSString *) txt;

@end
