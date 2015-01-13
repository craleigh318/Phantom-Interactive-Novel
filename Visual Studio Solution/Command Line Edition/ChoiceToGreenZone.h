#pragma once

#include "stdafx.h"
#include "IPage.h"

class ChoiceToGreenZone :
	public IPage
{
public:
	ChoiceToGreenZone();
	std::string GetText();
	void Continue(IStoryView* view);
};

