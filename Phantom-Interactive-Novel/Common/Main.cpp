#include "ModifyableChapter.h"
#include "ConsoleView.h"

int main()
{
	std::shared_ptr<ModifyableChapter> redZone = std::make_shared<ModifyableChapter>();
	redZone->SetText("You are in the Red Zone.");
	std::shared_ptr<ModifyableChapter> greenZone = std::make_shared<ModifyableChapter>();
	redZone->SetText("You are in the Green Zone.");
	std::shared_ptr<ModifyableChapter> blueZone = std::make_shared<ModifyableChapter>();
	redZone->SetText("You are in the Blue Zone.");
	std::shared_ptr<ModifyableChoice> choiceToRedZone = std::make_shared<ModifyableChoice>();
	choiceToRedZone->SetText("Go to the Red Zone.");
	std::shared_ptr<ModifyableChoice> choiceToGreenZone = std::make_shared<ModifyableChoice>();
	choiceToGreenZone->SetText("Go to the Green Zone.");
	std::shared_ptr<ModifyableChoice> choiceToBlueZone = std::make_shared<ModifyableChoice>();
	choiceToBlueZone->SetText("Go to the Blue Zone.");
	choiceToRedZone->SetNextChapter(redZone);
	choiceToGreenZone->SetNextChapter(greenZone);
	choiceToBlueZone->SetNextChapter(blueZone);
	std::shared_ptr<std::vector<std::shared_ptr<ModifyableChoice>>> choiceList = redZone->GetModifyableChoiceList().lock();
	choiceList->push_back(choiceToGreenZone);
	choiceList->push_back(choiceToBlueZone);
	choiceList = greenZone->GetModifyableChoiceList().lock();
	choiceList->push_back(choiceToRedZone);
	choiceList->push_back(choiceToBlueZone);
	choiceList = blueZone->GetModifyableChoiceList().lock();
	choiceList->push_back(choiceToRedZone);
	choiceList->push_back(choiceToGreenZone);
	ConsoleView(redZone).Start();
	return 0;
}