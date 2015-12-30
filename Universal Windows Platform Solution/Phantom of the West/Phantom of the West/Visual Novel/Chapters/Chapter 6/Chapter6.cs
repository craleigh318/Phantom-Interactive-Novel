using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_6
{
	internal class Chapter6 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{6001, Ch6Title},
			{6002, Ch6TimeAgo},
			{6003, Ch6IDatedRebecca},
			{6004, Ch6RebeccaPhotographedUs},
			{6005, Ch6WeWentToRestaurant},
			{6006, Ch6WeAte},
			{6007, Ch6IWillCompute},
			{6008, Ch6RebeccaWillPostPhoto},
			{6009, Ch6IKissedRebecca}
		};

		internal Chapter6() : base(dictionary, 6003)
		{
		}

		private static StoryChoiceList Ch6Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch6Title", 6002) });
		}

		private static StoryChoiceList Ch6TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch6TimeAgo", 6003) });
		}

		private static StoryChoiceList Ch6IDatedRebecca()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Past.png", new IStoryChoice[] { StoryChoice.FromResource("ch6IDatedRebecca", 6004) });
		}

		private static StoryChoiceList Ch6RebeccaPhotographedUs()
		{
			return StoryChoiceList.FromResource("Rebecca-Takes-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch6RebeccaPhotographedUs", 6005) });
		}

		private static StoryChoiceList Ch6WeWentToRestaurant()
		{
			return StoryChoiceList.FromResource("Rebecca-Dates-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch6WeWentToRestaurant", 6006) });
		}

		private static StoryChoiceList Ch6WeAte()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-Eat.png", new IStoryChoice[] { StoryChoice.FromResource("ch6WeAte", 6007) });
		}

		private static StoryChoiceList Ch6IWillCompute()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-Eat.png", new IStoryChoice[] { StoryChoice.FromResource("ch6IWillCompute", 6008) });
		}

		private static StoryChoiceList Ch6RebeccaWillPostPhoto()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-Eat.png", new IStoryChoice[] { StoryChoice.FromResource("ch6RebeccaWillPostPhoto", 6009) });
		}

		private static StoryChoiceList Ch6IKissedRebecca()
		{
			return StoryChoiceList.FromResource("Kaden-Kisses-Rebecca.png", new IStoryChoice[] { StoryChoice.FromResource("ch6IKissedRebecca", 7001) });
		}
	}
}
