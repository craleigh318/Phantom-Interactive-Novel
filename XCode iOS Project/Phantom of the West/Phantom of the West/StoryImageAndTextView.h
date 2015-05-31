//
//  StoryImageAndTextView.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/30/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoryImageAndTextView : UIScrollView

- (UIImage *) image;

- (void) setImage: (UIImage *) value;

- (NSString *) text;

- (void) setText: (NSString *) value;

@end
