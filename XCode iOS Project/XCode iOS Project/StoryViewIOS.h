//
//  StoryViewIOS.h
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "stdafx.h"
#include "IStoryView.h"

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

class StoryViewIOS : public IStoryView
{
public:
    StoryViewIOS();
    
    void ShowPage(std::shared_ptr<IPage> showingPage);
    
    void ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList);
    
    /*
     Returns a UIView for iOS interfaces.
     */
    UIView* GetUIView();
    
private:
    UIView* uiView;
    
    UITextView* uiTextView;
    
    /*
     Initializes uiView.
     */
    UIView* InitializeUIView();
    
    /*
     Initializes uiTextView
     */
    UITextView* InitializeUITextView(CGRect textViewRectangle);
    
    /*
     Returns a button row for navigating a choice list.
     */
    UIView* GetButtonRow(CGFloat parentWidth);
};