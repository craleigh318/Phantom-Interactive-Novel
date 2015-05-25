#pragma once

#include "stdafx.h"

class IStoryView;

/*
Contains text and an option to continue the story.
*/
class IPage
{
public:
	/*
	Returns the text of this page.
	*/
	virtual std::string GetText() = 0;

	/*
	Continues to the next page.
	view: the view that will display the next page.
	*/
	virtual void Continue(IStoryView* view) = 0;
    
    /*
     The name of the image that illustrates this page, if one exists.
     */
    virtual std::shared_ptr<std::string> GetImageName() = 0;
    
    /*
     The name of the audio file that accompanies this page, if one exists.
     */
    virtual std::shared_ptr<std::string> GetVoiceoverName() = 0;
};

