#pragma once
#include <string>
#include <memory>

class IChapter;

/*
A choice that the reader can make in a chapter.
The choice leads to a new chapter.
*/
class IChoice
{
public:
	/*
	Returns the text of this choice.
	*/
	virtual std::string GetText() = 0;

	/*
	Selects this choice.
	Returns the chapter following this choice.
	*/
	virtual std::shared_ptr<IChapter> Select() = 0;
};

