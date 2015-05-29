#include "RedZone.h"

RedZone::RedZone()
{
}

std::shared_ptr<std::string> RedZone::GetImageName()
{
    std::shared_ptr<std::string> imageName = std::make_shared<std::string>("Journalist-in-Shower.png");
    return imageName;
}

std::string RedZone::GetText()
{
	return "You are in the Red Zone.";
}

void RedZone::Continue(IStoryView* view)
{
	std::shared_ptr<ModifyableChoiceList> choiceList = std::make_shared<ModifyableChoiceList>();
	std::vector<std::shared_ptr<IPage>>& choices = choiceList->GetChoicesVector();
	choices.push_back(std::make_shared<ChoiceToGreenZone>());
	choices.push_back(std::make_shared<ChoiceToBlueZone>());
	view->ShowChoiceList(choiceList);
}