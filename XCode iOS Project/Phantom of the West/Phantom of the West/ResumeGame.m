//
//  ResumeGame.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/29/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "ResumeGame.h"

@implementation ResumeGame

- (id) initWithPauseMenu : (UIView *) pauseMenu {
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:[self name]])
    {
        [self setPauseMenu:pauseMenu];
        self.textLabel.text = [self name];
        return self;
    }
    return nil;
}

- (NSString *) name {
    return @"Resume";
}

- (void) onSelect {
    [[self pauseMenu] setHidden:true];
}

@end
