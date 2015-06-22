//
//  StoryViewController.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryViewController.h"

@implementation StoryViewController {
    IBOutlet UINavigationController <PReaderNavigationController, PStoryReader, PStoryNavigator> * navigationController;
    StoryView * storyView;
    Bookmark * bookmark;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    storyView = [[StoryView alloc] initWithNavigationController:navigationController];
    [[self view] addSubview:storyView];
    bookmark = [[Bookmark alloc] initWithStoryView:storyView andController:navigationController];
}

- (void)viewWillAppear:(BOOL)animated {
    [navigationController setNavigationBarHidden:true animated:animated];
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [navigationController setNavigationBarHidden:false animated:animated];
    [super viewWillDisappear:animated];
}

- (void) showPages : (NSArray *) pages {
    [bookmark showPages:pages];
}

- (void) onButtonContinue {
    [bookmark onButtonContinue];
}

- (void) onButtonPrevious {
    [bookmark onButtonPrevious];
}

- (void) onButtonNext {
    [bookmark onButtonNext];
}

@end
