//
//  StoryViewIOS.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "StoryViewIOS.h"
#include "IPage.h"
#include "IChoiceList.h"
#include "RedZone.h"

StoryViewIOS::StoryViewIOS()
{
    uiView = InitializeUIView();
    ShowPage(std::make_shared<RedZone>());
}

void StoryViewIOS::ShowPage(std::shared_ptr<IPage> showingPage)
{
    std::string cppText = showingPage->GetText();
    NSString* objcText = [NSString stringWithUTF8String:cppText.c_str()];
    [uiTextView setText:objcText];
}

void StoryViewIOS::ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList)
{
    ShowPage(showingChoiceList->GetChoice(0).lock());
}

UIView* StoryViewIOS::GetUIView()
{
    return uiView;
}

UIView* StoryViewIOS::InitializeUIView()
{
    CGRect viewRectangle = [[UIScreen mainScreen] bounds];
    CGFloat statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    viewRectangle.origin.y += statusBarHeight;
    viewRectangle.size.height -= statusBarHeight;
    UIView* gameView = [[UIView alloc]initWithFrame:viewRectangle];
    CGFloat imageAspectRatio = (16.0 / 9.0);
    CGRect imageViewRectangle = CGRectMake(0.0, 0.0, viewRectangle.size.width, (viewRectangle.size.width / imageAspectRatio));
    [gameView addSubview:[[UIImageView alloc]initWithFrame:imageViewRectangle]];
    UIView* buttonRow = GetButtonRow(viewRectangle.size.width);
    CGRect newButtonRowFrame = buttonRow.frame;
    newButtonRowFrame.origin.y = (viewRectangle.size.height - buttonRow.frame.size.height);
    [buttonRow setFrame:newButtonRowFrame];
    [gameView addSubview:buttonRow];
    CGRect textViewRectangle = CGRectMake(0.0, imageViewRectangle.size.height, viewRectangle.size.width, (buttonRow.frame.origin.y - imageViewRectangle.size.height));
    uiTextView = InitializeUITextView(textViewRectangle);
    [gameView addSubview:uiTextView];
    return gameView;
}

UITextView* StoryViewIOS::InitializeUITextView(CGRect textViewRectangle)
{
    UITextView* myTextView = [[UITextView alloc]initWithFrame:textViewRectangle];
    myTextView.editable = false;
    return myTextView;
}

UIView* StoryViewIOS::GetButtonRow(CGFloat parentWidth)
{
    CGRect viewRectangle = CGRectMake(0.0, 0.0, parentWidth, (parentWidth / 3.0));
    UIView* buttonRowView = [[UIView alloc]initWithFrame:viewRectangle];
    UIButton* buttonPrevious = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonPrevious setTitle:@"<" forState:(UIControlStateNormal)];
    viewRectangle.size.width /= 3.0;
    [buttonPrevious setFrame:viewRectangle];
    [buttonRowView addSubview:buttonPrevious];
    UIButton* buttonContinue = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonContinue setTitle:@"OK" forState:(UIControlStateNormal)];
    viewRectangle.origin.x += viewRectangle.size.width;
    [buttonContinue setFrame:viewRectangle];
    [buttonRowView addSubview:buttonContinue];
    UIButton* buttonNext = [UIButton buttonWithType:UIButtonTypeSystem];
    [buttonNext setTitle:@">" forState:(UIControlStateNormal)];
    viewRectangle.origin.x += viewRectangle.size.width;
    [buttonNext setFrame:viewRectangle];
    [buttonRowView addSubview:buttonNext];
    return buttonRowView;
}
