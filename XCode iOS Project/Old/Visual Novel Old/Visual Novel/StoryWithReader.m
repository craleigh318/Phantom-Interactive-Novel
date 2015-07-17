//
//  StoryWithReader.m
//  Visual Novel
//
//  Created by Christopher Raleigh on 2015/15/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryWithReader.h"

@implementation StoryWithReader {
NSObject <PStory> * story;
NSObject <PStoryReader> * reader;
}

- (id)init {
    self = [super init];
    if (self) {
        story = nil;
        reader = nil;
    }
    return self;
}

- (NSObject <PStory> *) story {
    return story;
}

- (void) setStory : (NSObject <PStory> *) newValue {
    story = newValue;
    [story setReader:reader];
    if (reader) {
        [reader setStory:newValue];
    }
}

- (NSObject <PStoryReader> *) reader {
    return reader;
}

- (void) setReader : (NSObject <PStoryReader> * ) newValue {
    reader = newValue;
    [reader setStory:story];
    if (story) {
        [story setReader:newValue];
    }
}

@end
