﻿using Phantom_of_the_West.User_Interface.Story_View;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0
{
	internal class Chapter0
	{
		private const string leftArrow = "⬅︎";
		private const string ok = "OK";
		private const string rightArrow = "➡︎";
		private const string menuIcon = "≣";

		internal static Dictionary<int, StoryChoiceListDelegate> IDToChoices
		{
			get;
			private set;
		} = new Dictionary<int, StoryChoiceListDelegate>
		{
			{1, Ch0Welcome }
		};

		private static IStoryChoiceList Ch0Welcome()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0Welcome");
			string formattedLS = string.Format(localizedString, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 2) });
		}

		private static IStoryChoiceList Ch0POTWSimple()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0POTWSimple");
			string formattedLS = string.Format(localizedString, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 3) });
		}

		private static IStoryChoiceList Ch0MultipleChoices()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0MultipleChoices");
			string formattedLS = string.Format(localizedString, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 4) });
		}

		private static IStoryChoiceList Ch0FirstChoice()
		{
			string localizedString1 = StoryChoice.GetLocalizedString("ch0FirstChoice");
			string localizedString2 = StoryChoice.GetLocalizedString("ch0SecondChoice");
			string formattedLS1 = string.Format(localizedString1, rightArrow, ok);
			string formattedLS2 = string.Format(localizedString1, leftArrow, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { (new StoryChoice(formattedLS1, 5)), (new StoryChoice(formattedLS2, 5)) });
		}

		private static IStoryChoiceList Ch0Options()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0MultipleChoices");
			string formattedLS = string.Format(localizedString, menuIcon, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 1001) });
		}
	}
}
