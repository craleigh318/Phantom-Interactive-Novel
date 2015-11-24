#include "CommandLineView.h"
#include "IPage.h"
#include "IChoiceList.h"

CommandLineView::CommandLineView()
{
}

void CommandLineView::ShowPage(std::shared_ptr<IPage> showingPage)
{
	std::cout << showingPage->GetText() << "\n\n";
	showingPage->Continue(this);
}

void CommandLineView::ShowChoiceList(std::shared_ptr<IChoiceList> showingChoiceList)
{
	std::cout << "Your choices:\n";
	int i = 0;
	while (i < showingChoiceList->GetSize())
	{
		std::string choiceText = showingChoiceList->GetChoice(i).lock()->GetText();
		++i;
		std::cout << i << ". " << choiceText << "\n";
	}
	std::cout << "\n";
	int selection;
	std::cin >> selection;
	if (selection <= showingChoiceList->GetSize())
	{
		--selection;
		showingChoiceList->GetChoice(selection).lock()->Continue(this);
	}
}