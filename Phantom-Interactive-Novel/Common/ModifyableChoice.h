#pragma once
#include "IChoice.h"

class ModifyableChoice :
	public IChoice
{
public:
	/*
	Creates a new, empty choice.
	Add content to the choice by using the set-methods.
	*/
	ModifyableChoice();

	std::string GetText();
	std::shared_ptr<IChapter> Select();

	/*
	Sets the text of this choice.
	Returns true if the text was modified successfully.
	*/
	bool SetText(std::string newText);

	/*
	Sets the chapter following this choice.
	Returns true if this choice was assigned to the new chapter successfully.
	*/
	bool SetNextChapter(std::shared_ptr<IChapter> newNextChapter);

private:
	std::string text;

	std::shared_ptr<IChapter> nextChapter;
};

