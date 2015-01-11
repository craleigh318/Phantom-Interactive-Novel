#include "ModifyableChoice.h"

ModifyableChoice::ModifyableChoice() : text(), nextChapter()
{
}

std::string ModifyableChoice::GetText()
{
	return text;
}

std::shared_ptr<IChapter> ModifyableChoice::Select()
{
	return nextChapter;
}

bool ModifyableChoice::SetText(std::string newText)
{
	text = newText;
	return true;
}

bool ModifyableChoice::SetNextChapter(std::shared_ptr<IChapter> newNextChapter)
{
	nextChapter = newNextChapter;
	return true;
}

