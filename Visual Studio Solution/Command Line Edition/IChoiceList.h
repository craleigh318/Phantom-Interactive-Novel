#pragma once

#include "stdafx.h"

class IPage;

/*
A branching path for the story.
*/
class IChoiceList
{
public:
	/*
	Gets the specified choice from this list.

	index: the index of the choice to return.

	Returns the list as an IPage.
	*/
	virtual std::weak_ptr<IPage> GetChoice(int index) = 0;

	/*
	Returns the number of choices in the list.
	*/
	virtual int GetSize() = 0;
};

