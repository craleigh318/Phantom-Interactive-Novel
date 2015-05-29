#pragma once

#include "stdafx.h"
#include "Page.h"

class ChoiceToGreenZone :
	public Page
{
public:
	ChoiceToGreenZone();
	std::string GetText();
	void Continue(IStoryView* view);
};

