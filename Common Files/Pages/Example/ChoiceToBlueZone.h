#pragma once

#include "stdafx.h"
#include "Page.h"

class ChoiceToBlueZone :
	public Page
{
public:
	ChoiceToBlueZone();
	std::string GetText();
	void Continue(IStoryView* view);
};

