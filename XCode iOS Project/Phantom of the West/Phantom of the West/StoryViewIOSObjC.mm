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
    UIImageView* uiImageView;
    UITextView* uiTextView;
    UIButton* buttonPrevious;
    UIButton* buttonContinue;
    UIButton* buttonNext;
    UIButton* buttonPause;
}

- (id) initWithFrame : (CGRect) viewRect
{
    if (self = [super initWithFrame:viewRect])
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
    const CGFloat defaultButtonHeight = 44.0;
    // Create scroll view.
    CGRect scrollViewBounds = self.frame;
    scrollViewBounds.size.height -= defaultButtonHeight;
    UIScrollView * myScrollView = [self getUIScrollView:scrollViewBounds];
    // Create button row.
    CGRect buttonRowBounds = self.frame;
    buttonRowBounds.origin.y = scrollViewBounds.size.height;
    buttonRowBounds.size.height = defaultButtonHeight;
    UIView * buttonRow = [self getButtonRow:buttonRowBounds];
    // Add views.
    [self addSubview:myScrollView];
    [self addSubview:buttonRow];
}

/*
 Returns a button row for navigating a choice list.
 */
- (UIView*) getButtonRow : (CGRect) bounds
{
    UIView* buttonRowView = [[UIView alloc]initWithFrame:bounds];
    CGFloat parentWidth = bounds.size.width;
    CGFloat parentHeight = bounds.size.height;
    CGRect viewRectangle = CGRectMake(0.0, 0.0, parentWidth, parentHeight);
    buttonPrevious = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonPrevious setTitle:@"⬅︎" forState:(UIControlStateNormal)];
    const CGFloat numButtonsInRow = 4.0;
    viewRectangle.size.width /= numButtonsInRow;
    [buttonPrevious setFrame:viewRectangle];
    [buttonPrevious addTarget:self action:@selector(onButtonPrevious) forControlEvents:(UIControlEvents)UIControlEventTouchUpInside];
    [buttonRowView addSubview:buttonPrevious];
    buttonContinue = [UIButton buttonWithType:UIButtonTypeSystem];
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
    buttonPause = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonPause setTitle:@"≣" forState:(UIControlStateNormal)];
    viewRectangle.origin.x += viewRectangle.size.width;
    [buttonPause setFrame:viewRectangle];
    [buttonRowView addSubview:buttonPause];
    return buttonRowView;
}

- (UIScrollView*) getUIScrollView : (CGRect) bounds
{
    UIScrollView* myScrollView = [[UIScrollView alloc]initWithFrame:bounds];
    const CGFloat imageAspectRatio = (16.0 / 9.0);
    // Create image view.
    CGFloat imageViewWidth = bounds.size.width;
    CGFloat imageViewHeight = imageViewWidth / imageAspectRatio;
    CGRect imageViewBounds = CGRectMake(0.0, 0.0, imageViewWidth, imageViewHeight);
    uiImageView = [self getUIImageView:imageViewBounds];
    // Create text view.
    CGFloat textViewY = imageViewHeight;
    const CGFloat textBoxHeight = 100.0;
    CGRect textViewBounds = CGRectMake(0.0, textViewY, imageViewWidth, textBoxHeight);
    uiTextView = [self getUITextView:textViewBounds];
    // Add views.
    [myScrollView addSubview:uiImageView];
    [myScrollView addSubview:uiTextView];
    return myScrollView;
}

- (UIImageView*) getUIImageView : (CGRect) bounds
{
    UIImageView* myImageView = [[UIImageView alloc]initWithFrame:bounds];
    [[myImageView layer] setMagnificationFilter:kCAFilterNearest];
    return myImageView;
}

- (UITextView*) getUITextView : (CGRect) textViewRectangle
{
    UITextView* myTextView = [[UITextView alloc]initWithFrame:textViewRectangle];
    myTextView.editable = false;
    return myTextView;
}

- (void) setImageViewImage : (UIImage*) newImage
{
    [uiImageView setImage:newImage];
}

- (void) setTextViewText : (NSString*) newText
{
    [uiTextView setText:newText];
    //CGRect frame = uiTextView.frame;
    //frame.size.height = [uiTextView contentSize].height;
    //[uiTextView setFrame:frame];
}

- (void) setChoiceSelectorEnabled : (BOOL) enabled
{
    [buttonPrevious setEnabled:enabled];
    [buttonNext setEnabled:enabled];
}

@end