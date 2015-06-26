//
//  POTWGameState.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/25/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

@import Foundation;
@import UIKit;

/*
 Contains the game logic for Phantom of the West.
 */
@interface POTWGameState : NSObject

/*
 Returns the current image.
 */
- (UIImage *) currentImage;

/*
 Returns the current text.
 */
- (NSString *) currentText;

@end
