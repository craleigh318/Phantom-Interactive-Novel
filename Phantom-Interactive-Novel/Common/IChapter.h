#pragma once
#include <string>
#include <vector>
#include <memory>

class IChoice;

/*
A segment of text for the reader to read.
After reading, the reader is to select from this chapter's list of choices.
If there are no choices, then this is the end of the current story.
*/
class IChapter
{
public:
	/*
	Returns the text of this chapter.
	*/
	virtual std::string GetText() = 0;

	/*
	Returns a list of the available choices for this chapter.
	*/
	virtual std::vector<std::shared_ptr<IChoice>> GetChoices() = 0;
};

