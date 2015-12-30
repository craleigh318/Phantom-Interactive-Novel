using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class Chapter5 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{5001, Ch5Title},
			{5002, Ch5BekShtiiWakesMe},
			{5003, Ch5PlanIsRoundabout},
			{5004, Ch5RangersCannotCaptureMe},
			{5005, Ch5IEnterVent},
			{5006, Ch5IExitVent},
			{5007, Ch5IReachSchool},
			{5008, Ch5IPossessElodie},
			{5009, Ch5CarleighWakesMe},
			{5010, Ch5ISearchElodiesMemory},
			{5011, Ch5IDressSlowly},
			{5012, Ch5INodAtCarleigh},
			{5013, Ch5IDressElodie},
			{5014, Ch5IEnterLiteratureClass},
			{5015, Ch5IReadPaulsStory},
			{5016, Ch5WhyDidPaulWantToFitIn},
			{5017, Ch5BadWriting},
			{5018, Ch5PutWhatTeacherWants},
			{5019, Ch5PaulHadNothingUnique},
			{5020, Ch5SureCarleighWrites},
			{5021, Ch5WasPaulJustified},
			{5022, Ch5WhyBeYourself},
			{5023, Ch5SureISay},
			{5024, Ch5YouCannotLowerYourself},
			{5025, Ch5CannotAssociateWithLowlyPeople},
			{5026, Ch5CarleighWasTeased},
			{5027, Ch5IAmPragmatic},
			{5028, Ch5WasActivityTerrible},
			{5029, Ch5WriterThinksKidsAreDumb},
			{5030, Ch5IPassByCheerleader},
			{5031, Ch5CheerleaderTripsMe},
			{5032, Ch5HewittConsolesMe},
			{5033, Ch5CheerleaderIsJealous},
			{5034, Ch5CanIStudyWithCarleigh},
			{5035, Ch5IEnterLibrary},
			{5036, Ch5ISeeCarleighsTextbook},
			{5037, Ch5IPrepareToPossessCarleigh},
			{5038, Ch5IPossessCarleigh},
			{5039, Ch5IExamineCarleigh},
			{5040, Ch5ILeaveLibrary},
			{5041, Ch5WhyIsElodieHere},
			{5042, Ch5ElodieIsExhausted},
			{5043, Ch5ElodieIsDizzy},
			{5044, Ch5IEnterMathClass},
			{5045, Ch5IStartMathTest},
			{5046, Ch5IStartMathTest},
		};

		internal Chapter5() : base(dictionary, 5002)
		{
		}

		private static StoryChoiceList Ch5Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch5Title", 5002) });
		}

		private static StoryChoiceList Ch5BekShtiiWakesMe()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch5BekShtiiWakesMe", 5003) });
		}

		private static StoryChoiceList Ch5PlanIsRoundabout()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PlanIsRoundabout", 5004) });
		}

		private static StoryChoiceList Ch5RangersCannotCaptureMe()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch5RangersCannotCaptureMe", 5005) });
		}

		private static StoryChoiceList Ch5IEnterVent()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Points-at-Vent.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterVent", 5006) });
		}

		private static StoryChoiceList Ch5IExitVent()
		{
			return StoryChoiceList.FromResource("Kaden-Flies-out-of-Vent.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IExitVent", 5007) });
		}

		private static StoryChoiceList Ch5IReachSchool()
		{
			return StoryChoiceList.FromResource("St-Josephine-at-Dawn.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IReachSchool", 5008) });
		}

		private static StoryChoiceList Ch5IPossessElodie()
		{
			return StoryChoiceList.FromResource("Two-Girls-Bedroom-Dark.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPossessElodie", 5009) });
		}

		private static StoryChoiceList Ch5CarleighWakesMe()
		{
			return StoryChoiceList.FromResource("Awaken-as-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighWakesMe", 5010) });
		}

		private static StoryChoiceList Ch5ISearchElodiesMemory()
		{
			return StoryChoiceList.FromResource("Elodie-Pajamas.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ISearchElodiesMemory", 5011) });
		}

		private static StoryChoiceList Ch5IDressSlowly()
		{
			return StoryChoiceList.FromResource("Elodie-and-Carleigh-Pajamas.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDressSlowly", 5012) });
		}

		private static StoryChoiceList Ch5INodAtCarleigh()
		{
			return StoryChoiceList.FromResource("Elodie-and-Carleigh-Pajamas.png", new IStoryChoice[] { StoryChoice.FromResource("ch5INodAtCarleigh", 5013) });
		}

		private static StoryChoiceList Ch5IDressElodie()
		{
			return StoryChoiceList.FromResource("Elodie-Uniform.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDressElodie", 5014) });
		}

		private static StoryChoiceList Ch5IEnterLiteratureClass()
		{
			return StoryChoiceList.FromResource("Elodie-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterLiteratureClass", 5015) });
		}

		private static StoryChoiceList Ch5IReadPaulsStory()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IReadPaulsStory", 5016) });
		}

		private static StoryChoiceList Ch5WhyDidPaulWantToFitIn()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WhyDidPaulWantToFitIn", 5017) });
		}

		private static StoryChoiceList Ch5BadWriting()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5BadWriting", 5018) });
		}

		private static StoryChoiceList Ch5PutWhatTeacherWants()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PutWhatTeacherWants", 5019) });
		}

		private static StoryChoiceList Ch5PaulHadNothingUnique()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PaulHadNothingUnique", 5020) });
		}

		private static StoryChoiceList Ch5SureCarleighWrites()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5SureCarleighWrites", 5021) });
		}

		private static StoryChoiceList Ch5WasPaulJustified()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WasPaulJustified", 5022) });
		}

		private static StoryChoiceList Ch5WhyBeYourself()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WhyBeYourself", 5023) });
		}

		private static StoryChoiceList Ch5SureISay()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5SureISay", 5024) });
		}

		private static StoryChoiceList Ch5YouCannotLowerYourself()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { new YouCannotLowerYourself(), new YouNeedToStayConfident(), new YouAvoidStupidity() });
		}

		private static StoryChoiceList Ch5CannotAssociateWithLowlyPeople()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CannotAssociateWithLowlyPeople", 5028) });
		}

		private static StoryChoiceList Ch5CarleighWasTeased()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighWasTeased", 5028) });
		}

		private static StoryChoiceList Ch5IAmPragmatic()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IAmPragmatic", 5028) });
		}

		private static StoryChoiceList Ch5WasActivityTerrible()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WasActivityTerrible", 5029) });
		}

		private static StoryChoiceList Ch5WriterThinksKidsAreDumb()
		{
			return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WriterThinksKidsAreDumb", 5030) });
		}

		private static StoryChoiceList Ch5IPassByCheerleader()
		{
			return StoryChoiceList.FromResource("Elodie-Passes-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPassByCheerleader", 5031) });
		}

		private static StoryChoiceList Ch5CheerleaderTripsMe()
		{
			return StoryChoiceList.FromResource("Elodie-Trips.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderTripsMe", 5032) });
		}

		private static StoryChoiceList Ch5HewittConsolesMe()
		{
			return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5HewittConsolesMe", 5033) });
		}

		private static StoryChoiceList Ch5CheerleaderIsJealous()
		{
			return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderIsJealous", 5034) });
		}

		private static StoryChoiceList Ch5CanIStudyWithCarleigh()
		{
			return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CanIStudyWithCarleigh", 5035) });
		}

		private static StoryChoiceList Ch5IEnterLibrary()
		{
			return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterLibrary", 5036) });
		}

		private static StoryChoiceList Ch5ISeeCarleighsTextbook()
		{
			return StoryChoiceList.FromResource("Carleigh-Textbook.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ISeeCarleighsTextbook", 5037) });
		}

		private static StoryChoiceList Ch5IPrepareToPossessCarleigh()
		{
			return StoryChoiceList.FromResource("Carleigh-Textbook.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPrepareToPossessCarleigh", 5038) });
		}

		private static StoryChoiceList Ch5IPossessCarleigh()
		{
			return StoryChoiceList.FromResource("Carleigh-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPossessCarleigh", 5039) });
		}

		private static StoryChoiceList Ch5IExamineCarleigh()
		{
			return StoryChoiceList.FromResource("Carleigh-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IExamineCarleigh", 5040) });
		}

		private static StoryChoiceList Ch5ILeaveLibrary()
		{
			return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ILeaveLibrary", 5041) });
		}

		private static StoryChoiceList Ch5WhyIsElodieHere()
		{
			return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WhyIsElodieHere", 5042) });
		}

		private static StoryChoiceList Ch5ElodieIsExhausted()
		{
			return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ElodieIsExhausted", 5043) });
		}

		private static StoryChoiceList Ch5ElodieIsDizzy()
		{
			return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ElodieIsDizzy", 5044) });
		}

		private static StoryChoiceList Ch5IEnterMathClass()
		{
			return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterMathClass", 5045) });
		}

		private static StoryChoiceList Ch5IStartMathTest()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IStartMathTest", 5046) });
		}
	}
}
