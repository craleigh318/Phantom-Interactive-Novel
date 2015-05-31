//
//  ViewController.m
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setMainView:[GameView getGameView:self]];
    [[self view] addSubview:[self mainView]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    banner.hidden = FALSE;
}

- (void)bannerView:(ADBannerView *)banner
didFailToReceiveAdWithError:(NSError *)error {
    NSLog(@"%@", error);
}

- (void) tableView: (UITableView *) tableView didSelectRowAtIndexPath: (NSIndexPath *) indexPath {
    NSInteger index = [indexPath row];
    PauseMenu * pauseMenu = (PauseMenu *) tableView;
    [[[pauseMenu options] objectAtIndex:index] onSelect];
    [tableView deselectRowAtIndexPath:indexPath animated:true];
}

@end
