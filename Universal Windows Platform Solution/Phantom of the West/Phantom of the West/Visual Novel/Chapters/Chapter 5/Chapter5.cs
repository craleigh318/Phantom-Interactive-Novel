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
			{5046, Ch5MathQuestion1},
			{5047, Ch5MathQuestion1Answer},
			{5048, Ch5MathQuestion4},
			{5049, Ch5MathQuestion4Answer},
			{5050, Ch5MathQuestion9},
			{5051, Ch5MathQuestion9Answer},
			{5052, Ch5MathClassEnds},
			{5053, Ch5IReencounterCheerleader},
			{5054, Ch5IEnterLockerRoom},
			{5055, Ch5IPossessAnanya},
			{5056, Ch5IDressAnanya},
			{5057, Ch5ITieAnanyasHair},
			{5058, Ch5IEnterPEClass},
			{5059, Ch5CoachLectures},
			{5060, Ch5IRaiseHand},
			{5061, Ch5IWouldSubmit},
			{5062, Ch5CoachRespondsToSubmission},
			{5063, Ch5CoachRespondsToRunning},
			{5064, Ch5CoachRespondsToDisarming},
			{5065, Ch5IDisagreeWithCoach},
			{5066, Ch5CoachStartsSpar},
			{5067, Ch5IPartnerWithCheerleader},
			{5068, Ch5CheerleaderAndISpar},
			{5069, Ch5IPinCheerleader},
			{5070, Ch5CoachCheersMe},
			{5071, Ch5CheerleaderFalls},
			{5072, Ch5IBringCoachToCheerleader},
			{5073, Ch5CoachAsksWhatHappened},
			{5074, Ch5CheerleaderIsBruised},
			{5075, Ch5IApologizeToCheerleader},
			{5076, Ch5CoachTellsMeToBeCareful},
			{5077, Ch5INodAtCoach},
			{5078, Ch5PEClassEnds},
			{5079, Ch5IDispossessAnanya},
			{5080, Ch5IHideInTheCloset},
			{5081, Ch5IRepossessElodie},
			{5082, Ch5IRelax},
			{5083, Ch5ICallCaitlyn},
			{5084, Ch5IGreetCaitlyn},
			{5085, Ch5AmIOK},
			{5086, Ch5ITellCaitlynAboutSchool},
			{5087, Ch5CaitlynOffersToDrive},
			{5088, Ch5IDeclineCaitlynsOffer},
			{5089, Ch5OK},
			{5090, Ch5YukioWantsToTalk},
			{5091, Ch5YukioGreetsMe},
			{5092, Ch5IGreetYukio},
			{5093, Ch5YukioDislikesMeGettingFreshAir},
			{5094, Ch5IWillCallSupervisor},
			{5095, Ch5IAmApathetic},
			{5096, Ch5IApologizeToYukio},
			{5097, Ch5YukioDismissesMe},
			{5098, Ch5YukioIsWrong},
			{5099, Ch5IThinkTooLong},
			{5100, Ch5CarleighReturns},
			{5101, Ch5HowWasCarleighsMath},
			{5102, Ch5CarleighForgets},
			{5103, Ch5CarleighWillBeStar},
			{5104, Ch5ElodieCanBeCool},
			{5105, Ch5CarleighAndILaugh},
			{5106, Ch5HewittCallsMe},
			{5107, Ch5IGreetHewitt},
			{5108, Ch5CanIHangOutWithHewitt},
			{5109, Ch5IMightHangOutWithHewitt},
			{5110, Ch5ISleep}
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

		private static StoryChoiceList Ch5MathQuestion1()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathQuestion1", 5047) });
		}

		private static StoryChoiceList Ch5MathQuestion1Answer()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { new MathQuestion1CorrectAnswer(), new MathQuestion1IncorrectAnswer() });
		}

		private static StoryChoiceList Ch5MathQuestion4()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathQuestion4", 5049) });
		}

		private static StoryChoiceList Ch5MathQuestion4Answer()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { new MathQuestion4IncorrectAnswer(), new MathQuestion4CorrectAnswer() });
		}

		private static StoryChoiceList Ch5MathQuestion9()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathQuestion9", 5051) });
		}

		private static StoryChoiceList Ch5MathQuestion9Answer()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { new MathQuestion9IncorrectAnswer(), new MathQuestion9CorrectAnswer() });
		}

		private static StoryChoiceList Ch5MathClassEnds()
		{
			return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathClassEnds", 5053) });
		}

		private static StoryChoiceList Ch5IReencounterCheerleader()
		{
			return StoryChoiceList.FromResource("Carleigh-Passes-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IReencounterCheerleader", 5054) });
		}

		private static StoryChoiceList Ch5IEnterLockerRoom()
		{
			return StoryChoiceList.FromResource("Ananya-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterLockerRoom", 5055) });
		}

		private static StoryChoiceList Ch5IPossessAnanya()
		{
			return StoryChoiceList.FromResource("Ananya-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPossessAnanya", 5056) });
		}

		private static StoryChoiceList Ch5IDressAnanya()
		{
			return StoryChoiceList.FromResource("Ananya-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDressAnanya", 5057) });
		}

		private static StoryChoiceList Ch5ITieAnanyasHair()
		{
			return StoryChoiceList.FromResource("Ananya-Ties-Hair.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ITieAnanyasHair", 5058) });
		}

		private static StoryChoiceList Ch5IEnterPEClass()
		{
			return StoryChoiceList.FromResource("Ananya-Gym-Attendance.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterPEClass", 5059) });
		}

		private static StoryChoiceList Ch5CoachLectures()
		{
			return StoryChoiceList.FromResource("Ananya-Gym-Attendance.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachLectures", 5060) });
		}

		private static StoryChoiceList Ch5IRaiseHand()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IRaiseHand", 5061) });
		}

		private static StoryChoiceList Ch5IWouldSubmit()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { new IWouldSubmit(), new IWouldRun(), new IWouldDisarm() });
		}

		private static StoryChoiceList Ch5CoachRespondsToSubmission()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachRespondsToSubmission", 5066) });
		}

		private static StoryChoiceList Ch5CoachRespondsToRunning()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachRespondsToRunning", 5065) });
		}

		private static StoryChoiceList Ch5CoachRespondsToDisarming()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachRespondsToDisarming", 5065) });
		}

		private static StoryChoiceList Ch5IDisagreeWithCoach()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDisagreeWithCoach", 5066) });
		}

		private static StoryChoiceList Ch5CoachStartsSpar()
		{
			return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachStartsSpar", 5067) });
		}

		private static StoryChoiceList Ch5IPartnerWithCheerleader()
		{
			return StoryChoiceList.FromResource("Ananya-Spar.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPartnerWithCheerleader", 5068) });
		}

		private static StoryChoiceList Ch5CheerleaderAndISpar()
		{
			return StoryChoiceList.FromResource("Ananya-Spar.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderAndISpar", 5069) });
		}

		private static StoryChoiceList Ch5IPinCheerleader()
		{
			return StoryChoiceList.FromResource("Ananya-Spar.png", new IStoryChoice[] { new IPinCheerleader(), new IKickCheerleader() });
		}

		private static StoryChoiceList Ch5CoachCheersMe()
		{
			return StoryChoiceList.FromResource("Ananya-Pins-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachCheersMe", 5078) });
		}

		private static StoryChoiceList Ch5CheerleaderFalls()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderFalls", 5072) });
		}

		private static StoryChoiceList Ch5IBringCoachToCheerleader()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IBringCoachToCheerleader", 5073) });
		}

		private static StoryChoiceList Ch5CoachAsksWhatHappened()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachAsksWhatHappened", 5074) });
		}

		private static StoryChoiceList Ch5CheerleaderIsBruised()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderIsBruised", 5075) });
		}

		private static StoryChoiceList Ch5IApologizeToCheerleader()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IApologizeToCheerleader", 5076) });
		}

		private static StoryChoiceList Ch5CoachTellsMeToBeCareful()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachTellsMeToBeCareful", 5077) });
		}

		private static StoryChoiceList Ch5INodAtCoach()
		{
			return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5INodAtCoach", 5078) });
		}

		private static StoryChoiceList Ch5PEClassEnds()
		{
			return StoryChoiceList.FromResource("Dorms-First-Afternoon.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PEClassEnds", 5079) });
		}

		private static StoryChoiceList Ch5IDispossessAnanya()
		{
			return StoryChoiceList.FromResource("Dorms-First-Afternoon.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDispossessAnanya", 5080) });
		}

		private static StoryChoiceList Ch5IHideInTheCloset()
		{
			return StoryChoiceList.FromResource("Phantom-in-Closet.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IHideInTheCloset", 5081) });
		}

		private static StoryChoiceList Ch5IRepossessElodie()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IRepossessElodie", 5082) });
		}

		private static StoryChoiceList Ch5IRelax()
		{
			return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IRelax", 5083) });
		}

		private static StoryChoiceList Ch5ICallCaitlyn()
		{
			return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ICallCaitlyn", 5084) });
		}

		private static StoryChoiceList Ch5IGreetCaitlyn()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IGreetCaitlyn", 5085) });
		}

		private static StoryChoiceList Ch5AmIOK()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5AmIOK", 5086) });
		}

		private static StoryChoiceList Ch5ITellCaitlynAboutSchool()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ITellCaitlynAboutSchool", 5087) });
		}

		private static StoryChoiceList Ch5CaitlynOffersToDrive()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CaitlynOffersToDrive", 5088) });
		}

		private static StoryChoiceList Ch5IDeclineCaitlynsOffer()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDeclineCaitlynsOffer", 5089) });
		}

		private static StoryChoiceList Ch5OK()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5OK", 5090) });
		}

		private static StoryChoiceList Ch5YukioWantsToTalk()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioWantsToTalk", 5091) });
		}

		private static StoryChoiceList Ch5YukioGreetsMe()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioGreetsMe", 5092) });
		}

		private static StoryChoiceList Ch5IGreetYukio()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IGreetYukio", 5093) });
		}

		private static StoryChoiceList Ch5YukioDislikesMeGettingFreshAir()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioDislikesMeGettingFreshAir", 5094) });
		}

		private static StoryChoiceList Ch5IWillCallSupervisor()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IWillCallSupervisor", 5095) });
		}

		private static StoryChoiceList Ch5IAmApathetic()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IAmApathetic", 5096) });
		}

		private static StoryChoiceList Ch5IApologizeToYukio()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IApologizeToYukio", 5097) });
		}

		private static StoryChoiceList Ch5YukioDismissesMe()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioDismissesMe", 5098) });
		}

		private static StoryChoiceList Ch5YukioIsWrong()
		{
			return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioIsWrong", 5099) });
		}

		private static StoryChoiceList Ch5IThinkTooLong()
		{
			return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IThinkTooLong", 5100) });
		}

		private static StoryChoiceList Ch5CarleighReturns()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighReturns", 5101) });
		}

		private static StoryChoiceList Ch5HowWasCarleighsMath()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5HowWasCarleighsMath", 5102) });
		}

		private static StoryChoiceList Ch5CarleighForgets()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighForgets", 5103) });
		}

		private static StoryChoiceList Ch5CarleighWillBeStar()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighWillBeStar", 5104) });
		}

		private static StoryChoiceList Ch5ElodieCanBeCool()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ElodieCanBeCool", 5105) });
		}

		private static StoryChoiceList Ch5CarleighAndILaugh()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighAndILaugh", 5106) });
		}

		private static StoryChoiceList Ch5HewittCallsMe()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5HewittCallsMe", 5107) });
		}

		private static StoryChoiceList Ch5IGreetHewitt()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IGreetHewitt", 5108) });
		}

		private static StoryChoiceList Ch5CanIHangOutWithHewitt()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CanIHangOutWithHewitt", 5109) });
		}

		private static StoryChoiceList Ch5IMightHangOutWithHewitt()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IMightHangOutWithHewitt", 5110) });
		}

		private static StoryChoiceList Ch5ISleep()
		{
			return StoryChoiceList.FromResource("Resting-Elodie-Night.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ISleep", 6001) });
		}
	}
}
