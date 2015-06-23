//
//  GameViewMainViewController.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/22/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "GameViewMainViewController.h"
#import "StoryEventHandler.h"

@interface GameViewMainViewController ()

@end

@implementation GameViewMainViewController {
    StoryEventHandler * storyEventHandler;
    UIView * storyView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    storyEventHandler = [[StoryEventHandler alloc] initWithViewController:self andStory:nil];
    storyView = [storyEventHandler storyView];
    GameViewStoryViewController * storyController = [[self viewControllers] firstObject];
    UIView * storyControllerSuperview = [storyController view];
    [[storyController view] addSubview:storyView];
    [storyControllerSuperview addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:storyControllerSuperview attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [storyControllerSuperview addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:[storyController topLayoutGuide] attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [storyControllerSuperview addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:storyControllerSuperview attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [storyControllerSuperview addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:[storyController bottomLayoutGuide] attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) showOptionsMenu: (BOOL) show {
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
