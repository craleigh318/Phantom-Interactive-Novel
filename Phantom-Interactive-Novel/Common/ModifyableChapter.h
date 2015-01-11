#pragma once
#include "IChapter.h"
#include "ModifyableChoice.h"

class ModifyableChapter :
	public IChapter
{
public:
	/*
	Creates a new, empty chapter.
	Add content to the chapter by using the set-methods.
	*/
	ModifyableChapter();

	std::string GetText();
	std::vector<std::shared_ptr<IChoice>> GetChoices();

	/*
	Sets the text of this chapter.
	Returns true if the text was modified successfully.
	*/
	bool SetText(std::string newText);

	/*
	Returns a pointer to the internal choice list for modification.
	*/
	std::weak_ptr<std::vector<std::shared_ptr<ModifyableChoice>>> GetModifyableChoiceList();

private:
	std::string text;

	std::shared_ptr<std::vector<std::shared_ptr<ModifyableChoice>>> choices;
};

