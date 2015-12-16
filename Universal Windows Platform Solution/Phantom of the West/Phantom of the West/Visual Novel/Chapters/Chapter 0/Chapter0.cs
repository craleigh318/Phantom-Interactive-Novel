using Phantom_of_the_West.User_Interface.Story_View;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0
{
	internal class Chapter0 : Chapter
	{
		private const string leftArrow = "⬅︎";
		private const string ok = "OK";
		private const string rightArrow = "➡︎";
		private const string menuIcon = "≣";

		private static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{1, Ch0Welcome },
			{2, Ch0POTWSimple },
			{3, Ch0MultipleChoices },
			{4, Ch0FirstChoice },
			{5, Ch0Options }
		};

		internal Chapter0() : base(dictionary)
		{
		}

		private static StoryChoiceList Ch0Welcome()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0Welcome");
			string formattedLS = string.Format(localizedString, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 2) });
		}

		private static StoryChoiceList Ch0POTWSimple()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0POTWSimple");
			string formattedLS = string.Format(localizedString, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 3) });
		}

		private static StoryChoiceList Ch0MultipleChoices()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0MultipleChoices");
			string formattedLS = string.Format(localizedString, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 4) });
		}

		private static StoryChoiceList Ch0FirstChoice()
		{
			string localizedString1 = StoryChoice.GetLocalizedString("ch0FirstChoice");
			string localizedString2 = StoryChoice.GetLocalizedString("ch0SecondChoice");
			string formattedLS1 = string.Format(localizedString1, rightArrow, ok);
			string formattedLS2 = string.Format(localizedString2, leftArrow, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { (new StoryChoice(formattedLS1, 5)), (new StoryChoice(formattedLS2, 5)) });
		}

		private static StoryChoiceList Ch0Options()
		{
			string localizedString = StoryChoice.GetLocalizedString("ch0Options");
			string formattedLS = string.Format(localizedString, menuIcon, ok);
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { new StoryChoice(formattedLS, 1001) });
		}
	}
}
