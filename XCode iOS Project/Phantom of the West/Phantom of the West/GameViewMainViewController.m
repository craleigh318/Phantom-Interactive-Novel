//
//  GameViewMainViewController.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/22/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "GameViewMainViewController.h"

@interface GameViewMainViewController ()

@end

@implementation GameViewMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    storyEventHandler = [[StoryEventHandler alloc] initWithViewController:self andStory:nil];
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
