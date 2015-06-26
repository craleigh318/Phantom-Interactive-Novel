//
//  POTWPage.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/25/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "POTWPage.h"
#import "POTWGameState.h"

@implementation POTWPage {
    POTWGameState * gameState;
}

- (id)initWithGameState: (POTWGameState *) gs {
    self = [super init];
    if (self) {
        gameState = gs;
    }
    return self;
}

- (UIImage *) image {
    return [gameState currentImage];
}

- (NSString *) text {
    return [gameState currentText];
}

- (void) continue {
    @throw [NSException exceptionWithName:NSInvalidArgumentException reason:nil userInfo:nil];
}

@end
