#pragma once

#include "stdafx.h"

class IPage;
class IChoiceList;

/*
Displays part of the story for the user.
*/
class IStoryView
{
public:
	/*
	Displays a non-interactive page.

	showingPage: the page to display
	*/
	virtual void ShowPage(std::shared_ptr<IPage> showingPage) = 0;

	/*
	Displays a branching path for the story.

	showingChoiceList: the list of choices to show
	*/
	virtual void ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList) = 0;
};

