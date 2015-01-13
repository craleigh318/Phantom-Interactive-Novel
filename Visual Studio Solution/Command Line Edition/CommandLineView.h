#pragma once

#include "stdafx.h"
#include "IStoryView.h"

/*
Prints the current chapter of the story to the command line.
*/
class CommandLineView :
	public IStoryView
{
public:
	CommandLineView();

	void ShowPage(std::shared_ptr<IPage> showingPage);

	void ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList);
};

