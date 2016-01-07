using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_12
{
	internal class Chapter12 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{12001, Ch12Title},
			{12002, Ch12TimeAgo},
			{12003, Ch12RebeccaAvoidedMe},
			{12004, Ch12ISpiedOnRebecca},
			{12005, Ch12ISawIntoRebeccaRoom},
			{12006, Ch12DidRebeccaLoseInterest},
			{12007, Ch12MyHeartStopped},
			{12008, Ch12ICaughtRebecca},
			{12009, Ch12RebeccaWasUncomfortable},
			{12010, Ch12ILeftRebeccaAlone}
		};

		internal Chapter12() : base(dictionary, 12003)
		{
		}

		private static StoryChoiceList Ch12Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch12Title", 12002) });
		}

		private static StoryChoiceList Ch12TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch12TimeAgo", 12003) });
		}

		private static StoryChoiceList Ch12RebeccaAvoidedMe()
		{
			return StoryChoiceList.FromResource("Kaden-Alone-at-School.png", new IStoryChoice[] { StoryChoice.FromResource("ch12RebeccaAvoidedMe", 12004) });
		}

		private static StoryChoiceList Ch12ISpiedOnRebecca()
		{
			return StoryChoiceList.FromResource("Kaden-Binoculars-Raised.png", new IStoryChoice[] { StoryChoice.FromResource("ch12ISpiedOnRebecca", 12005) });
		}

		private static StoryChoiceList Ch12ISawIntoRebeccaRoom()
		{
			return StoryChoiceList.FromResource("Rebecca-Cheats.png", new IStoryChoice[] { StoryChoice.FromResource("ch12ISawIntoRebeccaRoom", 12006) });
		}

		private static StoryChoiceList Ch12DidRebeccaLoseInterest()
		{
			return StoryChoiceList.FromResource("Kaden-Binoculars-Lowered-Color.png", new IStoryChoice[] { StoryChoice.FromResource("ch12DidRebeccaLoseInterest", 12007) });
		}

		private static StoryChoiceList Ch12MyHeartStopped()
		{
			return StoryChoiceList.FromResource("Kaden-Binoculars-Lowered-Greyscale.png", new IStoryChoice[] { StoryChoice.FromResource("ch12MyHeartStopped", 12008) });
		}

		private static StoryChoiceList Ch12ICaughtRebecca()
		{
			return StoryChoiceList.FromResource("Rebecca-Breaks-up-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch12ICaughtRebecca", 12009) });
		}

		private static StoryChoiceList Ch12RebeccaWasUncomfortable()
		{
			return StoryChoiceList.FromResource("Rebecca-Breaks-up-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch12RebeccaWasUncomfortable", 12010) });
		}

		private static StoryChoiceList Ch12ILeftRebeccaAlone()
		{
			return StoryChoiceList.FromResource("Rebecca-Breaks-up-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch12ILeftRebeccaAlone", 13001) });
		}
	}
}
