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

- (id) initWithFrame : (CGRect) viewRect
{
    self = [super initWithFrame:CGRectZero style:UITableViewStylePlain];
    if (self)
    {
        [self initializePauseMenu];
    }
    return self;
}

- (void) initializePauseMenu {
    self.translatesAutoresizingMaskIntoConstraints = false;
    [self setDataSource:self];
    [self setOptions: [NSMutableArray array]];
    [[self options] addObject:[[ResumeGame alloc] initWithPauseMenu:self]];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self options] count];
}

- (UITableViewCell *) tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath {
    NSInteger index = [indexPath row];
    UITableViewCell * cell = [[self options] objectAtIndex:index];
    return cell;
}



@end
