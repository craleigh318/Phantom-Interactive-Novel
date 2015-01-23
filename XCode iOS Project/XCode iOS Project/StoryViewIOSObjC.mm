//
//  StoryViewIOSObjC.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/20/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "StoryViewIOSObjC.h"
#include "StoryViewIOSCPP.h"

@implementation StoryViewIOSObjC
{
    StoryViewIOSCPP* cppGlue;
    UITextView* uiTextView;
    UIButton* buttonPrevious;
    UIButton* buttonNext;
}

- (id) init
{
    if (self = [super init])
    {
        [self initializeUIView];
        cppGlue = new StoryViewIOSCPP(self);
        return self;
    }
    return nil;
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

/*
 Initializes uiView.
 */
- (void) initializeUIView
{
    CGRect viewRectangle = [[UIScreen mainScreen] bounds];
    CGFloat statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    viewRectangle.origin.y += statusBarHeight;
    viewRectangle.size.height -= statusBarHeight;
    [self setFrame:viewRectangle];
    CGFloat imageAspectRatio = (16.0 / 9.0);
    CGRect imageViewRectangle = CGRectMake(0.0, 0.0, viewRectangle.size.width, (viewRectangle.size.width / imageAspectRatio));
    [self addSubview:[[UIImageView alloc]initWithFrame:imageViewRectangle]];
    UIView* buttonRow = [self getButtonRow:viewRectangle.size.width];
    CGRect newButtonRowFrame = buttonRow.frame;
    newButtonRowFrame.origin.y = (viewRectangle.size.height - buttonRow.frame.size.height);
    [buttonRow setFrame:newButtonRowFrame];
    [self addSubview:buttonRow];
    CGRect textViewRectangle = CGRectMake(0.0, imageViewRectangle.size.height, viewRectangle.size.width, (buttonRow.frame.origin.y - imageViewRectangle.size.height));
    uiTextView = [self initializeUITextView:textViewRectangle];
    [self addSubview:uiTextView];
}

/*
 Returns a button row for navigating a choice list.
 */
- (UIView*) getButtonRow : (CGFloat) parentWidth
{
    CGRect viewRectangle = CGRectMake(0.0, 0.0, parentWidth, (parentWidth / 3.0));
    UIView* buttonRowView = [[UIView alloc]initWithFrame:viewRectangle];
    buttonPrevious = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonPrevious setTitle:@"⬅︎" forState:(UIControlStateNormal)];
    viewRectangle.size.width /= 3.0;
    [buttonPrevious setFrame:viewRectangle];
    [buttonPrevious addTarget:self action:@selector(onButtonPrevious) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [buttonRowView addSubview:buttonPrevious];
    UIButton* buttonContinue = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonContinue setTitle:@"OK" forState:(UIControlStateNormal)];
    viewRectangle.origin.x += viewRectangle.size.width;
    [buttonContinue setFrame:viewRectangle];
    [buttonContinue addTarget:self action:@selector(onButtonContinue) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [buttonRowView addSubview:buttonContinue];
    buttonNext = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonNext setTitle:@"➡︎" forState:(UIControlStateNormal)];
    viewRectangle.origin.x += viewRectangle.size.width;
    [buttonNext setFrame:viewRectangle];
    [buttonNext addTarget:self action:@selector(onButtonNext) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [buttonRowView addSubview:buttonNext];
    return buttonRowView;
}

/*
 Initializes uiTextView
 */
- (UITextView*) initializeUITextView : (CGRect) textViewRectangle
{
    UITextView* myTextView = [[UITextView alloc]initWithFrame:textViewRectangle];
    myTextView.editable = false;
    return myTextView;
}

/*
 Sets the text of the UI's dialogue box.
 */
- (void) setTextViewText : (NSString*) newText
{
    [uiTextView setText:newText];
}

/*
 If set to true, enables the appropriate buttons for user choice selection.
 */
- (void) setChoiceSelectorEnabled : (BOOL) enabled
{
        [buttonPrevious setEnabled:enabled];
        [buttonNext setEnabled:enabled];
}

@end