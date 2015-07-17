//
//  Bookmark.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/18/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "Bookmark.h"
#import "StoryView.h"

@implementation Bookmark {
    StoryView * storyView;
    NSObject <PStoryReader> * reader;
    NSArray * currentPages;
    NSUInteger index;
}

- (id)initWithStoryView: (StoryView *) sv andController: (NSObject <PStoryReader> *) r {
    self = [super init];
    if (self) {
        storyView = sv;
        reader = r;
        currentPages = nil;
        index = 0;
    }
    return self;
}

- (BOOL) multipleChoices {
    return ([currentPages count] > 1);
}

- (void) showPages : (NSArray *) pages {
    currentPages = pages;
    index = 0;
    if (!pages || ([pages count] <= 0)) {
        [storyView enableButtonContinue:false];
        [storyView enableButtonPreviousAndNext:false];
        [storyView showImage:nil];
        [storyView showText:nil];
    } else {
        [storyView enableButtonContinue:true];
        if ([self multipleChoices]) {
            [storyView enableButtonPreviousAndNext:true];
        } else {
            [storyView enableButtonPreviousAndNext:false];
        }
        [self setImageAndText];
    }
}

- (void) setImageAndText {
    NSObject <PStoryPage> * currentPage = [currentPages objectAtIndex:index];
    NSString * text = [currentPage text];
    if ([self multipleChoices]) {
        NSString * header = @"Choice ";
        NSString * choiceNumber = [NSString stringWithFormat:@"%lu", ((unsigned long)(index) + 1)];
        header = [header stringByAppendingString:choiceNumber];
        header = [header stringByAppendingString:@" of "];
        NSString * numChoices = [NSString stringWithFormat:@"%lu", (unsigned long)[currentPages count]];
        header = [header stringByAppendingString:numChoices];
        header = [header stringByAppendingString:@":\n\n"];
        text = [header stringByAppendingString:text];
    }
    [storyView showText:text];
    [storyView showImage:[currentPage image]];
}

- (void) onButtonContinue {
    [[currentPages objectAtIndex:index] continue];
}

- (void) onButtonPrevious {
    if (index <= 0) {
        index = ([currentPages count] - 1);
    } else {
        --index;
    }
    [self setImageAndText];
}

- (void) onButtonNext {
    if (index >= ([currentPages count] - 1)) {
        index = 0;
    } else {
        ++index;
    }
    [self setImageAndText];
}

@end
