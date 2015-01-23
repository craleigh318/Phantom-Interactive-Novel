//
//  StoryViewIOSCPP.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/21/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "StoryViewIOSCPP.h"
#include "IChoiceList.h"
#include "IPage.h"
#include "RedZone.h"

StoryViewIOSCPP::StoryViewIOSCPP(id<PStoryViewObjC> owner) :
owner(owner),
currentChoiceIndex(0),
currentChoiceList(),
currentPage(std::make_shared<RedZone>())
{
    ShowPage(currentPage);
}

void StoryViewIOSCPP::ShowPage(std::shared_ptr<IPage> showingPage)
{
    currentChoiceList = nullptr;
    currentPage = showingPage;
    [owner setTextViewText:[NSString stringWithUTF8String:showingPage->GetText().c_str()]];
    [owner setChoiceSelectorEnabled:NO];
}

void StoryViewIOSCPP::ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList)
{
    currentChoiceList = showingChoiceList;
    currentChoiceIndex = 0;
    ShowChoice(currentChoiceIndex);
    [owner setChoiceSelectorEnabled:YES];
}

void StoryViewIOSCPP::Continue()
{
    currentPage->Continue(this);
}

void StoryViewIOSCPP::ShowChoice(int index)
{
    currentPage = currentChoiceList->GetChoice(currentChoiceIndex).lock();
    [owner setTextViewText:[NSString stringWithUTF8String:currentPage->GetText().c_str()]];
}

void StoryViewIOSCPP::PreviousChoice()
{
    if (currentChoiceList)
    {
        if (currentChoiceIndex <= 0)
        {
            currentChoiceIndex = currentChoiceList->GetSize() - 1;
        }
        else
        {
            --currentChoiceIndex;
        }
        ShowChoice(currentChoiceIndex);
    }
}

void StoryViewIOSCPP::NextChoice()
{
    if (currentChoiceList)
    {
        if (currentChoiceIndex >= (currentChoiceList->GetSize() - 1))
        {
            currentChoiceIndex = 0;
        }
        else
        {
            ++currentChoiceIndex;
        }
        ShowChoice(currentChoiceIndex);
    }
}