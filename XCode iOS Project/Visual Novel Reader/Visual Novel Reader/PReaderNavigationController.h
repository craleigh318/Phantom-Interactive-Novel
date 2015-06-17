//
//  PReaderNavigationController.h
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryViewController.h"

@import Foundation;

/*
 Protocol for ReaderNavigationController.
 */
@protocol PReaderNavigationController <NSObject, PStoryReader>

/*
 Pushes the options menu into view when true.
 Pops the options menu out of view when false.
 */
- (void) showOptionsMenu: (BOOL) show;

@end
