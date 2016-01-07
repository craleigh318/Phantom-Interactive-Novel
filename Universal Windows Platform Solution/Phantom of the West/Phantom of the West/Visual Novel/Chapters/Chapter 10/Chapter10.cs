using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_10
{
	internal class Chapter10 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{10001, Ch10Title},
			{10002, Ch10TimeAgo},
			{10003, Ch10WeFinishedDinner},
			{10004, Ch10WhereDoesYukioWork},
			{10005, Ch10ArcticonHiredUs},
			{10006, Ch10CaitlynResearchesMedicine},
			{10007, Ch10JimIsAssistantProf},
			{10008, Ch10WeMissedJim},
			{10009, Ch10CaitlynNoticesRAF},
			{10010, Ch10WhyDoesCaitlynCallMeKadey},
			{10011, Ch10CaitlynLikesToNickname},
			{10012, Ch10IHadNotBeenGoodFriend},
			{10013, Ch10WeHadGottenWellTogether},
			{10014, Ch10WeWentToRAF},
			{10015, Ch10WeExploredRAF},
			{10016, Ch10CaitlynLookedAtAnimals},
			{10017, Ch10CaitlynWantedFerret},
			{10018, Ch10IRejectedFerret},
			{10019, Ch10PleaseCaitlynAsked}
		};

		internal Chapter10() : base(dictionary, 10003)
		{
		}

		private static StoryChoiceList Ch10Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch10Title", 10002) });
		}

		private static StoryChoiceList Ch10TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch10TimeAgo", 10003) });
		}

		private static StoryChoiceList Ch10WeFinishedDinner()
		{
			return StoryChoiceList.FromResource("Kaden-Jim-and-Co.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WeFinishedDinner", 10004) });
		}

		private static StoryChoiceList Ch10WhereDoesYukioWork()
		{
			return StoryChoiceList.FromResource("Kaden-Jim-and-Co.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WhereDoesYukioWork", 10005) });
		}

		private static StoryChoiceList Ch10ArcticonHiredUs()
		{
			return StoryChoiceList.FromResource("Kaden-Jim-and-Co.png", new IStoryChoice[] { StoryChoice.FromResource("ch10ArcticonHiredUs", 10006) });
		}

		private static StoryChoiceList Ch10CaitlynResearchesMedicine()
		{
			return StoryChoiceList.FromResource("Kaden-Jim-and-Co.png", new IStoryChoice[] { StoryChoice.FromResource("ch10CaitlynResearchesMedicine", 10007) });
		}

		private static StoryChoiceList Ch10JimIsAssistantProf()
		{
			return StoryChoiceList.FromResource("Kaden-Jim-and-Co.png", new IStoryChoice[] { StoryChoice.FromResource("ch10JimIsAssistantProf", 10008) });
		}

		private static StoryChoiceList Ch10WeMissedJim()
		{
			return StoryChoiceList.FromResource("Kaden-Jim-and-Co.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WeMissedJim", 10009) });
		}

		private static StoryChoiceList Ch10CaitlynNoticesRAF()
		{
			return StoryChoiceList.FromResource("RAF-Sign-at-Ballroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch10CaitlynNoticesRAF", 10010) });
		}

		private static StoryChoiceList Ch10WhyDoesCaitlynCallMeKadey()
		{
			return StoryChoiceList.FromResource("RAF-Sign-at-Ballroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WhyDoesCaitlynCallMeKadey", 10011) });
		}

		private static StoryChoiceList Ch10CaitlynLikesToNickname()
		{
			return StoryChoiceList.FromResource("RAF-Sign-at-Ballroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch10CaitlynLikesToNickname", 10012) });
		}

		private static StoryChoiceList Ch10IHadNotBeenGoodFriend()
		{
			return StoryChoiceList.FromResource("RAF-Sign-at-Ballroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch10IHadNotBeenGoodFriend", 10013) });
		}

		private static StoryChoiceList Ch10WeHadGottenWellTogether()
		{
			return StoryChoiceList.FromResource("RAF-Sign-at-Ballroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WeHadGottenWellTogether", 10014) });
		}

		private static StoryChoiceList Ch10WeWentToRAF()
		{
			return StoryChoiceList.FromResource("RAF-Sign-at-Ballroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WeWentToRAF", 10015) });
		}

		private static StoryChoiceList Ch10WeExploredRAF()
		{
			return StoryChoiceList.FromResource("RAF-Employee.png", new IStoryChoice[] { StoryChoice.FromResource("ch10WeExploredRAF", 10016) });
		}

		private static StoryChoiceList Ch10CaitlynLookedAtAnimals()
		{
			return StoryChoiceList.FromResource("RAF-Employee.png", new IStoryChoice[] { StoryChoice.FromResource("ch10CaitlynLookedAtAnimals", 10017) });
		}

		private static StoryChoiceList Ch10CaitlynWantedFerret()
		{
			return StoryChoiceList.FromResource("Ballroom-Ferrets.png", new IStoryChoice[] { StoryChoice.FromResource("ch10CaitlynWantedFerret", 10018) });
		}

		private static StoryChoiceList Ch10IRejectedFerret()
		{
			return StoryChoiceList.FromResource("Ballroom-Ferrets.png", new IStoryChoice[] { StoryChoice.FromResource("ch10IRejectedFerret", 10019) });
		}

		private static StoryChoiceList Ch10PleaseCaitlynAsked()
		{
			return StoryChoiceList.FromResource("Ballroom-Ferrets.png", new IStoryChoice[] { StoryChoice.FromResource("ch10PleaseCaitlynAsked", 11001) });
		}
	}
}
