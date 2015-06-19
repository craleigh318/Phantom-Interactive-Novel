//
//  StoryNavigator.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryNavigator.h"

@implementation StoryNavigator {
    NSObject <PStoryNavigator> * handler;
    UIButton * buttonPrevious;
    UIButton * buttonContinue;
    UIButton * buttonNext;
    UIButton * buttonOptions;
}

- (id) initWithHandler: (NSObject <PStoryNavigator> *) h {
    self = [super init];
    if (self) {
        handler = h;
        [self drawNavigator];
    }
    return self;
}

- (void) onButtonContinue {
    [handler onButtonContinue];
}

- (void) onButtonPrevious {
    [handler onButtonPrevious];
}

- (void) onButtonNext {
    [handler onButtonNext];
}

- (void) onButtonOptions {
    [handler onButtonOptions];
}

- (void) enablePreviousAndNext: (BOOL) enabled {
    [buttonPrevious setEnabled:enabled];
    [buttonNext setEnabled:enabled];
}

- (void) enableContinue: (BOOL) enabled {
    [buttonContinue setEnabled:enabled];
}

- (void) drawNavigator {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    [self drawButtonPrevious];
    [self drawButtonContinue];
    [self drawButtonNext];
    [self drawButtonPause];
}

- (void) drawButtonPrevious {
    buttonPrevious = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonPrevious setTitle:@"⬅︎" forState:(UIControlStateNormal)];
    [buttonPrevious addTarget:self action:@selector(onButtonPrevious) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:buttonPrevious];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonPrevious attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addButtonConstraints:buttonPrevious];
}

- (void) drawButtonContinue {
    buttonContinue = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonContinue setTitle:@"OK" forState:(UIControlStateNormal)];
    [buttonContinue addTarget:self action:@selector(onButtonContinue) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:buttonContinue];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonContinue attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:buttonPrevious attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addButtonConstraints:buttonContinue];
}

- (void) drawButtonNext {
    buttonNext = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonNext setTitle:@"➡︎" forState:(UIControlStateNormal)];
    [buttonNext addTarget:self action:@selector(onButtonNext) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:buttonNext];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonNext attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:buttonContinue attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addButtonConstraints:buttonNext];
}

- (void) drawButtonPause {
    buttonOptions = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonOptions setTitle:@"≣" forState:(UIControlStateNormal)];
    [buttonOptions addTarget:self action:@selector(onButtonOptions) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [self addSubview:buttonOptions];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonOptions attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addButtonConstraints:buttonOptions];
}

- (void) addButtonConstraints: (UIButton *) button {
    button.translatesAutoresizingMaskIntoConstraints = false;
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:buttonWidthMultiplier constant:0.0]];
}

@end
