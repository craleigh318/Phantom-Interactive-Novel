using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_2
{
	internal class Chapter2 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{2001, Ch2Title},
			{2002, Ch2TimeAgo},
			{2003, Ch2ThereWereFourGods},
			{2004, Ch2ThereWasSezja},
			{2005, Ch2ThereWasBaqer},
			{2006, Ch2ThereWasVaNal},
			{2007, Ch2ThereWasBekShtii},
			{2008, Ch2LectureEnded},
			{2009, Ch2IWentToProfArvin},
			{2010, Ch2IGreetProf},
			{2011, Ch2ProfGreetsMe},
			{2012, Ch2IConfideToProf},
			{2013, Ch2ProfDismissesMe}
		};

		internal Chapter2() : base(dictionary, 2003)
		{
		}

		private static StoryChoiceList Ch2Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch2Title", 2002) });
		}

		private static StoryChoiceList Ch2TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch2TimeAgo", 2003) });
		}

		private static StoryChoiceList Ch2ThereWereFourGods()
		{
			return StoryChoiceList.FromResource("Professor-Lecture.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ThereWereFourGods", 2004) });
		}

		private static StoryChoiceList Ch2ThereWasSezja()
		{
			return StoryChoiceList.FromResource("Sezja-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ThereWasSezja", 2005) });
		}

		private static StoryChoiceList Ch2ThereWasBaqer()
		{
			return StoryChoiceList.FromResource("Baqer-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ThereWasBaqer", 2006) });
		}

		private static StoryChoiceList Ch2ThereWasVaNal()
		{
			return StoryChoiceList.FromResource("Va'Nal-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ThereWasVaNal", 2007) });
		}

		private static StoryChoiceList Ch2ThereWasBekShtii()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ThereWasBekShtii", 2008) });
		}

		private static StoryChoiceList Ch2LectureEnded()
		{
			return StoryChoiceList.FromResource("Kaden-in-Lecture.png", new IStoryChoice[] { StoryChoice.FromResource("ch2LectureEnded", 2009) });
		}

		private static StoryChoiceList Ch2IWentToProfArvin()
		{
			return StoryChoiceList.FromResource("Kaden-Walks-in-School-Hall.png", new IStoryChoice[] { StoryChoice.FromResource("ch2IWentToProfArvin", 2010) });
		}

		private static StoryChoiceList Ch2IGreetProf()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Prof.png", new IStoryChoice[] { StoryChoice.FromResource("ch2IGreetProf", 2011) });
		}

		private static StoryChoiceList Ch2ProfGreetsMe()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Prof.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ProfGreetsMe", 2012) });
		}

		private static StoryChoiceList Ch2IConfideToProf()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Prof.png", new IStoryChoice[] { StoryChoice.FromResource("ch2IConfideToProf", 2013) });
		}

		private static StoryChoiceList Ch2ProfDismissesMe()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Prof.png", new IStoryChoice[] { StoryChoice.FromResource("ch2ProfDismissesMe", 3001) });
		}
	}
}
