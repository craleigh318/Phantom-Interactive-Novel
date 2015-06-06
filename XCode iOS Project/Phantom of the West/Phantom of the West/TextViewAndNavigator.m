//
//  TextViewAndNavigator.m
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/05/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "TextViewAndNavigator.h"

@implementation TextViewAndNavigator {
    UITextView * textView;
    StoryNavigator * navigator;
}

const CGFloat buttonRowHeight = 44.0;

- (id) initWithObserver: (NSObject <PStoryNavigatorObserver> *) observer {
    self = [super init];
    if (self) {
        navigator = [[StoryNavigator alloc] initWithObserver:observer];
        [self initializeTextViewAndNavigator];
    }
    return self;
}

- (void) initializeTextViewAndNavigator {
    self.translatesAutoresizingMaskIntoConstraints = false;
    [self addSubview:navigator];
    [self constrainNavigator];
    textView = [self initializeTextView];
}

- (void) constrainNavigator {
    [self addConstraint:[NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:buttonRowHeight]];
}

- (UITextView*) initializeTextView {
    UITextView* myTextView = [[UITextView alloc] init];
    myTextView.translatesAutoresizingMaskIntoConstraints = false;
    myTextView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    myTextView.editable = false;
    [self addSubview:myTextView];
    myTextView.translatesAutoresizingMaskIntoConstraints = false;
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myTextView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:navigator attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    return myTextView;
}

- (NSString *) text {
    return textView.text;
}

- (void) setText: (NSString *) value {
    textView.text = value;
}

- (void) setChoiceSelectorEnabled : (BOOL) enabled
{
    [navigator setChoiceSelectorEnabled:enabled];
}

@end
