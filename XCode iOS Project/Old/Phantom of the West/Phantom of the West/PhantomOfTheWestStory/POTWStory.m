//
//  POTWStory.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/24/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "POTWStory.h"
#import "POTWGameState.h"

@implementation POTWStory {
    NSObject <PStoryReader> * reader;
    POTWGameState * gameState;
}

- (id)initWithReader: (NSObject <PStoryReader> *) r {
    self = [super init];
    if (self) {
        reader = r;
        gameState = nil;
    }
    return self;
}

- (NSObject <PStoryReader> *) reader {
    return reader;
}

- (void) setReader : (NSObject <PStoryReader> *) newValue {
    reader = newValue;
}

- (void) newGame {
    gameState = [[POTWGameState alloc] init];
}

@end
