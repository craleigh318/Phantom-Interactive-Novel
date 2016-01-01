using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_8
{
	internal class Chapter8 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{8001, Ch8Title},
			{8002, Ch8TimeAgo},
			{8003, Ch8INeededHelpWithReport},
			{8004, Ch8IMetSarah},
			{8005, Ch8SarahAskedColdly},
			{8006, Ch8DidSarahKnowMe},
			{8007, Ch8OKAndSarahAsked},
			{8008, Ch8IAskedSarahForHelp},
			{8009, Ch8SarahDeclinesHelping},
			{8010, Ch8RebeccaCouldNotHelp},
			{8011, Ch8DidIKnowRebecca},
			{8012, Ch8IDatedRebecca},
			{8013, Ch8SarahAgreedToHelp},
			{8014, Ch8Thanks},
			{8015, Ch8ILookedAtSarahsJournal},
			{8016, Ch8SarahStudiedJournalism},
			{8017, Ch8IWishedSarahLuck},
			{8018, Ch8SarahThankedMe},
		};

		internal Chapter8() : base(dictionary, 8003)
		{
		}

		private static StoryChoiceList Ch8Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch8Title", 8002) });
		}

		private static StoryChoiceList Ch8TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch8TimeAgo", 8003) });
		}

		private static StoryChoiceList Ch8INeededHelpWithReport()
		{
			return StoryChoiceList.FromResource("Kaden-Walks-Around-High-School.png", new IStoryChoice[] { StoryChoice.FromResource("ch8INeededHelpWithReport", 8004) });
		}

		private static StoryChoiceList Ch8IMetSarah()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Down.png", new IStoryChoice[] { StoryChoice.FromResource("ch8IMetSarah", 8005) });
		}

		private static StoryChoiceList Ch8SarahAskedColdly()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8SarahAskedColdly", 8006) });
		}

		private static StoryChoiceList Ch8DidSarahKnowMe()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8DidSarahKnowMe", 8007) });
		}

		private static StoryChoiceList Ch8OKAndSarahAsked()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8OKAndSarahAsked", 8008) });
		}

		private static StoryChoiceList Ch8IAskedSarahForHelp()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8IAskedSarahForHelp", 8009) });
		}

		private static StoryChoiceList Ch8SarahDeclinesHelping()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8SarahDeclinesHelping", 8010) });
		}

		private static StoryChoiceList Ch8RebeccaCouldNotHelp()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8RebeccaCouldNotHelp", 8011) });
		}

		private static StoryChoiceList Ch8DidIKnowRebecca()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8DidIKnowRebecca", 8012) });
		}

		private static StoryChoiceList Ch8IDatedRebecca()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8IDatedRebecca", 8013) });
		}

		private static StoryChoiceList Ch8SarahAgreedToHelp()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8SarahAgreedToHelp", 8014) });
		}

		private static StoryChoiceList Ch8Thanks()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8Thanks", 8015) });
		}

		private static StoryChoiceList Ch8ILookedAtSarahsJournal()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8ILookedAtSarahsJournal", 8016) });
		}

		private static StoryChoiceList Ch8SarahStudiedJournalism()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8SarahStudiedJournalism", 8017) });
		}

		private static StoryChoiceList Ch8IWishedSarahLuck()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8IWishedSarahLuck", 8018) });
		}

		private static StoryChoiceList Ch8SarahThankedMe()
		{
			return StoryChoiceList.FromResource("Young-Sarah-Looks-Up.png", new IStoryChoice[] { StoryChoice.FromResource("ch8SarahThankedMe", 9001) });
		}
	}
}
