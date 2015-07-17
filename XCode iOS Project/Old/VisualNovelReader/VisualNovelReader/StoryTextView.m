//
//  StoryTextView.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryTextView.h"

@implementation StoryTextView

- (id) init {
    self = [super init];
    if (self) {
        [self drawStoryTextView];
    }
    return self;
}

- (void) drawStoryTextView {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self setFont:[UIFont preferredFontForTextStyle:UIFontTextStyleBody]];
    [self setEditable:false];
}

@end
