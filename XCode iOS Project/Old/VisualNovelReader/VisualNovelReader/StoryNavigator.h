//
//  StoryNavigator.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "ExternalHeaders.h"
#import "PStoryNavigator.h"

/*
 Contains buttons that move through the story.
 */
@interface StoryNavigator : UIView <PStoryNavigator>

/*
 Initializes with the specified event handler.
 */
- (id) initWithHandler: (NSObject <PStoryNavigator> *) h;

/*
 If set to true, enables the appropriate buttons for user choice selection.
 */
- (void) enablePreviousAndNext: (BOOL) enabled;

/*
 If set to true, enables the appropriate button to continue the story.
 Set to false when the end of the story is reached.
 */
- (void) enableContinue: (BOOL) enabled;

@end
