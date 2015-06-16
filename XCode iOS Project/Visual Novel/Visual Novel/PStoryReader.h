//
//  PStoryReader.h
//  Visual Novel
//
//  Created by Christopher Raleigh on 2015/15/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

@import Foundation;
@protocol PStory;

/*
 A user interface that displays a story.
 */
@protocol PStoryReader <NSObject>

/*
 The story being read.
 */
- (NSObject <PStory> *) story;

/*
 Sets the story.
 */
- (void) setStory : (NSObject <PStory> *) newValue;

/*
 Has the reader display the specified set of pages.
 */
- (void) showPages : (NSArray *) pages;

@end
