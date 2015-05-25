#pragma once

#include "stdafx.h"
#include "Page.h"
#include "IStoryView.h"
#include "ModifyableChoiceList.h"
#include "ChoiceToGreenZone.h"
#include "ChoiceToBlueZone.h"

class RedZone :
	public Page
{
public:
	RedZone();

    std::shared_ptr<std::string> GetImageName();
    
    std::string GetText();

	void Continue(IStoryView* view);
};

