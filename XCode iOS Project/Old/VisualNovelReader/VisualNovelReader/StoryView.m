//
//  StoryView.m
//  Visual Novel Reader
//
//  Created by Christopher Raleigh on 2015/16/06.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryView.h"
#import "Constants.h"
#import "PReaderNavigationController.h"
#import "StoryNavigator.h"
#import "StoryImageView.h"
#import "StoryTextView.h"

@implementation StoryView {
    NSObject <PStoryNavigator> * navigationController;
    StoryNavigator * navigator;
    StoryImageView * imageView;
    StoryTextView * textView;
    NSArray * universalConstraints;
    NSArray * portraitConstraints;
    NSArray * landscapeConstraints;
    NSArray * imageViewUniversalConstraints;
    NSArray * textViewUniversalConstraints;
    NSArray * textViewPortraitConstraints;
    NSArray * textViewLandscapeConstraints;
    NSArray * navigatorUniversalConstraints;
    NSArray * navigatorPortraitConstraints;
    NSArray * navigatorLandscapeConstraints;
}

- (id)initWithNavigationController: (NSObject <PStoryNavigator> *) nc {
    self = [super init];
    if (self) {
        navigationController = nc;
        [self drawStoryView];
    }
    return self;
}

- (void) drawStoryView {
    [self setTranslatesAutoresizingMaskIntoConstraints:false];
    // Create the views.
    imageView = [[StoryImageView alloc] init];
    textView = [[StoryTextView alloc] init];
    navigator = [[StoryNavigator alloc] initWithHandler:navigationController];
    // Add the views.
    [self addSubview:imageView];
    [self addSubview:textView];
    [self addSubview:navigator];
    // Add constraints.
    [self initializeConstraints];
    [self addMyConstraints:universalConstraints];
    [self addMyConstraints:portraitConstraints];
}

- (void) addOrientationConstraints: (UIInterfaceOrientation) interfaceOrientation {
    if (interfaceOrientation == UIInterfaceOrientationPortrait) {
        [self addMyConstraints:portraitConstraints];
    } else {
        [self addMyConstraints:landscapeConstraints];
    }
}

- (void) removeOrientationConstraints {
    [self removeMyConstraints:portraitConstraints];
    [self removeMyConstraints:landscapeConstraints];
}

- (void) addMyConstraints : (NSArray *) constraintsArray {
    for (NSArray * constraints in constraintsArray) {
        [self addConstraints:constraints];
    }
}

- (void) removeMyConstraints : (NSArray *) constraintsArray {
    for (NSArray * constraints in constraintsArray) {
        [self removeConstraints:constraints];
    }
}

- (void) enableButtonContinue: (BOOL) enable {
    [navigator enableContinue:enable];
}

- (void) enableButtonPreviousAndNext: (BOOL) enable {
    [navigator enablePreviousAndNext:enable];
}

- (void) showImage: (UIImage *) img {
    [imageView setImage:img];
}

- (void) showText: (NSString *) txt {
    [textView setText:txt];
}

- (void) initializeConstraints {
    // Navigator contraints.
    navigatorUniversalConstraints = @[
                                      [NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]
                                      ];
    navigatorPortraitConstraints = @[
                                     [NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0],
                                     [NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:buttonRowHeight]
                                     ];
    navigatorLandscapeConstraints = @[
                                      [NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeWidth multiplier:(2.0 / 3.0) constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:navigator attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]
                                      ];
    // Image view constraints.
    imageViewUniversalConstraints = @[
                                      NSLayoutC
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:navigator attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeWidth multiplier:imageAspectRatioInverse constant:0.0]
                                      ];
    // Text view constraints.
    textViewUniversalConstraints = @[
                                     [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]
                                     ];
    textViewPortraitConstraints = @[
                                    [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0],
                                    [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0],
                                    [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:navigator attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]
                                    ];
    textViewLandscapeConstraints = @[
                                     [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0],
                                     [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0],
                                     [NSLayoutConstraint constraintWithItem:textView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]
                                     ];
    //Constraint groups.
    universalConstraints = @[
                             imageViewUniversalConstraints,
                             textViewUniversalConstraints,
                             navigatorUniversalConstraints
                             ];
    portraitConstraints = @[
                            textViewPortraitConstraints,
                            navigatorPortraitConstraints
                            ];
    landscapeConstraints = @[
                             textViewLandscapeConstraints,
                             navigatorLandscapeConstraints
                             ];
}

@end
