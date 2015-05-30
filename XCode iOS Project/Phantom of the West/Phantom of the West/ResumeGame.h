//
//  ResumeGame.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/29/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "PauseMenuOption.h"

@interface ResumeGame : UITableViewCell <PauseMenuOption>

@property UIView * pauseMenu;

- (id) initWithPauseMenu : (UIView *) pauseMenu;

@end
