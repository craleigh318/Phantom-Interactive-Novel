//
//  StoryViewIOSCPP.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/21/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#include "StoryViewIOSCPP.h"

StoryViewIOSCPP::StoryViewIOSCPP(id<PStoryViewObjC> owner) :
owner(owner),
currentChoiceIndex(0),
currentChoiceList(),
currentPage(std::make_shared<RedZone>())
{
    ShowPage(currentPage);
}

void StoryViewIOSCPP::UpdateImageAndText(std::shared_ptr<std::string> imageName, std::string text)
{
    UIImage * newImage;
    if (imageName)
    {
        newImage = [UIImage imageNamed:[NSString stringWithUTF8String:imageName->c_str()]];
    }
    else
    {
        newImage = Nil;
    }
    [owner setTextViewText:[NSString stringWithUTF8String:text.c_str()]];
    [owner setImageViewImage:newImage];
}

void StoryViewIOSCPP::ShowPage(std::shared_ptr<IPage> showingPage)
{
    currentChoiceList = nullptr;
    currentPage = showingPage;
    UpdateImageAndText(currentPage->GetImageName(), currentPage->GetText());
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
    std::string textViewText = "Choice ";
    std::string choiceNumber = std::to_string(index + 1);
    textViewText += choiceNumber;
    textViewText += " of ";
    std::string numChoices = std::to_string(currentChoiceList->GetSize());
    textViewText += numChoices;
    textViewText += ":\n\n";
    textViewText += currentPage->GetText();
    UpdateImageAndText(currentPage->GetImageName(), textViewText);
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