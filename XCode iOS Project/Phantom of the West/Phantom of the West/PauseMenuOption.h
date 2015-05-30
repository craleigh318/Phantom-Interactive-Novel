//
//  PauseMenuOption.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/29/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 A selectable option in the pause menu.
 */
@protocol PauseMenuOption <NSObject>

/*
 The label of this choice that will appear in the pause menu.
 */
- (NSString *) name;

/*
 The action to perform when the user selects this option.
 */
- (void) onSelect;

@end
