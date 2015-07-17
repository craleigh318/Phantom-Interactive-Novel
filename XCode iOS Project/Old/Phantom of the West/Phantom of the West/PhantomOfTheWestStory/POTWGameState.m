//
//  POTWGameState.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/25/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "POTWGameState.h"

@implementation POTWGameState {
    UIImage * currentImage;
    NSString * currentText;
}

- (id)init {
    self = [super init];
    if (self) {
        currentImage = nil;
        currentText = nil;
    }
    return self;
}

- (UIImage *) currentImage {
    return currentImage;
}

- (NSString *) currentText {
    return currentText;
}

@end
