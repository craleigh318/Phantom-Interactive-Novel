using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_17
{
	internal class Chapter17 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{17001, Ch17Title},
			{17002, Ch17IOpenEyes},
			{17003, Ch17IAmOnMainAve},
			{17004, Ch17RainStops},
			{17005, Ch17AveIsEmpty},
			{17006, Ch17DrKaden},
			{17007, Ch17VaNalIsBehindMe},
			{17008, Ch17DoITrulyKnowVaNal},
			{17009, Ch17IKnowVaNal},
			{17010, Ch17INeglectedVaNal},
			{17011, Ch17IAssumedEmpathyVaNal},
			{17012, Ch17ILostTrustVaNal},
			{17013, Ch17IShouldHaveCared},
			{17014, Ch17VaNalAsksWereYou},
			{17015, Ch17RebeccaWantsMeToAcceptVaNal},
			{17016, Ch17VaNalHoldsHands},
			{17017, Ch17ILeanIntoVaNal},
			{17018, Ch17VaNalAbsorbsMe},
			{17019, Ch17IMergedWithVaNal},
			{17020, Ch17VaNalsSkinChanges},
			{17021, Ch17IWalkToShop},
			{17022, Ch17IExamineVaNal},
			{17023, Ch17HelicoptersFlyAbove},
			{17024, Ch17IClimbBuildingAsVaNal},
			{17025, Ch17HelicoptersFlyToCamp},
			{17026, Ch17IOverlookCamp},
			{17027, Ch17SavedCitizensMakesMeHappy},
			{17028, Ch17ISeemPleasant},
			{17029, Ch17OtherGodsBehindMe},
			{17030, Ch17IJoinKinship},
			{17031, Ch17SezjaLovesMe},
			{17032, Ch17SezjaHugsMe},
			{17033, Ch17HeartyFeast},
			{17034, Ch17LetUsEat},
			{17035, Ch17IExamineMyselfAsPhantom},
			{17036, Ch17BekShtiiIsBehindMe},
			{17037, Ch17DoITrulyKnowBekShtii},
			{17038, Ch17IKnowBekShtii},
			{17039, Ch17IHeldBekShtii},
			{17040, Ch17IAssumedEmpathyBekShtii},
			{17041, Ch17ILostTrustBekShtii},
			{17042, Ch17IShouldHaveWorriedAboutMyself},
			{17043, Ch17BekShtiiAsksShouldYou},
			{17044, Ch17RebeccaWantsMeToReleaseBekShtii},
			{17045, Ch17BekShtiiGivesMeDagger},
			{17046, Ch17IStabBekShtii},
			{17047, Ch17BekShtiiBleeds},
			{17048, Ch17IAbsorbBekShtii},
			{17049, Ch17IShake},
			{17050, Ch17IKnowWhatToDo},
			{17051, Ch17IShootTentacles},
			{17052, Ch17TentaclesRise},
			{17053, Ch17TheyPossessCitizens},
			{17054, Ch17Hundreds},
			{17055, Ch17Thousands},
			{17056, Ch17TenThousands},
			{17057, Ch17HundredThousands},
			{17058, Ch17IReadEveryone},
			{17059, Ch17WeMarchIntoCity},
			{17060, Ch17WeRestoreCity},
			{17061, Ch17WeExtinguishFire},
			{17062, Ch17WeDrainFlood},
			{17063, Ch17WeRepairBuildings},
			{17064, Ch17WeCelebrate},
			{17065, Ch17IExamineMyRealSelf},
			{17066, Ch17PhantomFirstDefinition},
			{17067, Ch17PhantomSecondDefinition},
			{17068, Ch17IAssumedEmpathySelf},
			{17069, Ch17ILostTrustSelf},
			{17070, Ch17WhyICreatedTheGods},
			{17071, Ch17ICanStillLove},
			{17072, Ch17IGrabMyHood},
			{17073, Ch17ILowerMyHood},
			{17074, Ch17ThisIsRealMe},
			{17075, Ch17IClimbToSeeHotel},
			{17076, Ch17IGoToHotel},
			{17077, Ch17HotelFloods},
			{17078, Ch17ManShovesLady},
			{17079, Ch17CaitlynKneels},
			{17080, Ch17IGoToCaitlyn},
			{17081, Ch17YukioComes},
			{17082, Ch17TideApproachesCaitlyn},
			{17083, Ch17ISaveCaitlyn},
			{17084, Ch17CaitlynAsksAboutFlood},
			{17085, Ch17ComplicatedCaitlyn},
			{17086, Ch17YukioSurprised},
			{17087, Ch17SarahKneels},
			{17088, Ch17IGoToSarah},
			{17089, Ch17TideApproachesSarah},
			{17090, Ch17ISaveSarah},
			{17091, Ch17SarahAsksAboutMe},
			{17092, Ch17ComplicatedSarah},
			{17093, Ch17SarahAsksWhy},
			{17094, Ch17IAmPhantom},
			{17095, Ch17LotToTakeIn},
			{17096, Ch17WeReachCamp},
			{17097, Ch17CaitlynPullsMe},
			{17098, Ch17WhyDidCaitlynPullMe},
			{17099, Ch17WhatIsItCaitlyn},
			{17100, Ch17CaitlynKnowsMeForYears},
			{17101, Ch17IKnowCaitlynLeadsMe},
			{17102, Ch17CaitlynWantsToBeClose},
			{17103, Ch17NoObjectionCaitlyn},
			{17104, Ch17CaitlynStaresAtMe},
			{17105, Ch17WeKiss},
			{17106, Ch17IPullSarah},
			{17107, Ch17IExplainToSarah},
			{17108, Ch17DidIPossessSarah},
			{17109, Ch17ThatIsCorrect},
			{17110, Ch17WhyDidIPossessSarah},
			{17111, Ch17IWantedSarahToUnderstand},
			{17112, Ch17MyPowersAreNew},
			{17113, Ch17SarahUnsure},
			{17114, Ch17DidSarahAttendReunion},
			{17115, Ch17YeahSarahDid},
			{17116, Ch17ThatIsGood},
			{17117, Ch17IAmNotBad},
			{17118, Ch17ThanksEmbarrassed},
			{17119, Ch17SarahAndIWillRoom},
			{17120, Ch17IdLoveTo}
		};

		internal Chapter17() : base(dictionary, 17002)
		{
		}

		private static StoryChoiceList Ch17Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch17Title", 17002) });
		}

		private static StoryChoiceList Ch17IOpenEyes()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Present.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IOpenEyes", 17003) });
		}

		private static StoryChoiceList Ch17IAmOnMainAve()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Present.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAmOnMainAve", 17004) });
		}

		private static StoryChoiceList Ch17RainStops()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Present.png", new IStoryChoice[] { StoryChoice.FromResource("ch17RainStops", 17005) });
		}

		private static StoryChoiceList Ch17AveIsEmpty()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			Route route = flags.StoryRoute;
			if (route == Route.VaNal)
			{
				nextState = 17006;
			}
			else
			{
				nextState = 17021;
			}
			return StoryChoiceList.FromResource("Main-Avenue-Present.png", new IStoryChoice[] { StoryChoice.FromResource("ch17AveIsEmpty", nextState) });
		}

		private static StoryChoiceList Ch17DrKaden()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Present.png", new IStoryChoice[] { StoryChoice.FromResource("ch17DrKaden", 17007) });
		}

		private static StoryChoiceList Ch17VaNalIsBehindMe()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17VaNalIsBehindMe", 17008) });
		}

		private static StoryChoiceList Ch17DoITrulyKnowVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17DoITrulyKnowVaNal", 17009) });
		}

		private static StoryChoiceList Ch17IKnowVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IKnowVaNal", 17010) });
		}

		private static StoryChoiceList Ch17INeglectedVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17INeglectedVaNal", 17011) });
		}

		private static StoryChoiceList Ch17IAssumedEmpathyVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAssumedEmpathyVaNal", 17012) });
		}

		private static StoryChoiceList Ch17ILostTrustVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ILostTrustVaNal", 17013) });
		}

		private static StoryChoiceList Ch17IShouldHaveCared()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IShouldHaveCared", 17014) });
		}

		private static StoryChoiceList Ch17VaNalAsksWereYou()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17VaNalAsksWereYou", 17015) });
		}

		private static StoryChoiceList Ch17RebeccaWantsMeToAcceptVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17RebeccaWantsMeToAcceptVaNal", 17016) });
		}

		private static StoryChoiceList Ch17VaNalHoldsHands()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Holds-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch17VaNalHoldsHands", 17017) });
		}

		private static StoryChoiceList Ch17ILeanIntoVaNal()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Va'Nal-Holds-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ILeanIntoVaNal", 17018) });
		}

		private static StoryChoiceList Ch17VaNalAbsorbsMe()
		{
			return StoryChoiceList.FromResource("Kaden-Possesses-Va'Nal.png", new IStoryChoice[] { StoryChoice.FromResource("ch17VaNalAbsorbsMe", 17019) });
		}

		private static StoryChoiceList Ch17IMergedWithVaNal()
		{
			return StoryChoiceList.FromResource("Va'Nal-Hands-Green.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IMergedWithVaNal", 17020) });
		}

		private static StoryChoiceList Ch17VaNalsSkinChanges()
		{
			return StoryChoiceList.FromResource("Va'Nal-Hands-Brown.png", new IStoryChoice[] { StoryChoice.FromResource("ch17VaNalsSkinChanges", 17021) });
		}

		private static StoryChoiceList Ch17IWalkToShop()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			Route route = flags.StoryRoute;
			switch (route)
			{
				case Route.VaNal:
					nextState = 17022;
					break;
				case Route.Phantom:
					nextState = 17035;
					break;
				default:
					nextState = 17065;
					break;
			}
			return StoryChoiceList.FromResource("Shop-Storefront.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IWalkToShop", nextState) });
		}

		private static StoryChoiceList Ch17IExamineVaNal()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IExamineVaNal", 17023) });
		}

		private static StoryChoiceList Ch17HelicoptersFlyAbove()
		{
			return StoryChoiceList.FromResource("Helicopter-in-Sky.png", new IStoryChoice[] { StoryChoice.FromResource("ch17HelicoptersFlyAbove", 17024) });
		}

		private static StoryChoiceList Ch17IClimbBuildingAsVaNal()
		{
			return StoryChoiceList.FromResource("Va'Nal-Kaden-Climbs.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IClimbBuildingAsVaNal", 17025) });
		}

		private static StoryChoiceList Ch17HelicoptersFlyToCamp()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees.png", new IStoryChoice[] { StoryChoice.FromResource("ch17HelicoptersFlyToCamp", 17026) });
		}

		private static StoryChoiceList Ch17IOverlookCamp()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IOverlookCamp", 17027) });
		}

		private static StoryChoiceList Ch17SavedCitizensMakesMeHappy()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SavedCitizensMakesMeHappy", 17028) });
		}

		private static StoryChoiceList Ch17ISeemPleasant()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ISeemPleasant", 17029) });
		}

		private static StoryChoiceList Ch17OtherGodsBehindMe()
		{
			return StoryChoiceList.FromResource("Gods-Meet-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17OtherGodsBehindMe", 17030) });
		}

		private static StoryChoiceList Ch17IJoinKinship()
		{
			return StoryChoiceList.FromResource("Gods-Meet-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IJoinKinship", 17031) });
		}

		private static StoryChoiceList Ch17SezjaLovesMe()
		{
			return StoryChoiceList.FromResource("Gods-Meet-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SezjaLovesMe", 17032) });
		}

		private static StoryChoiceList Ch17SezjaHugsMe()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SezjaHugsMe", 17033) });
		}

		private static StoryChoiceList Ch17HeartyFeast()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17HeartyFeast", 17034) });
		}

		private static StoryChoiceList Ch17LetUsEat()
		{
			return StoryChoiceList.FromResource("Sezja-Hugs-Va'Nal-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17LetUsEat", 18001) });
		}

		private static StoryChoiceList Ch17IExamineMyselfAsPhantom()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Phantom.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IExamineMyselfAsPhantom", 17036) });
		}

		private static StoryChoiceList Ch17BekShtiiIsBehindMe()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17BekShtiiIsBehindMe", 17037) });
		}

		private static StoryChoiceList Ch17DoITrulyKnowBekShtii()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17DoITrulyKnowBekShtii", 17038) });
		}

		private static StoryChoiceList Ch17IKnowBekShtii()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IKnowBekShtii", 17039) });
		}

		private static StoryChoiceList Ch17IHeldBekShtii()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IHeldBekShtii", 17040) });
		}

		private static StoryChoiceList Ch17IAssumedEmpathyBekShtii()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAssumedEmpathyBekShtii", 17041) });
		}

		private static StoryChoiceList Ch17ILostTrustBekShtii()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ILostTrustBekShtii", 17042) });
		}

		private static StoryChoiceList Ch17IShouldHaveWorriedAboutMyself()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IShouldHaveWorriedAboutMyself", 17043) });
		}

		private static StoryChoiceList Ch17BekShtiiAsksShouldYou()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17BekShtiiAsksShouldYou", 17044) });
		}

		private static StoryChoiceList Ch17RebeccaWantsMeToReleaseBekShtii()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Bek'Shtii-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch17RebeccaWantsMeToReleaseBekShtii", 17045) });
		}

		private static StoryChoiceList Ch17BekShtiiGivesMeDagger()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Pulls-Dagger.png", new IStoryChoice[] { StoryChoice.FromResource("ch17BekShtiiGivesMeDagger", 17046) });
		}

		private static StoryChoiceList Ch17IStabBekShtii()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Stabbed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IStabBekShtii", 17047) });
		}

		private static StoryChoiceList Ch17BekShtiiBleeds()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Stabbed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17BekShtiiBleeds", 17048) });
		}

		private static StoryChoiceList Ch17IAbsorbBekShtii()
		{
			return StoryChoiceList.FromResource("Kaden-Absorbs-Bek'Shtii.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAbsorbBekShtii", 17049) });
		}

		private static StoryChoiceList Ch17IShake()
		{
			return StoryChoiceList.FromResource("Super-Kaden-Shakes-Greyscale.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IShake", 17050) });
		}

		private static StoryChoiceList Ch17IKnowWhatToDo()
		{
			return StoryChoiceList.FromResource("Super-Kaden-Shakes-Color.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IKnowWhatToDo", 17051) });
		}

		private static StoryChoiceList Ch17IShootTentacles()
		{
			return StoryChoiceList.FromResource("Super-Kaden-Unleashes-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IShootTentacles", 17052) });
		}

		private static StoryChoiceList Ch17TentaclesRise()
		{
			return StoryChoiceList.FromResource("Super-Kaden-Unleashes-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch17TentaclesRise", 17053) });
		}

		private static StoryChoiceList Ch17TheyPossessCitizens()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17TheyPossessCitizens", 17054) });
		}

		private static StoryChoiceList Ch17Hundreds()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17Hundreds", 17055) });
		}

		private static StoryChoiceList Ch17Thousands()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17Thousands", 17056) });
		}

		private static StoryChoiceList Ch17TenThousands()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17TenThousands", 17057) });
		}

		private static StoryChoiceList Ch17HundredThousands()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17HundredThousands", 17058) });
		}

		private static StoryChoiceList Ch17IReadEveryone()
		{
			return StoryChoiceList.FromResource("Airport-Evacuees-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IReadEveryone", 17059) });
		}

		private static StoryChoiceList Ch17WeMarchIntoCity()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Crowd.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeMarchIntoCity", 17060) });
		}

		private static StoryChoiceList Ch17WeRestoreCity()
		{
			return StoryChoiceList.FromResource("Main-Avenue-Crowd.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeRestoreCity", 17061) });
		}

		private static StoryChoiceList Ch17WeExtinguishFire()
		{
			return StoryChoiceList.FromResource("Crowd-Extinguishes-Fire.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeExtinguishFire", 17062) });
		}

		private static StoryChoiceList Ch17WeDrainFlood()
		{
			return StoryChoiceList.FromResource("Crowd-Drains-Water.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeDrainFlood", 17063) });
		}

		private static StoryChoiceList Ch17WeRepairBuildings()
		{
			return StoryChoiceList.FromResource("Crowd-Repairs-Building.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeRepairBuildings", 17064) });
		}

		private static StoryChoiceList Ch17WeCelebrate()
		{
			return StoryChoiceList.FromResource("Crowd-Repairs-Building.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeCelebrate", 18001) });
		}

		private static StoryChoiceList Ch17IExamineMyRealSelf()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IExamineMyRealSelf", 17066) });
		}

		private static StoryChoiceList Ch17PhantomFirstDefinition()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17PhantomFirstDefinition", 17067) });
		}

		private static StoryChoiceList Ch17PhantomSecondDefinition()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17PhantomSecondDefinition", 17068) });
		}

		private static StoryChoiceList Ch17IAssumedEmpathySelf()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAssumedEmpathySelf", 17069) });
		}

		private static StoryChoiceList Ch17ILostTrustSelf()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ILostTrustSelf", 17070) });
		}

		private static StoryChoiceList Ch17WhyICreatedTheGods()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WhyICreatedTheGods", 17071) });
		}

		private static StoryChoiceList Ch17ICanStillLove()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ICanStillLove", 17072) });
		}

		private static StoryChoiceList Ch17IGrabMyHood()
		{
			return StoryChoiceList.FromResource("Dr-Kaden-Pulls-Hood.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IGrabMyHood", 17073) });
		}

		private static StoryChoiceList Ch17ILowerMyHood()
		{
			return StoryChoiceList.FromResource("Dr-Kaden-Pulls-Hood.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ILowerMyHood", 17074) });
		}

		private static StoryChoiceList Ch17ThisIsRealMe()
		{
			return StoryChoiceList.FromResource("Shop-Reflection-Kaden-Hoodless.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ThisIsRealMe", 17075) });
		}

		private static StoryChoiceList Ch17IClimbToSeeHotel()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Climbs.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IClimbToSeeHotel", 17076) });
		}

		private static StoryChoiceList Ch17IGoToHotel()
		{
			return StoryChoiceList.FromResource("Flooded-Hotel-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IGoToHotel", 17077) });
		}

		private static StoryChoiceList Ch17HotelFloods()
		{
			return StoryChoiceList.FromResource("Flooded-Hotel-Entrance-Evacuated.png", new IStoryChoice[] { StoryChoice.FromResource("ch17HotelFloods", 17078) });
		}

		private static StoryChoiceList Ch17ManShovesLady()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			Route route = flags.StoryRoute;
			if (route == Route.Sarah)
			{
				nextState = 17087;
			}
			else
			{
				nextState = 17079;
			}
			return StoryChoiceList.FromResource("Flooded-Hotel-Entrance-Evacuated.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ManShovesLady", nextState) });
		}

		private static StoryChoiceList Ch17CaitlynKneels()
		{
			return StoryChoiceList.FromResource("Caitlyn-Falls-in-Flood.png", new IStoryChoice[] { StoryChoice.FromResource("ch17CaitlynKneels", 17080) });
		}

		private static StoryChoiceList Ch17IGoToCaitlyn()
		{
			return StoryChoiceList.FromResource("Caitlyn-Falls-in-Flood-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IGoToCaitlyn", 17081) });
		}

		private static StoryChoiceList Ch17YukioComes()
		{
			return StoryChoiceList.FromResource("Caitlyn-Falls-in-Flood-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17YukioComes", 17082) });
		}

		private static StoryChoiceList Ch17TideApproachesCaitlyn()
		{
			return StoryChoiceList.FromResource("Caitlyn-Falls-in-Flood-with-Kaden-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch17TideApproachesCaitlyn", 17083) });
		}

		private static StoryChoiceList Ch17ISaveCaitlyn()
		{
			return StoryChoiceList.FromResource("Caitlyn-Falls-in-Flood-with-Kaden-Yukio-and-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ISaveCaitlyn", 17084) });
		}

		private static StoryChoiceList Ch17CaitlynAsksAboutFlood()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch17CaitlynAsksAboutFlood", 17085) });
		}

		private static StoryChoiceList Ch17ComplicatedCaitlyn()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ComplicatedCaitlyn", 17086) });
		}

		private static StoryChoiceList Ch17YukioSurprised()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch17YukioSurprised", 17096) });
		}

		private static StoryChoiceList Ch17SarahKneels()
		{
			return StoryChoiceList.FromResource("Sarah-Falls-in-Flood.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SarahKneels", 17088) });
		}

		private static StoryChoiceList Ch17IGoToSarah()
		{
			return StoryChoiceList.FromResource("Sarah-Falls-in-Flood-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IGoToSarah", 17089) });
		}

		private static StoryChoiceList Ch17TideApproachesSarah()
		{
			return StoryChoiceList.FromResource("Sarah-Falls-in-Flood-with-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch17TideApproachesSarah", 17090) });
		}

		private static StoryChoiceList Ch17ISaveSarah()
		{
			return StoryChoiceList.FromResource("Sarah-Falls-in-Flood-with-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ISaveSarah", 17091) });
		}

		private static StoryChoiceList Ch17SarahAsksAboutMe()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SarahAsksAboutMe", 17092) });
		}

		private static StoryChoiceList Ch17ComplicatedSarah()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ComplicatedSarah", 17093) });
		}

		private static StoryChoiceList Ch17SarahAsksWhy()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SarahAsksWhy", 17094) });
		}

		private static StoryChoiceList Ch17IAmPhantom()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAmPhantom", 17095) });
		}

		private static StoryChoiceList Ch17LotToTakeIn()
		{
			return StoryChoiceList.FromResource("Hoodless-Kaden-Carries-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17LotToTakeIn", 17096) });
		}

		private static StoryChoiceList Ch17WeReachCamp()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			Route route = flags.StoryRoute;
			if (route == Route.Sarah)
			{
				nextState = 17106;
			}
			else
			{
				nextState = 17097;
			}
			return StoryChoiceList.FromResource("Airport-Evacuees.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeReachCamp", nextState) });
		}

		private static StoryChoiceList Ch17CaitlynPullsMe()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch17CaitlynPullsMe", 17098) });
		}

		private static StoryChoiceList Ch17WhyDidCaitlynPullMe()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WhyDidCaitlynPullMe", 17099) });
		}

		private static StoryChoiceList Ch17WhatIsItCaitlyn()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WhatIsItCaitlyn", 17100) });
		}

		private static StoryChoiceList Ch17CaitlynKnowsMeForYears()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17CaitlynKnowsMeForYears", 17101) });
		}

		private static StoryChoiceList Ch17IKnowCaitlynLeadsMe()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IKnowCaitlynLeadsMe", 17102) });
		}

		private static StoryChoiceList Ch17CaitlynWantsToBeClose()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17CaitlynWantsToBeClose", 17103) });
		}

		private static StoryChoiceList Ch17NoObjectionCaitlyn()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17NoObjectionCaitlyn", 17104) });
		}

		private static StoryChoiceList Ch17CaitlynStaresAtMe()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch17CaitlynStaresAtMe", 17105) });
		}

		private static StoryChoiceList Ch17WeKiss()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Caitlyn-Kiss.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WeKiss", 18001) });
		}

		private static StoryChoiceList Ch17IPullSarah()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IPullSarah", 17107) });
		}

		private static StoryChoiceList Ch17IExplainToSarah()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IExplainToSarah", 17108) });
		}

		private static StoryChoiceList Ch17DidIPossessSarah()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17DidIPossessSarah", 17109) });
		}

		private static StoryChoiceList Ch17ThatIsCorrect()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ThatIsCorrect", 17110) });
		}

		private static StoryChoiceList Ch17WhyDidIPossessSarah()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17WhyDidIPossessSarah", 17111) });
		}

		private static StoryChoiceList Ch17IWantedSarahToUnderstand()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IWantedSarahToUnderstand", 17112) });
		}

		private static StoryChoiceList Ch17MyPowersAreNew()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17MyPowersAreNew", 17113) });
		}

		private static StoryChoiceList Ch17SarahUnsure()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SarahUnsure", 17114) });
		}

		private static StoryChoiceList Ch17DidSarahAttendReunion()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17DidSarahAttendReunion", 17115) });
		}

		private static StoryChoiceList Ch17YeahSarahDid()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17YeahSarahDid", 17116) });
		}

		private static StoryChoiceList Ch17ThatIsGood()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ThatIsGood", 17117) });
		}

		private static StoryChoiceList Ch17IAmNotBad()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IAmNotBad", 17118) });
		}

		private static StoryChoiceList Ch17ThanksEmbarrassed()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17ThanksEmbarrassed", 17119) });
		}

		private static StoryChoiceList Ch17SarahAndIWillRoom()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17SarahAndIWillRoom", 17120) });
		}

		private static StoryChoiceList Ch17IdLoveTo()
		{
			return StoryChoiceList.FromResource("Airport-Kaden-and-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch17IdLoveTo", 18001) });
		}
	}
}
