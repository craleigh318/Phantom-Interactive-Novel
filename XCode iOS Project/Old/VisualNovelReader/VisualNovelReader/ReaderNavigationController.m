//
//  ReaderNavigationController.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "ReaderNavigationController.h"

@implementation ReaderNavigationController {
    NSObject <PStory> * story;
    IBOutlet StoryViewController * subController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    story = nil;
}

- (NSObject <PStory> *) story {
    return story;
}

- (void) setStory : (NSObject <PStory> *) newValue {
    story = newValue;
    [story setReader:self];
}

- (void) showPages : (NSArray *) pages {
    [subController showPages:pages];
}

- (void) showOptionsMenu: (BOOL) show {
    
}

- (void) onButtonContinue {
    [subController onButtonContinue];
}

- (void) onButtonPrevious {
    [subController onButtonPrevious];
}

- (void) onButtonNext {
    [subController onButtonNext];
}

- (void) onButtonOptions {
    [self showOptionsMenu:true];
}

@end
