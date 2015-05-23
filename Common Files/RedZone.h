#pragma once

#include "stdafx.h"
#include "IPage.h"
#include "IStoryView.h"
#include "ModifyableChoiceList.h"
#include "ChoiceToGreenZone.h"
#include "ChoiceToBlueZone.h"

class RedZone :
	public IPage
{
public:
	RedZone();

	std::string GetText();

	void Continue(IStoryView* view);
};

