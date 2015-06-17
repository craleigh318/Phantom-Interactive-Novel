//
//  StoryView.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PReaderNavigationController.h"

@import UIKit;

@interface StoryView : UIView

/*
 Initializes with the specified ReaderNavigationController
 */
- (id)initWithNavigationController: (UINavigationController <PReaderNavigationController> *) nc;

@end
