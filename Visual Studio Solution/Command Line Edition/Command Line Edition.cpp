// Command Line Edition.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include "CommandLineView.h"
#include "RedZone.h"

int main()
{
	CommandLineView view;
	view.ShowPage(std::make_shared<RedZone>());
	return 0;
}

