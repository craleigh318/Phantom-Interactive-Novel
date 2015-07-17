//
//  StoryNavigator.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/30/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryNavigator.h"

@implementation StoryNavigator {
    UIButton * buttonPrevious;
    UIButton * buttonContinue;
    UIButton * buttonNext;
    UIButton * buttonPause;
}

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

const CGFloat buttonWidthMultiplier = 0.25;

- (void) onButtonContinue {
    [self.observer onButtonContinue];
}

- (void) onButtonPrevious {
    [self.observer onButtonPrevious];
}

- (void) onButtonNext {
    [self.observer onButtonNext];
}

- (void) onButtonPause {
    [self.observer onButtonPause];
}

- (id) initWithObserver: (NSObject <PStoryNavigatorObserver> *) observer {
    self = [super init];
    if (self) {
        self.observer = observer;
        [self initializeStoryNavigator];
    }
    return self;
}

- (void) initializeStoryNavigator {
    self.translatesAutoresizingMaskIntoConstraints = false;
    buttonPrevious = [self initializeButtonPrevious];
    buttonContinue = [self initializeButtonContinue];
    buttonNext = [self initializeButtonNext];
    buttonPause = [self initializeButtonPause];
    [self addButton:buttonPrevious];
    [self addButton:buttonContinue];
    [self addButton:buttonNext];
    [self addButton:buttonPause];
}

- (UIButton *) initializeButtonPrevious {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"⬅︎" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(onButtonPrevious) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:button];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    return button;
}

- (UIButton *) initializeButtonContinue {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"OK" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(onButtonContinue) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:button];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:buttonPrevious attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    return button;
}

- (UIButton *) initializeButtonNext {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"➡︎" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(onButtonNext) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:button];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:buttonContinue attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    return button;
}

- (UIButton *) initializeButtonPause {
    UIButton * button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"≣" forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(onButtonPause) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:button];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    return button;
}

- (void) addButton: (UIButton *) button {
    button.translatesAutoresizingMaskIntoConstraints = false;
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:buttonWidthMultiplier constant:0.0]];
}

- (void) setChoiceSelectorEnabled : (BOOL) enabled
{
    buttonPrevious.enabled = enabled;
    buttonNext.enabled = enabled;
}

@end
