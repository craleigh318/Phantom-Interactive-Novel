#pragma once

#include "stdafx.h"
#include "IPage.h"

class RedZone :
	public IPage
{
public:
	RedZone();

	std::string GetText();

	void Continue(IStoryView* view);
};

