//
//  PauseMenu.h
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/29/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ResumeGame.h"

/*
 Appears when the user presses the pause button.
 */
@interface PauseMenu : UITableView <UITableViewDataSource>

@property NSMutableArray * options;

@end
