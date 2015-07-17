//
//  StoryWithReader.h
//  Visual Novel
//
//  Created by Christopher Raleigh on 2015/15/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PStory.h"
#import "PStoryReader.h"

@import Foundation;

/*
 A convenience class that pairs a story with its reader.
 */
@interface StoryWithReader : NSObject

/*
 The story.
 */
- (NSObject <PStory> *) story;

/*
 Sets the story.
 */
- (void) setStory : (NSObject <PStory> *) newValue;

/*
 The reader.
 */
- (NSObject <PStoryReader> *) reader;

/*
 Sets the reader.
 */
- (void) setReader : (NSObject <PStoryReader> * ) newValue;

@end
