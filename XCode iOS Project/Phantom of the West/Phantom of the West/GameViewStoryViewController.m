//
//  GameViewStoryViewController.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/22/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "GameViewStoryViewController.h"

@interface GameViewStoryViewController ()

@end

@implementation GameViewStoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView * storyView = [storyEventHandler storyView];
    [[self view] addSubview:storyView];
    [storyView addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [storyView addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:[self topLayoutGuide] attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [storyView addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [storyView addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:[self bottomLayoutGuide] attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
