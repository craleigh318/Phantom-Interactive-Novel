#include "ModifyableChapter.h"
#include "IChoice.h"

ModifyableChapter::ModifyableChapter() : text(), choices(new std::vector<std::shared_ptr<ModifyableChoice>>())
{
}

std::string ModifyableChapter::GetText()
{
	return text;
}

std::vector<std::shared_ptr<IChoice>> ModifyableChapter::GetChoices()
{
	std::vector<std::shared_ptr<IChoice>> returningChoices;
	for (std::vector<std::shared_ptr<ModifyableChoice>>::iterator it = choices->begin(); it != choices->end(); ++it)
	{
		returningChoices.push_back(*it);
	}
	return returningChoices;
}

bool ModifyableChapter::SetText(std::string newText)
{
	text = newText;
	return true;
}

std::weak_ptr<std::vector<std::shared_ptr<ModifyableChoice>>> ModifyableChapter::GetModifyableChoiceList()
{
	return choices;
}