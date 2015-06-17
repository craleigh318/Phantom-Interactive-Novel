//
//  StoryViewController.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryViewController.h"

@implementation StoryViewController {
    UINavigationController <PReaderNavigationController, PStoryReader, PStoryNavigator> * navigationController;
}

- (id)initWithNavigationController: (UINavigationController <PReaderNavigationController, PStoryReader, PStoryNavigator> *) nc {
    self = [super init];
    if (self) {
        navigationController = nc;
        [self setView:[[StoryView alloc] initWithNavigationController:navigationController]];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    [navigationController setNavigationBarHidden:true animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [navigationController setNavigationBarHidden:false animated:animated];
    [super viewWillDisappear:animated];
}

@end
