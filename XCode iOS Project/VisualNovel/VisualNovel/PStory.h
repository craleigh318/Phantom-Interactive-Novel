//
//  PStory.h
//  Visual Novel
//
//  Created by Christopher Raleigh on 2015/15/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

@import Foundation;
@protocol PStoryPage;
@protocol PStoryReader;

/*
 A story that consists of multiple pages.
 Some points in the story have multiple choices.
 */
@protocol PStory <NSObject>

/*
 The interface displaying this story.
 */
- (NSObject <PStoryReader> *) reader;

/*
 Sets the reader
 */
- (void) setReader : (NSObject <PStoryReader> *) newValue;

/*
 Starts the story from the beginning.
 */
- (void) newGame;

@end
