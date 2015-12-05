using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0
{
	internal class Chapter0
	{
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
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch0Welcome", 2) });
		}
	}
}
