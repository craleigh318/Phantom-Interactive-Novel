#pragma once

#include "stdafx.h"
#include "IPage.h"

class ChoiceToBlueZone :
	public IPage
{
public:
	ChoiceToBlueZone();
	std::string GetText();
	void Continue(IStoryView* view);
};

