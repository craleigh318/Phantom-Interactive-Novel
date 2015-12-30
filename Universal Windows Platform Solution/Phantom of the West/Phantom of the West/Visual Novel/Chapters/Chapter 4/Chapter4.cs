using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_4
{
	internal class Chapter4 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{4001, Ch4Title},
			{4002, Ch4TimeAgo},
			{4003, Ch4FieldTripBegan},
			{4004, Ch4BobbyTeasedMe},
			{4005, Ch4RebeccaDefendedMe},
			{4006, Ch4RebeccaComfortedMe},
			{4007, Ch4RebeccaLookedFamiliar},
			{4008, Ch4RebeccaLivedDownstairs},
			{4009, Ch4IThankedRebecca}
		};

		internal Chapter4() : base(dictionary, 4003)
		{
		}

		private static StoryChoiceList Ch4Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch4Title", 4002) });
		}

		private static StoryChoiceList Ch4TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch4TimeAgo", 4003) });
		}

		private static StoryChoiceList Ch4FieldTripBegan()
		{
			return StoryChoiceList.FromResource("Field-Trip.png", new IStoryChoice[] { StoryChoice.FromResource("ch4FieldTripBegan", 4004) });
		}

		private static StoryChoiceList Ch4BobbyTeasedMe()
		{
			return StoryChoiceList.FromResource("Field-Trip-Kaden-Bullied.png", new IStoryChoice[] { StoryChoice.FromResource("ch4BobbyTeasedMe", 4005) });
		}

		private static StoryChoiceList Ch4RebeccaDefendedMe()
		{
			return StoryChoiceList.FromResource("Field-Trip-Kaden-Bullied.png", new IStoryChoice[] { StoryChoice.FromResource("ch4RebeccaDefendedMe", 4006) });
		}

		private static StoryChoiceList Ch4RebeccaComfortedMe()
		{
			return StoryChoiceList.FromResource("Kaden-Meets-Rebecca.png", new IStoryChoice[] { StoryChoice.FromResource("ch4RebeccaComfortedMe", 4007) });
		}

		private static StoryChoiceList Ch4RebeccaLookedFamiliar()
		{
			return StoryChoiceList.FromResource("Kaden-Meets-Rebecca.png", new IStoryChoice[] { StoryChoice.FromResource("ch4RebeccaLookedFamiliar", 4008) });
		}

		private static StoryChoiceList Ch4RebeccaLivedDownstairs()
		{
			return StoryChoiceList.FromResource("Kaden-Meets-Rebecca.png", new IStoryChoice[] { StoryChoice.FromResource("ch4RebeccaLivedDownstairs", 4009) });
		}

		private static StoryChoiceList Ch4IThankedRebecca()
		{
			return StoryChoiceList.FromResource("Kaden-Meets-Rebecca.png", new IStoryChoice[] { StoryChoice.FromResource("ch4IThankedRebecca", 5001) });
		}
	}
}
