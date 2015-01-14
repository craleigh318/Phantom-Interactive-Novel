#pragma once

#include "stdafx.h"
#include "IChoiceList.h"

/*
A choice list whose contents can be added or removed.
*/
class ModifyableChoiceList :
	public IChoiceList
{
public:
	/*
	Creates an empty, modifiable choice list.
	*/
	ModifyableChoiceList();

	std::weak_ptr<IPage> GetChoice(int index);

	int GetSize();

	/*
	Returns the vector used to store the choices.
	*/
	std::vector<std::shared_ptr<IPage>>& GetChoicesVector();

private:
	std::vector<std::shared_ptr<IPage>> choices;
};

