//
//  ReaderNavigationController.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <VisualNovel/VisualNovel.h>
#import "PReaderNavigationController.h"
#import "PStoryNavigator.h"
#import "StoryViewController.h"

@import UIKit;

/*
 The main controller for the visual novel reader.
 */
@interface ReaderNavigationController : UINavigationController <PReaderNavigationController, PStoryReader, PStoryNavigator>

@end
