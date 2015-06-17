//
//  StoryViewController.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PReaderNavigationController.h"
#import "StoryView.h"

@import UIKit;

/*
 Controls the gameplay view.
 */
@interface StoryViewController : UIViewController

/*
 Initializes with the specified ReaderNavigationController
 */
- (id)initWithNavigationController: (UINavigationController <PReaderNavigationController> *) nc;

@end
