//
//  StoryViewController.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryViewController.h"

@implementation StoryViewController {
    UINavigationController <PReaderNavigationController> * navigationController;
}

- (id)initWithNavigationController: (UINavigationController <PReaderNavigationController> *) nc {
    self = [super init];
    if (self) {
        navigationController = nc;
        [self setView:[[StoryView alloc] initWithNavigationController:navigationController]];
    }
    return self;
}

@end
