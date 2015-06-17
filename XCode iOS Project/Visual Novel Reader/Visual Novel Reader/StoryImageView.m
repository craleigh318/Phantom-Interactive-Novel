//
//  StoryImageView.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryImageView.h"

@implementation StoryImageView

- (id) init {
    self = [super init];
    if (self) {
        [self drawStoryImageView];
    }
    return self;
}

- (void) drawStoryImageView {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [[self layer] setMagnificationFilter:kCAFilterNearest];
}

@end
