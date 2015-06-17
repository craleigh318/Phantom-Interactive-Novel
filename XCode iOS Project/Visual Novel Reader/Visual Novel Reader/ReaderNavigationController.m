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
}

- (id)init {
    self = [super init];
    if (self) {
        story = nil;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self pushViewController:[[StoryViewController alloc] initWithNavigationController:self] animated:false];
}

- (NSObject <PStory> *) story {
    return story;
}

- (void) setStory : (NSObject <PStory> *) newValue {
    story = newValue;
}

- (void) showPages : (NSArray *) pages {
    
}

- (void) showOptionsMenu: (BOOL) show {
    
}

- (void) onButtonContinue {
    
}

- (void) onButtonPrevious {
    
}

- (void) onButtonNext {
    
}

- (void) onButtonOptions {
    
}

@end
