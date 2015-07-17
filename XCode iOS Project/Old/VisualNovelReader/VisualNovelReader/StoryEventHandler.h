//
//  StoryEventHandler.h
//  VisualNovelReader
//
//  Created by Christopher Raleigh on 2015/21/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "ExternalHeaders.h"
#import "PStoryNavigator.h"

@protocol PReaderNavigationController;
@class Bookmark;

@interface StoryEventHandler : NSObject <PStoryReader, PStoryNavigator>

/*
 Initializes with a view controller and story.
  The view controller pops and pushes the options menu as needed.
 The story implements the PStory protocol.
 */
- (id) initWithViewController: (NSObject <PReaderNavigationController> *) vc andStory: (NSObject <PStory> *) s;

/*
 The story view.
 Add this to a Navigation Controller's root.
 */
- (UIView *) storyView;

/*
 Add new constraints after device rotates.
 */
- (void) addOrientationConstraints: (UIInterfaceOrientation) interfaceOrientation;

/*
 Remove olds constraints before device rotates.
 */
- (void) removeOrientationConstraints;

@end
