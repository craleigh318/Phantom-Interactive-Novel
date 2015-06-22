//
//  StoryEventHandler.h
//  VisualNovelReader
//
//  Created by Christopher Raleigh on 2015/21/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "Bookmark.h"
#import "ExternalHeaders.h"
#import "PReaderNavigationController.h"
#import "PStoryNavigator.h"
#import "StoryView.h"

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
- (StoryView *) storyView;

@end
