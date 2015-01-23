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

/*
 An IStoryView for iOS devices.
 */
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
    
    /*
     Method to call when the continue button is pressed.
     */
    void OnButtonContinue();
    
private:
    std::shared_ptr<IChoiceList> currentChoiceList;
    
    std::shared_ptr<IPage> currentPage;
    
    UIView* uiView;
    
    UITextView* uiTextView;
    
    UIButton* buttonPrevious;
    
    UIButton* buttonNext;
    
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
    
    /*
     Sets the text of the UI's dialogue box.
     */
    void SetTextViewText(std::string newText);
    
    /*
     If set to true, enabled the appropriate buttons for user choice selection.
     */
    void SetChoiceSelectorEnabled(bool enabled);
};