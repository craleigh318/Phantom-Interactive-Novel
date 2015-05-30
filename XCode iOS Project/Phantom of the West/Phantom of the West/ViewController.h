//
//  ViewController.h
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <iAd/iAd.h>
#import "GameView.h"
#import "PauseMenu.h"

@interface ViewController : UIViewController <ADBannerViewDelegate, UITableViewDelegate>

@property UIView * mainView;

@end

