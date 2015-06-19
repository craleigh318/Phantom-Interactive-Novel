//
//  Bookmark.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/18/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <VisualNovel/PStory.h>
#import <VisualNovel/PStoryPage.h>
#import <VisualNovel/PStoryReader.h>
#import "StoryView.h"

@import Foundation;

/*
 Controls part of the story view.
 */
@interface Bookmark : NSObject

/*
 Initializes with the specified story view.
 */
- (id)initWithStoryView: (StoryView *) sv andController: (NSObject <PStoryReader> *) r;

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
