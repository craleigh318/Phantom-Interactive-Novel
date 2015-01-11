#include <iostream>
#include "ConsoleView.h"
#include "IChoice.h"

ConsoleView::ConsoleView(std::shared_ptr<IChapter> startingChapter) : currentChapter(startingChapter)
{
}

void ConsoleView::Start()
{
	PrintChapter(currentChapter);
}

void ConsoleView::PrintChapter(std::shared_ptr<IChapter> printingChapter)
{
	std::cout << printingChapter->GetText() << "\n\nYour choices:\n";
	std::vector<std::shared_ptr<IChoice>> choices = printingChapter->GetChoices();
	if (!choices.empty())
	{
		std::vector<std::shared_ptr<IChoice>>::iterator it = choices.begin();
		int choiceCount = 1;
		while (it != choices.end())
		{
			std::cout << choiceCount << ": " << (**it).GetText() << "\n";
			++it;
			++choiceCount;
		}
		std::cout << "\nType the number of your choice:\n";
		int selection;
		std::cin >> selection;
		if (selection <= choices.size())
		{
			--selection;
			currentChapter = choices[selection]->Select();
			PrintChapter(currentChapter);
		}
	}
}