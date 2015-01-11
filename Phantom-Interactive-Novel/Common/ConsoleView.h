#pragma once
#include "IChapter.h"

/*
Prints the current chapter of the story to the console.
*/
class ConsoleView
{
public:
	/*
	Creates a view with the specified starting chapter.
	*/
	ConsoleView(std::shared_ptr<IChapter> startingChapter);

	/*
	Starts printing to the console.
	*/
	void Start();

private:
	std::shared_ptr<IChapter> currentChapter;

	/*
	Prints the specified chapter.
	*/
	void PrintChapter(std::shared_ptr<IChapter> printingChapter);
};

