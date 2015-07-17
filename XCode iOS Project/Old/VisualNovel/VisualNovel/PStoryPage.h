//
//  PStoryPage.h
//  Visual Novel
//
//  Created by Christopher Raleigh on 2015/15/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

@import Foundation;
@import UIKit;

/*
 Contains an image and text for a part of the story.
 */
@protocol PStoryPage <NSObject>

/*
 The page image.
 */
- (UIImage *) image;

/*
 The page text.
 */
- (NSString *) text;

/*
 Continues the story from this page.
 */
- (void) continue;

@end
