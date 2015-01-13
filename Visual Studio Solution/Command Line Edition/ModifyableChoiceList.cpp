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
	return choices.size();
}

std::vector<std::shared_ptr<IPage>>& const ModifyableChoiceList::GetChoicesVector()
{
	return choices;
}