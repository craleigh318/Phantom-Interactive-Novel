using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_7
{
	internal class Chapter7 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{7001, Ch7Title},
			{7002, Ch7SleepyHead},
			{7003, Ch7ISnoreAtSezja},
			{7004, Ch7ISnoreAtSezjaPause},
			{7005, Ch7WasSezjaCarleigh},
			{7006, Ch7SezjaFingersChin},
			{7007, Ch7SezjaAsBestFriend},
			{7008, Ch7SezjaHugsMe},
			{7009, Ch7WhyIsSezjaHere},
			{7010, Ch7SezjaStaysWithMe},
			{7011, Ch7CanSezjaActNormal},
			{7012, Ch7IReturnToLiteratureClass},
			{7013, Ch7LostCreditForLoweringSelvesForLiterture},
			{7014, Ch7FullCreditForLiterature},
			{7015, Ch7LostCreditForNotBeingOneselfForLiterature},
			{7016, Ch7LiteratureTeacherIsDrag},
			{7017, Ch7CarleighsGroupCheers},
			{7018, Ch7SezjaIsQuiet},
			{7019, Ch7MorningPasses},
			{7020, Ch7LunchBegins},
			{7021, Ch7IAcceptHangout},
			{7022, Ch7BaqerBurpsAtMe},
			{7023, Ch7BaqerIsJerk},
			{7024, Ch7HewittActsDifferent},
			{7025, Ch7VaNalCallsMe},
			{7026, Ch7BaqerReturns},
			{7027, Ch7BaqerNoticesVaNal},
			{7028, Ch7HewittDoesNotDeserveBaqer},
			{7029, Ch7VaNalDaresToWatchBaqer},
			{7030, Ch7BaqerFollowedMe},
			{7031, Ch7BaqerGrabsMe},
			{7032, Ch7VaNalPullsBaqer},
			{7033, Ch7VaNalSeperatesBaqer},
			{7034, Ch7BaqerFlees},
			{7035, Ch7CanIPossessHewitt},
			{7036, Ch7SureINod},
			{7037, Ch7VaNalPossessesElodie},
			{7038, Ch7WeBuyHam},
			{7039, Ch7WeEatHam},
			{7040, Ch7VaNalIntoducesHerself},
			{7041, Ch7WhyWillIGoToRuins},
			{7042, Ch7GoingWillMakeSense},
			{7043, Ch7SezjaReturns},
			{7044, Ch7SezjaCallsVaNalBestFriend},
			{7045, Ch7SezjaMistakesVaNal},
			{7046, Ch7IAmHere},
			{7047, Ch7SezjaGreetsMeAgain},
			{7048, Ch7CanSezjaGetCarleighsTest},
			{7049, Ch7WhyDoIAskSezja},
			{7050, Ch7ITookCarleighsTest},
			{7051, Ch7SezjaGetsNervousTalking},
			{7052, Ch7IGetCarleighsTest},
			{7053, Ch7IScore10},
			{7054, Ch7IScore9},
			{7055, Ch7IScore8},
			{7056, Ch7IScore7},
			{7057, Ch7AfternoonPasses},
			{7058, Ch7VaNalEntersDorm},
			{7059, Ch7ElodieIsVaNal},
			{7060, Ch7HowDidVaNalEnter},
			{7061, Ch7VaNalPitiesMe},
			{7062, Ch7WhatDoesVaNalMean},
			{7063, Ch7ISeekCompanionship},
			{7064, Ch7VaNalStrokesMe},
			{7065, Ch7KissVaNalDecision},
			{7066, Ch7WhatIsWrong},
			{7067, Ch7WrongAge},
			{7068, Ch7IAmHewitt},
			{7069, Ch7VaNalDisintrestsMe},
			{7070, Ch7VaNalAdmitsDisrespect},
			{7071, Ch7HeartMustBeCared},
			{7072, Ch7OKINod},
			{7073, Ch7VaNalKissesMe},
			{7074, Ch7VaNalLeavesBed},
			{7075, Ch7GodsWillDispossess},
			{7076, Ch7VaNalLeavesDorm},
			{7077, Ch7ISleep}
		};

		internal Chapter7() : base(dictionary, 7002)
		{
		}

		private static StoryChoiceList Ch7Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch7Title", 7002) });
		}

		private static StoryChoiceList Ch7SleepyHead()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SleepyHead", 7003) });
		}

		private static StoryChoiceList Ch7ISnoreAtSezja()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch7ISnoreAtSezja", 7004) });
		}

		private static StoryChoiceList Ch7ISnoreAtSezjaPause()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ellipsis", 7005) });
		}

		private static StoryChoiceList Ch7WasSezjaCarleigh()
		{
			return StoryChoiceList.FromResource("Sezja-Wakes-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WasSezjaCarleigh", 7006) });
		}

		private static StoryChoiceList Ch7SezjaFingersChin()
		{
			return StoryChoiceList.FromResource("Sezja-Fingers-Carleigh-Chin.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaFingersChin", 7007) });
		}

		private static StoryChoiceList Ch7SezjaAsBestFriend()
		{
			return StoryChoiceList.FromResource("Sezja-Fingers-Carleigh-Chin.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaAsBestFriend", 7008) });
		}

		private static StoryChoiceList Ch7SezjaHugsMe()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaHugsMe", 7009) });
		}

		private static StoryChoiceList Ch7WhyIsSezjaHere()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WhyIsSezjaHere", 7010) });
		}

		private static StoryChoiceList Ch7SezjaStaysWithMe()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaStaysWithMe", 7011) });
		}

		private static StoryChoiceList Ch7CanSezjaActNormal()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7CanSezjaActNormal", 7012) });
		}

		private static StoryChoiceList Ch7IReturnToLiteratureClass()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			LiteratureStoryAnswer answer = flags.Ch5AnsweredLiteratureStory;
			switch (answer)
			{
				case LiteratureStoryAnswer.PlayToStrengths:
					nextState = 7013;
					break;
				case LiteratureStoryAnswer.AvoidStupidity:
					nextState = 7015;
					break;
				default:
					nextState = 7014;
					break;
			}
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IReturnToLiteratureClass", nextState) });
		}

		private static StoryChoiceList Ch7LostCreditForLoweringSelvesForLiterture()
		{
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7LostCreditForLoweringSelvesForLiterture", 7016) });
		}

		private static StoryChoiceList Ch7FullCreditForLiterature()
		{
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7FullCreditForLiterature", 7017) });
		}

		private static StoryChoiceList Ch7LostCreditForNotBeingOneselfForLiterature()
		{
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7LostCreditForNotBeingOneselfForLiterature", 7016) });
		}

		private static StoryChoiceList Ch7LiteratureTeacherIsDrag()
		{
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7LiteratureTeacherIsDrag", 7018) });
		}

		private static StoryChoiceList Ch7CarleighsGroupCheers()
		{
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7CarleighsGroupCheers", 7018) });
		}

		private static StoryChoiceList Ch7SezjaIsQuiet()
		{
			return StoryChoiceList.FromResource("Literature-Results.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaIsQuiet", 7019) });
		}

		private static StoryChoiceList Ch7MorningPasses()
		{
			return StoryChoiceList.FromResource("Elodie-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch7MorningPasses", 7020) });
		}

		private static StoryChoiceList Ch7LunchBegins()
		{
			return StoryChoiceList.FromResource("Elodie-Second-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7LunchBegins", 7021) });
		}

		private static StoryChoiceList Ch7IAcceptHangout()
		{
			return StoryChoiceList.FromResource("Elodie-Second-Lunch.png", new IStoryChoice[] { new IAcceptHangout(), new IDeclineHangout() });
		}

		private static StoryChoiceList Ch7BaqerBurpsAtMe()
		{
			return StoryChoiceList.FromResource("Hewitt-Burps.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerBurpsAtMe", 7023) });
		}

		private static StoryChoiceList Ch7BaqerIsJerk()
		{
			return StoryChoiceList.FromResource("Elodie-Angry.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerIsJerk", 7024) });
		}

		private static StoryChoiceList Ch7HewittActsDifferent()
		{
			return StoryChoiceList.FromResource("Elodie-Leaves-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7HewittActsDifferent", 7025) });
		}

		private static StoryChoiceList Ch7VaNalCallsMe()
		{
			return StoryChoiceList.FromResource("Elodie-Leaves-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalCallsMe", 7026) });
		}

		private static StoryChoiceList Ch7BaqerReturns()
		{
			return StoryChoiceList.FromResource("Elodie-Meets-Va'Nal.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerReturns", 7027) });
		}

		private static StoryChoiceList Ch7BaqerNoticesVaNal()
		{
			return StoryChoiceList.FromResource("Va'Nal-Berates-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerNoticesVaNal", 7028) });
		}

		private static StoryChoiceList Ch7HewittDoesNotDeserveBaqer()
		{
			return StoryChoiceList.FromResource("Va'Nal-Berates-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch7HewittDoesNotDeserveBaqer", 7029) });
		}

		private static StoryChoiceList Ch7VaNalDaresToWatchBaqer()
		{
			return StoryChoiceList.FromResource("Va'Nal-Berates-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalDaresToWatchBaqer", 7030) });
		}

		private static StoryChoiceList Ch7BaqerFollowedMe()
		{
			return StoryChoiceList.FromResource("Va'Nal-Berates-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerFollowedMe", 7031) });
		}

		private static StoryChoiceList Ch7BaqerGrabsMe()
		{
			return StoryChoiceList.FromResource("Baqer-Grabs-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerGrabsMe", 7032) });
		}

		private static StoryChoiceList Ch7VaNalPullsBaqer()
		{
			return StoryChoiceList.FromResource("Va'Nal-Pulls-Baqer-from-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalPullsBaqer", 7033) });
		}

		private static StoryChoiceList Ch7VaNalSeperatesBaqer()
		{
			return StoryChoiceList.FromResource("Baqer-Dispossess-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalSeperatesBaqer", 7034) });
		}

		private static StoryChoiceList Ch7BaqerFlees()
		{
			return StoryChoiceList.FromResource("Baqer-Dispossess-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7BaqerFlees", 7035) });
		}

		private static StoryChoiceList Ch7CanIPossessHewitt()
		{
			return StoryChoiceList.FromResource("Va'Nal-Consoles-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7CanIPossessHewitt", 7036) });
		}

		private static StoryChoiceList Ch7SureINod()
		{
			return StoryChoiceList.FromResource("Va'Nal-Consoles-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SureINod", 7037) });
		}

		private static StoryChoiceList Ch7VaNalPossessesElodie()
		{
			return StoryChoiceList.FromResource("Kaden-Possesses-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalPossessesElodie", 7038) });
		}

		private static StoryChoiceList Ch7WeBuyHam()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Elodie-Hold-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WeBuyHam", 7039) });
		}

		private static StoryChoiceList Ch7WeEatHam()
		{
			return StoryChoiceList.FromResource("Hewitt-Second-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WeEatHam", 7040) });
		}

		private static StoryChoiceList Ch7VaNalIntoducesHerself()
		{
			return StoryChoiceList.FromResource("Hewitt-Second-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalIntoducesHerself", 7041) });
		}

		private static StoryChoiceList Ch7WhyWillIGoToRuins()
		{
			return StoryChoiceList.FromResource("Hewitt-Second-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WhyWillIGoToRuins", 7042) });
		}

		private static StoryChoiceList Ch7GoingWillMakeSense()
		{
			return StoryChoiceList.FromResource("Hewitt-Second-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7GoingWillMakeSense", 7043) });
		}

		private static StoryChoiceList Ch7SezjaReturns()
		{
			return StoryChoiceList.FromResource("Sezja-Comes-to-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaReturns", 7044) });
		}

		private static StoryChoiceList Ch7SezjaCallsVaNalBestFriend()
		{
			return StoryChoiceList.FromResource("Sezja-Comes-to-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaCallsVaNalBestFriend", 7045) });
		}

		private static StoryChoiceList Ch7SezjaMistakesVaNal()
		{
			return StoryChoiceList.FromResource("Sezja-Comes-to-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaMistakesVaNal", 7046) });
		}

		private static StoryChoiceList Ch7IAmHere()
		{
			return StoryChoiceList.FromResource("Sezja-Comes-to-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IAmHere", 7047) });
		}

		private static StoryChoiceList Ch7SezjaGreetsMeAgain()
		{
			return StoryChoiceList.FromResource("Sezja-Gasps-at-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaGreetsMeAgain", 7048) });
		}

		private static StoryChoiceList Ch7CanSezjaGetCarleighsTest()
		{
			return StoryChoiceList.FromResource("Sezja-Gasps-at-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7CanSezjaGetCarleighsTest", 7049) });
		}

		private static StoryChoiceList Ch7WhyDoIAskSezja()
		{
			return StoryChoiceList.FromResource("Sezja-Gasps-at-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WhyDoIAskSezja", 7050) });
		}

		private static StoryChoiceList Ch7ITookCarleighsTest()
		{
			return StoryChoiceList.FromResource("Sezja-Gasps-at-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7ITookCarleighsTest", 7051) });
		}

		private static StoryChoiceList Ch7SezjaGetsNervousTalking()
		{
			return StoryChoiceList.FromResource("Sezja-Gasps-at-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch7SezjaGetsNervousTalking", 7052) });
		}

		private static StoryChoiceList Ch7IGetCarleighsTest()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			int score = flags.Ch5NumCorrectMathAnswers;
			if (score >= 3)
			{
				nextState = 7053;
			}
			else if (score == 2)
			{
				nextState = 7054;
			}
			else if (score == 1)
			{
				nextState = 7055;
			}
			else
			{
				nextState = 7056;
			}
			return StoryChoiceList.FromResource("Carleigh-Gets-Math-Grade.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IGetCarleighsTest", nextState) });
		}

		private static StoryChoiceList Ch7IScore10()
		{
			return StoryChoiceList.FromResource("Carleigh-Gets-Math-Grade.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IScore10", 7057) });
		}

		private static StoryChoiceList Ch7IScore9()
		{
			return StoryChoiceList.FromResource("Carleigh-Gets-Math-Grade.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IScore9", 7057) });
		}

		private static StoryChoiceList Ch7IScore8()
		{
			return StoryChoiceList.FromResource("Carleigh-Gets-Math-Grade.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IScore8", 7057) });
		}

		private static StoryChoiceList Ch7IScore7()
		{
			return StoryChoiceList.FromResource("Carleigh-Gets-Math-Grade.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IScore7", 7057) });
		}

		private static StoryChoiceList Ch7AfternoonPasses()
		{
			return StoryChoiceList.FromResource("Hewitt-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch7AfternoonPasses", 7058) });
		}

		private static StoryChoiceList Ch7VaNalEntersDorm()
		{
			return StoryChoiceList.FromResource("Va'Nal-Enters-Bedroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalEntersDorm", 7059) });
		}

		private static StoryChoiceList Ch7ElodieIsVaNal()
		{
			return StoryChoiceList.FromResource("Va'Nal-Enters-Bedroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch7ElodieIsVaNal", 7060) });
		}

		private static StoryChoiceList Ch7HowDidVaNalEnter()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7HowDidVaNalEnter", 7061) });
		}

		private static StoryChoiceList Ch7VaNalPitiesMe()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalPitiesMe", 7062) });
		}

		private static StoryChoiceList Ch7WhatDoesVaNalMean()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WhatDoesVaNalMean", 7063) });
		}

		private static StoryChoiceList Ch7ISeekCompanionship()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7ISeekCompanionship", 7064) });
		}

		private static StoryChoiceList Ch7VaNalStrokesMe()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalStrokesMe", 7065) });
		}

		private static StoryChoiceList Ch7KissVaNalDecision()
		{
			List<IStoryChoice> nextPages = new List<IStoryChoice>();
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			nextPages.Add(new IDoNotKissVaNal());
			if (flags.StoryRoute == Route.Phantom)
			{
				nextPages.Add(new IWillKissVaNal());
			}
			StoryChoiceList newList = StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", nextPages);
			return newList;
		}

		private static StoryChoiceList Ch7WhatIsWrong()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WhatIsWrong", 7067) });
		}

		private static StoryChoiceList Ch7WrongAge()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7WrongAge", 7068) });
		}

		private static StoryChoiceList Ch7IAmHewitt()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7IAmHewitt", 7069) });
		}

		private static StoryChoiceList Ch7VaNalDisintrestsMe()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalDisintrestsMe", 7070) });
		}

		private static StoryChoiceList Ch7VaNalAdmitsDisrespect()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalAdmitsDisrespect", 7075) });
		}

		private static StoryChoiceList Ch7HeartMustBeCared()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7HeartMustBeCared", 7072) });
		}

		private static StoryChoiceList Ch7OKINod()
		{
			return StoryChoiceList.FromResource("Elodie-by-Hewitt-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch7OKINod", 7073) });
		}

		private static StoryChoiceList Ch7VaNalKissesMe()
		{
			return StoryChoiceList.FromResource("Elodie-Kisses-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalKissesMe", 7074) });
		}

		private static StoryChoiceList Ch7VaNalLeavesBed()
		{
			return StoryChoiceList.FromResource("Elodie-Kisses-Hewitt.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalLeavesBed", 7075) });
		}

		private static StoryChoiceList Ch7GodsWillDispossess()
		{
			return StoryChoiceList.FromResource("Va'Nal-Leaves-Bedroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch7GodsWillDispossess", 7076) });
		}

		private static StoryChoiceList Ch7VaNalLeavesDorm()
		{
			return StoryChoiceList.FromResource("Va'Nal-Leaves-Bedroom.png", new IStoryChoice[] { StoryChoice.FromResource("ch7VaNalLeavesDorm", 7077) });
		}

		private static StoryChoiceList Ch7ISleep()
		{
			return StoryChoiceList.FromResource("Hewitt-Sleeps.png", new IStoryChoice[] { StoryChoice.FromResource("ch7ISleep", 8001) });
		}
	}
}
