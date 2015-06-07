//
//  StoryViewIOSObjC.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/20/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryViewIOSObjC.h"

@implementation StoryViewIOSObjC
{
    StoryViewIOSCPP* cppGlue;
    StoryNavigator * navigator;
    UIImageView * imageView;
    UITextView * textView;
    PauseMenu * pauseMenu;
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

const CGFloat buttonRowHeight = 44.0;
const CGFloat imageAspectRatioInverse = (9.0 / 16.0);

- (id) initWithController : (UIViewController <UITableViewDelegate> *) controller
{
    self = [super init];
    if (self)
    {
        [self setController:controller];
        [self initializeUIView];
        cppGlue = new StoryViewIOSCPP(self);
    }
    return self;
}

- (void) dealloc
{
    delete cppGlue;
}

- (void) onButtonContinue
{
    cppGlue->Continue();
}

- (void) onButtonPrevious
{
    cppGlue->PreviousChoice();
}

- (void) onButtonNext
{
    cppGlue->NextChoice();
}

- (void) onButtonPause
{
    pauseMenu.hidden = false;
}

- (void) initializeUIView
{
    self.translatesAutoresizingMaskIntoConstraints = false;
    // Create the views.
    imageView = [[UIImageView alloc] init];
    textView = [[UITextView alloc] init];
    navigator = [[StoryNavigator alloc]initWithObserver:self];
    // Create contraints.
    [self getImageView];
    [self getTextView];
    [self getButtonRow];
    // Create pause menu.
    pauseMenu = [self getPauseMenu];
    // Create more constraints
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
    // Add constraints.
    [self addMyConstraints:universalConstraints];
    [self addMyConstraints:portraitConstraints];
}

- (void) addOrientationConstraints {
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
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

- (StoryNavigator *) getNavigator {
    StoryNavigator * nav = [[StoryNavigator alloc] initWithObserver:self];
    [self addSubview:nav];
    return nav;
}

- (UIImageView*) getImageView {
    imageView.translatesAutoresizingMaskIntoConstraints = false;
    [[imageView layer] setMagnificationFilter:kCAFilterNearest];
    [self addSubview:imageView];
    imageViewUniversalConstraints = @[
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:navigator attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0],
                                      [NSLayoutConstraint constraintWithItem:imageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:imageView attribute:NSLayoutAttributeWidth multiplier:imageAspectRatioInverse constant:0.0]
                                      ];
    return imageView;
}

- (UITextView*) getTextView {
    textView.translatesAutoresizingMaskIntoConstraints = false;
    textView.font = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    textView.editable = false;
    textView.scrollEnabled = false;
    [self addSubview:textView];
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
    return textView;
}

- (PauseMenu *) getPauseMenu {
    PauseMenu * pm = [[PauseMenu alloc] init];
    [pm setDelegate:[self controller]];
    [pm reloadData];
    pm.hidden = true;
    [self addSubview:pm];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:pm attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:pm attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:pm attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:pm attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    return pm;
}

/*
 Returns a button row for navigating a choice list.
 */
- (StoryNavigator *) getButtonRow
{
    [self addSubview:navigator];
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
    return navigator;
}

- (void) setImageViewImage : (UIImage*) newImage
{
    [imageView setImage:newImage];
}

- (void) setTextViewText : (NSString*) newText
{
    [textView setText:newText];
}

- (void) setChoiceSelectorEnabled : (BOOL) enabled
{
    [navigator setChoiceSelectorEnabled:enabled];
}

@end