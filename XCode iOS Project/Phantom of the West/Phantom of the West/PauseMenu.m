//
//  PauseMenu.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/29/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "PauseMenu.h"

@implementation PauseMenu

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

static NSMutableArray * options;

- (id) initWithFrame : (CGRect) viewRect
{
    if (self = [super initWithFrame:viewRect style:UITableViewStylePlain])
    {
        [self initializePauseMenu];
        return self;
    }
    return nil;
}

+ (NSArray *) options {
    return options;
}

- (void) initializePauseMenu {
    options = [NSMutableArray array];
    [options addObject:[[ResumeGame alloc] initWithPauseMenu:self]];
}

@end
