//
//  POTWStory.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/24/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PStory.h"

@import Foundation;

/*
 Interface for Phantom of the West's game state.
 */
@interface POTWStory : NSObject <PStory>

/*
 Initializes with the specified reader.
 */
- (id)initWithReader: (NSObject <PStoryReader> *) r;

@end
