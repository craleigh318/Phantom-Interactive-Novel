#include "ModifyableChoiceList.h"

ModifyableChoiceList::ModifyableChoiceList() :
choices()
{
}

std::weak_ptr<IPage> ModifyableChoiceList::GetChoice(int index)
{
	return choices.at(index);
}

int ModifyableChoiceList::GetSize()
{
	return (int)(choices.size());
}

std::vector<std::shared_ptr<IPage>>& ModifyableChoiceList::GetChoicesVector()
{
	return choices;
}