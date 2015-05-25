//
//  StoryViewIOSCPP.h
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/20/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "stdafx.h"
#include "IStoryView.h"
#import "PStoryViewObjC.h"

class IPage;
class IChoiceList;

/*
 An extension of StoryViewIOSObjC for interfacing with IStoryView.
 */
class StoryViewIOSCPP :
public IStoryView
{
    public:
    /*
     Creates a StoryViewIOSObjC.
     
     owner = the owner to which to delegate methods.
     */
    StoryViewIOSCPP(id<PStoryViewObjC> owner);
    
    void ShowPage(std::shared_ptr<IPage> showingPage);
    
    void ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList);
    
    /*
     Method to call when the continue button is pressed.
     */
    void Continue();
    
    /*
     Views the previous choice of the current choice list
     */
    void PreviousChoice();
    
    /*
     Views the previous choice of the current choice list
     */
    void NextChoice();
    
    private:
    id<PStoryViewObjC> owner;
    
    int currentChoiceIndex;
    
    std::shared_ptr<IChoiceList> currentChoiceList;
    
    std::shared_ptr<IPage> currentPage;
    
    /*
     Pushes the specified choice to the display.
     
     index: the index of the choice in currentChoiceList to push to the display
     */
    void ShowChoice(int index);
};