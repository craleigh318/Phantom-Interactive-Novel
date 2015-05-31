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
    StoryImageAndTextView * scrollView;
    PauseMenu * pauseMenu;
}

const CGFloat buttonRowHeight = 50.0;

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
    // Create button row.
    navigator = [self getButtonRow];
    // Create scroll view.
    scrollView = [self getUIScrollView];
    // Create pause menu.
    pauseMenu = [[PauseMenu alloc] initWithFrame:self.frame];
    [pauseMenu setDelegate:[self controller]];
    [pauseMenu reloadData];
    pauseMenu.hidden = true;
    [self addSubview:pauseMenu];
}

/*
 Returns a button row for navigating a choice list.
 */
- (StoryNavigator *) getButtonRow
{
    StoryNavigator * buttonRowView = [[StoryNavigator alloc]initWithObserver:self];
    [self addSubview:buttonRowView];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonRowView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonRowView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonRowView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:buttonRowView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:buttonRowHeight]];
    return buttonRowView;
}

- (StoryImageAndTextView *) getUIScrollView {
    const CGFloat textBoxHeight = 512.0;
    StoryImageAndTextView * myScrollView = [[StoryImageAndTextView alloc] init];
    [self addSubview:myScrollView];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myScrollView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:navigator attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    return myScrollView;
}

- (void) setImageViewImage : (UIImage*) newImage
{
    [scrollView setImage:newImage];
}

- (void) setTextViewText : (NSString*) newText
{
    [scrollView setText:newText];
}

- (void) setChoiceSelectorEnabled : (BOOL) enabled
{
    [navigator setChoiceSelectorEnabled:enabled];
}

@end