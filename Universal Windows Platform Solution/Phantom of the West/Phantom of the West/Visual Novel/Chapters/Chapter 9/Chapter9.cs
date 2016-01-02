using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_9
{
	internal class Chapter9 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{9001, Ch9Title},
			{9002, Ch9IAwaken},
			{9003, Ch9IWaitForBus},
			{9004, Ch9CarleighLikesHewittSleeping},
			{9005, Ch9ElodieWouldMissHewitt},
			{9006, Ch9IBoardBus},
			{9007, Ch9DidCarleighTalkAboutMathTest},
			{9008, Ch9CarleighScored10},
			{9009, Ch9CarleighScored9},
			{9010, Ch9CarleighScored8},
			{9011, Ch9CarleighScored7},
			{9012, Ch9OhElodieSays},
			{9013, Ch9BusExitsHighway},
			{9014, Ch9BusPassesCheckpoint},
			{9015, Ch9IExitBus},
			{9016, Ch9GuideAnnounces},
			{9017, Ch9MuchBuildup},
			{9018, Ch9IEnterLodge},
			{9019, Ch9SarahStartsInterview},
			{9020, Ch9OfficerTalks},
			{9021, Ch9ISeeMySketch},
			{9022, Ch9SarahSignsOut},
			{9023, Ch9PublicKnowsMe},
			{9024, Ch9WeStartWalk},
			{9025, Ch9WeFindIvy},
			{9026, Ch9WeFindPolecats},
			{9027, Ch9WeFindSnakes},
			{9028, Ch9WeSeeRuins},
			{9029, Ch9ShouldIRun},
			{9030, Ch9IDispossessHewitt},
			{9031, Ch9GuideSeesBlackBear},
			{9032, Ch9IEnterRuins},
			{9033, Ch9BaqerGreetsMe},
			{9034, Ch9ICanRedeem},
			{9035, Ch9BaqerCannotTrustMe},
			{9036, Ch9BekShtiiAndBaqerYell},
			{9037, Ch9GodsAreFlawed},
			{9038, Ch9VaNalsKissIsRuined},
			{9039, Ch9GodsAreInappropriate},
			{9040, Ch9BekShtiisNewPlan},
			{9041, Ch9YesIAdmit},
			{9042, Ch9HowDidBekShtiiKnow},
			{9043, Ch9BekShtiiWillEmpower},
			{9044, Ch9BekShtiiChants},
			{9045, Ch9BeckShtiiFinishesChant},
			{9046, Ch9ISolidify},
			{9047, Ch9BekShtiiExplainsAbilities},
			{9048, Ch9IExtendTentacles},
			{9049, Ch9BekShtiiThoughtAhead},
			{9050, Ch9BekShtiiDismissesMe},
			{9051, Ch9SezjaDismissesMe},
			{9052, Ch9VaNalDissmissesMe},
			{9053, Ch9BaqerDissmissesMe},
			{9054, Ch9ILeaveRuins},
			{9055, Ch9IEncounterRanger},
			{9056, Ch9IAmLeaving},
			{9057, Ch9HowDidIEnterPark},
			{9058, Ch9ISneakedOntoBus},
			{9059, Ch9RangerMustDetainMe},
			{9060, Ch9IRemember},
			{9061, Ch9DoNotRunSaysRanger},
			{9062, Ch9IFalselySurrender},
			{9063, Ch9IStealRangersGun},
			{9064, Ch9ICrushMagazine},
			{9065, Ch9IReturnGun},
			{9066, Ch9WhoAmI},
			{9067, Ch9RangerKnowsMeOnTV},
			{9068, Ch9IWantToBeLeft},
			{9069, Ch9IAmPhantomOfWest},
			{9070, Ch9IFlyAboveContinent},
			{9071, Ch9IOverlookNewFerando},
			{9072, Ch9IOverlookPark},
			{9073, Ch9IOverlookArcticon},
			{9074, Ch9IOverlookHighway},
			{9075, Ch9IEnterArcticon},
			{9076, Ch9IReachMyRoom},
			{9077, Ch9IGoToLounge},
			{9078, Ch9CaitlynAndYukioCome},
			{9079, Ch9ThereIAm},
			{9080, Ch9CaitlynAndYukioWorried},
			{9081, Ch9YukioSawMeOnTV},
			{9082, Ch9DoesCaitlynRemember},
			{9083, Ch9CaitlynRemembersOfficer},
			{9084, Ch9IMayReappearOnTV},
			{9085, Ch9ISummarizeToYukio},
			{9086, Ch9YukioSimplifiesMySummary},
			{9087, Ch9YeahBasically},
			{9088, Ch9IWaitForFoxtrot},
			{9089, Ch9IAlreadyMetFoxtrot},
			{9090, Ch9IDidNotMeetFoxtrot},
			{9091, Ch9FoxtrotToCheerMeUp},
			{9092, Ch9FoxtrotStares},
			{9093, Ch9ILeaveFoxtrot},
			{9094, Ch9CaitlynShouldPutFoxtrotBack},
			{9095, Ch9FoxtrotHisses},
			{9096, Ch9FoxtrotAllowsPet},
			{9097, Ch9IRubFoxtrot},
			{9098, Ch9FoxtrotLicksMe},
			{9099, Ch9CaitlynFrownsAtFoxtrot},
			{9100, Ch9IReturnHome},
			{9101, Ch9ISleep}
		};

		internal Chapter9() : base(dictionary, 9002)
		{
		}

		private static StoryChoiceList Ch9Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch9Title", 9002) });
		}

		private static StoryChoiceList Ch9IAwaken()
		{
			return StoryChoiceList.FromResource("Hewitt-Dresses-Casually.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IAwaken", 9003) });
		}

		private static StoryChoiceList Ch9IWaitForBus()
		{
			return StoryChoiceList.FromResource("Bus-Wait.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IWaitForBus", 9004) });
		}

		private static StoryChoiceList Ch9CarleighLikesHewittSleeping()
		{
			return StoryChoiceList.FromResource("Bus-Wait.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CarleighLikesHewittSleeping", 9005) });
		}

		private static StoryChoiceList Ch9ElodieWouldMissHewitt()
		{
			return StoryChoiceList.FromResource("Bus-Wait.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ElodieWouldMissHewitt", 9006) });
		}

		private static StoryChoiceList Ch9IBoardBus()
		{
			return StoryChoiceList.FromResource("Bus-Wait.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IBoardBus", 9007) });
		}

		private static StoryChoiceList Ch9DidCarleighTalkAboutMathTest()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			int score = flags.Ch5NumCorrectMathAnswers;
			if (score >= 3)
			{
				nextState = 9008;
			}
			else if (score == 2)
			{
				nextState = 9009;
			}
			else if (score == 1)
			{
				nextState = 9010;
			}
			else
			{
				nextState = 9011;
			}
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9DidCarleighTalkAboutMathTest", nextState) });
		}

		private static StoryChoiceList Ch9CarleighScored10()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CarleighScored10", 9012) });
		}

		private static StoryChoiceList Ch9CarleighScored9()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CarleighScored9", 9012) });
		}

		private static StoryChoiceList Ch9CarleighScored8()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CarleighScored8", 9012) });
		}

		private static StoryChoiceList Ch9CarleighScored7()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CarleighScored7", 9012) });
		}

		private static StoryChoiceList Ch9OhElodieSays()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9OhElodieSays", 9013) });
		}

		private static StoryChoiceList Ch9BusExitsHighway()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BusExitsHighway", 9014) });
		}

		private static StoryChoiceList Ch9BusPassesCheckpoint()
		{
			return StoryChoiceList.FromResource("Hewitt-and-Co-on-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BusPassesCheckpoint", 9015) });
		}

		private static StoryChoiceList Ch9IExitBus()
		{
			return StoryChoiceList.FromResource("Bus-Outside-Lodge.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IExitBus", 9016) });
		}

		private static StoryChoiceList Ch9GuideAnnounces()
		{
			return StoryChoiceList.FromResource("Tour-Guide-Announcement.png", new IStoryChoice[] { StoryChoice.FromResource("ch9GuideAnnounces", 9017) });
		}

		private static StoryChoiceList Ch9MuchBuildup()
		{
			return StoryChoiceList.FromResource("Tour-Guide-Announcement.png", new IStoryChoice[] { StoryChoice.FromResource("ch9MuchBuildup", 9018) });
		}

		private static StoryChoiceList Ch9IEnterLodge()
		{
			return StoryChoiceList.FromResource("TV-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IEnterLodge", 9019) });
		}

		private static StoryChoiceList Ch9SarahStartsInterview()
		{
			return StoryChoiceList.FromResource("TV-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch9SarahStartsInterview", 9020) });
		}

		private static StoryChoiceList Ch9OfficerTalks()
		{
			return StoryChoiceList.FromResource("TV-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch9OfficerTalks", 9021) });
		}

		private static StoryChoiceList Ch9ISeeMySketch()
		{
			return StoryChoiceList.FromResource("TV-Phantom-Sketch.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ISeeMySketch", 9022) });
		}

		private static StoryChoiceList Ch9SarahSignsOut()
		{
			return StoryChoiceList.FromResource("TV-Sarah-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch9SarahSignsOut", 9023) });
		}

		private static StoryChoiceList Ch9PublicKnowsMe()
		{
			return StoryChoiceList.FromResource("TV-Sarah-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch9PublicKnowsMe", 9024) });
		}

		private static StoryChoiceList Ch9WeStartWalk()
		{
			return StoryChoiceList.FromResource("Nature-Walk.png", new IStoryChoice[] { StoryChoice.FromResource("ch9WeStartWalk", 9025) });
		}

		private static StoryChoiceList Ch9WeFindIvy()
		{
			return StoryChoiceList.FromResource("Poison-Ivy.png", new IStoryChoice[] { StoryChoice.FromResource("ch9WeFindIvy", 9026) });
		}

		private static StoryChoiceList Ch9WeFindPolecats()
		{
			return StoryChoiceList.FromResource("Polecat.png", new IStoryChoice[] { StoryChoice.FromResource("ch9WeFindPolecats", 9027) });
		}

		private static StoryChoiceList Ch9WeFindSnakes()
		{
			return StoryChoiceList.FromResource("Snake.png", new IStoryChoice[] { StoryChoice.FromResource("ch9WeFindSnakes", 9028) });
		}

		private static StoryChoiceList Ch9WeSeeRuins()
		{
			return StoryChoiceList.FromResource("Ancient-City-Distant.png", new IStoryChoice[] { StoryChoice.FromResource("ch9WeSeeRuins", 9029) });
		}

		private static StoryChoiceList Ch9ShouldIRun()
		{
			return StoryChoiceList.FromResource("Ancient-City-Distant.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ShouldIRun", 9030) });
		}

		private static StoryChoiceList Ch9IDispossessHewitt()
		{
			return StoryChoiceList.FromResource("Hewitt-Dispossessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IDispossessHewitt", 9031) });
		}

		private static StoryChoiceList Ch9GuideSeesBlackBear()
		{
			return StoryChoiceList.FromResource("Ranger-Sees-Black-Bear.png", new IStoryChoice[] { StoryChoice.FromResource("ch9GuideSeesBlackBear", 9032) });
		}

		private static StoryChoiceList Ch9IEnterRuins()
		{
			return StoryChoiceList.FromResource("Kaden-to-Pyramid-Top.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IEnterRuins", 9033) });
		}

		private static StoryChoiceList Ch9BaqerGreetsMe()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BaqerGreetsMe", 9034) });
		}

		private static StoryChoiceList Ch9ICanRedeem()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ICanRedeem", 9035) });
		}

		private static StoryChoiceList Ch9BaqerCannotTrustMe()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BaqerCannotTrustMe", 9036) });
		}

		private static StoryChoiceList Ch9BekShtiiAndBaqerYell()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiiAndBaqerYell", 9037) });
		}

		private static StoryChoiceList Ch9GodsAreFlawed()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			VaNalKiss didKiss = flags.Ch7KissedVaNal;
			if (didKiss == VaNalKiss.Kissed)
			{
				nextState = 9038;
			}
			else
			{
				nextState = 9039;
			}
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9GodsAreFlawed", nextState) });
		}

		private static StoryChoiceList Ch9VaNalsKissIsRuined()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9VaNalsKissIsRuined", 9040) });
		}

		private static StoryChoiceList Ch9GodsAreInappropriate()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9GodsAreInappropriate", 9040) });
		}

		private static StoryChoiceList Ch9BekShtiisNewPlan()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiisNewPlan", 9041) });
		}

		private static StoryChoiceList Ch9YesIAdmit()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9YesIAdmit", 9042) });
		}

		private static StoryChoiceList Ch9HowDidBekShtiiKnow()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9HowDidBekShtiiKnow", 9043) });
		}

		private static StoryChoiceList Ch9BekShtiiWillEmpower()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiiWillEmpower", 9044) });
		}

		private static StoryChoiceList Ch9BekShtiiChants()
		{
			return StoryChoiceList.FromResource("Pyramid-Meeting.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiiChants", 9045) });
		}

		private static StoryChoiceList Ch9BeckShtiiFinishesChant()
		{
			return StoryChoiceList.FromResource("Kaden-Ill-with-Bek'Shtii.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BeckShtiiFinishesChant", 9046) });
		}

		private static StoryChoiceList Ch9ISolidify()
		{
			return StoryChoiceList.FromResource("Kaden-Feels-Old-Face.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ISolidify", 9047) });
		}

		private static StoryChoiceList Ch9BekShtiiExplainsAbilities()
		{
			return StoryChoiceList.FromResource("Kaden-Feels-Old-Face.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiiExplainsAbilities", 9048) });
		}

		private static StoryChoiceList Ch9IExtendTentacles()
		{
			return StoryChoiceList.FromResource("Kaden-First-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IExtendTentacles", 9049) });
		}

		private static StoryChoiceList Ch9BekShtiiThoughtAhead()
		{
			return StoryChoiceList.FromResource("Kaden-First-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiiThoughtAhead", 9050) });
		}

		private static StoryChoiceList Ch9BekShtiiDismissesMe()
		{
			return StoryChoiceList.FromResource("Kaden-First-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BekShtiiDismissesMe", 9051) });
		}

		private static StoryChoiceList Ch9SezjaDismissesMe()
		{
			return StoryChoiceList.FromResource("Kaden-First-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch9SezjaDismissesMe", 9052) });
		}

		private static StoryChoiceList Ch9VaNalDissmissesMe()
		{
			return StoryChoiceList.FromResource("Kaden-First-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch9VaNalDissmissesMe", 9053) });
		}

		private static StoryChoiceList Ch9BaqerDissmissesMe()
		{
			return StoryChoiceList.FromResource("Kaden-First-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch9BaqerDissmissesMe", 9054) });
		}

		private static StoryChoiceList Ch9ILeaveRuins()
		{
			return StoryChoiceList.FromResource("Kaden-Leaves-Ancient-City.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ILeaveRuins", 9055) });
		}

		private static StoryChoiceList Ch9IEncounterRanger()
		{
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IEncounterRanger", 9056) });
		}

		private static StoryChoiceList Ch9IAmLeaving()
		{
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IAmLeaving", 9057) });
		}

		private static StoryChoiceList Ch9HowDidIEnterPark()
		{
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9HowDidIEnterPark", 9058) });
		}

		private static StoryChoiceList Ch9ISneakedOntoBus()
		{
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ISneakedOntoBus", 9059) });
		}

		private static StoryChoiceList Ch9RangerMustDetainMe()
		{
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9RangerMustDetainMe", 9060) });
		}

		private static StoryChoiceList Ch9IRemember()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			PhysicalEducationAnswer answer = flags.Ch5AnsweredCoach;
			switch (answer)
			{
				case PhysicalEducationAnswer.Run:
					nextState = 9061;
					break;
				case PhysicalEducationAnswer.Disarm:
					nextState = 9063;
					break;
				default:
					nextState = 9062;
					break;
			}
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IRemember", nextState) });
		}

		private static StoryChoiceList Ch9DoNotRunSaysRanger()
		{
			return StoryChoiceList.FromResource("Kaden-Encounters-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9DoNotRunSaysRanger", 9063) });
		}

		private static StoryChoiceList Ch9IFalselySurrender()
		{
			return StoryChoiceList.FromResource("Ranger-Handcuffs-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IFalselySurrender", 9063) });
		}

		private static StoryChoiceList Ch9IStealRangersGun()
		{
			return StoryChoiceList.FromResource("Kaden-Tentacles-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IStealRangersGun", 9064) });
		}

		private static StoryChoiceList Ch9ICrushMagazine()
		{
			return StoryChoiceList.FromResource("Kaden-Tentacles-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ICrushMagazine", 9065) });
		}

		private static StoryChoiceList Ch9IReturnGun()
		{
			return StoryChoiceList.FromResource("Kaden-Returns-Rifle.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IReturnGun", 9066) });
		}

		private static StoryChoiceList Ch9WhoAmI()
		{
			return StoryChoiceList.FromResource("Kaden-Returns-Rifle.png", new IStoryChoice[] { StoryChoice.FromResource("ch9WhoAmI", 9067) });
		}

		private static StoryChoiceList Ch9RangerKnowsMeOnTV()
		{
			return StoryChoiceList.FromResource("I-am-the-Phantom-of-the-West.png", new IStoryChoice[] { StoryChoice.FromResource("ch9RangerKnowsMeOnTV", 9068) });
		}

		private static StoryChoiceList Ch9IWantToBeLeft()
		{
			return StoryChoiceList.FromResource("I-am-the-Phantom-of-the-West.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IWantToBeLeft", 9069) });
		}

		private static StoryChoiceList Ch9IAmPhantomOfWest()
		{
			return StoryChoiceList.FromResource("I-am-the-Phantom-of-the-West.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IAmPhantomOfWest", 9070) });
		}

		private static StoryChoiceList Ch9IFlyAboveContinent()
		{
			return StoryChoiceList.FromResource("Phantom-above-Continent.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IFlyAboveContinent", 9071) });
		}

		private static StoryChoiceList Ch9IOverlookNewFerando()
		{
			return StoryChoiceList.FromResource("Phantom-above-Continent.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IOverlookNewFerando", 9072) });
		}

		private static StoryChoiceList Ch9IOverlookPark()
		{
			return StoryChoiceList.FromResource("Phantom-above-Continent.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IOverlookPark", 9073) });
		}

		private static StoryChoiceList Ch9IOverlookArcticon()
		{
			return StoryChoiceList.FromResource("Phantom-above-Continent.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IOverlookArcticon", 9074) });
		}

		private static StoryChoiceList Ch9IOverlookHighway()
		{
			return StoryChoiceList.FromResource("Phantom-above-Continent.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IOverlookHighway", 9075) });
		}

		private static StoryChoiceList Ch9IEnterArcticon()
		{
			return StoryChoiceList.FromResource("Kaden-Flies-into-Vent.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IEnterArcticon", 9076) });
		}

		private static StoryChoiceList Ch9IReachMyRoom()
		{
			return StoryChoiceList.FromResource("Kaden-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IReachMyRoom", 9077) });
		}

		private static StoryChoiceList Ch9IGoToLounge()
		{
			return StoryChoiceList.FromResource("Kaden-Lab-Alone.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IGoToLounge", 9078) });
		}

		private static StoryChoiceList Ch9CaitlynAndYukioCome()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CaitlynAndYukioCome", 9079) });
		}

		private static StoryChoiceList Ch9ThereIAm()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ThereIAm", 9080) });
		}

		private static StoryChoiceList Ch9CaitlynAndYukioWorried()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CaitlynAndYukioWorried", 9081) });
		}

		private static StoryChoiceList Ch9YukioSawMeOnTV()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9YukioSawMeOnTV", 9082) });
		}

		private static StoryChoiceList Ch9DoesCaitlynRemember()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9DoesCaitlynRemember", 9083) });
		}

		private static StoryChoiceList Ch9CaitlynRemembersOfficer()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CaitlynRemembersOfficer", 9084) });
		}

		private static StoryChoiceList Ch9IMayReappearOnTV()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IMayReappearOnTV", 9085) });
		}

		private static StoryChoiceList Ch9ISummarizeToYukio()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ISummarizeToYukio", 9086) });
		}

		private static StoryChoiceList Ch9YukioSimplifiesMySummary()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9YukioSimplifiesMySummary", 9087) });
		}

		private static StoryChoiceList Ch9YeahBasically()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch9YeahBasically", 9088) });
		}

		private static StoryChoiceList Ch9IWaitForFoxtrot()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			bool metFoxtrot = (flags.Ch3TalkedWithCaitlyn != TalkWithCaitlyn.HasNotTalked);
			if (metFoxtrot)
			{
				nextState = 9089;
			}
			else
			{
				nextState = 9090;
			}
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IWaitForFoxtrot", nextState) });
		}

		private static StoryChoiceList Ch9IAlreadyMetFoxtrot()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IAlreadyMetFoxtrot", 9091) });
		}

		private static StoryChoiceList Ch9IDidNotMeetFoxtrot()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IDidNotMeetFoxtrot", 9091) });
		}

		private static StoryChoiceList Ch9FoxtrotToCheerMeUp()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9FoxtrotToCheerMeUp", 9092) });
		}

		private static StoryChoiceList Ch9FoxtrotStares()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9FoxtrotStares", 9093) });
		}

		private static StoryChoiceList Ch9ILeaveFoxtrot()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { new ILeaveFoxtrot(), new IWillPetFoxtrot() });
		}

		private static StoryChoiceList Ch9CaitlynShouldPutFoxtrotBack()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CaitlynShouldPutFoxtrotBack", 9099) });
		}

		private static StoryChoiceList Ch9FoxtrotHisses()
		{
			return StoryChoiceList.FromResource("Foxtrot-Hiss.png", new IStoryChoice[] { StoryChoice.FromResource("ch9FoxtrotHisses", 9099) });
		}

		private static StoryChoiceList Ch9FoxtrotAllowsPet()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9FoxtrotAllowsPet", 9097) });
		}

		private static StoryChoiceList Ch9IRubFoxtrot()
		{
			return StoryChoiceList.FromResource("Foxtrot-Petted.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IRubFoxtrot", 9098) });
		}

		private static StoryChoiceList Ch9FoxtrotLicksMe()
		{
			return StoryChoiceList.FromResource("Foxtrot-Licks-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch9FoxtrotLicksMe", 9100) });
		}

		private static StoryChoiceList Ch9CaitlynFrownsAtFoxtrot()
		{
			return StoryChoiceList.FromResource("Caitlyn-Brings-Foxtrot.png", new IStoryChoice[] { StoryChoice.FromResource("ch9CaitlynFrownsAtFoxtrot", 9100) });
		}

		private static StoryChoiceList Ch9IReturnHome()
		{
			return StoryChoiceList.FromResource("Kaden-on-Tram.png", new IStoryChoice[] { StoryChoice.FromResource("ch9IReturnHome", 9101) });
		}

		private static StoryChoiceList Ch9ISleep()
		{
			return StoryChoiceList.FromResource("Kaden-Sleeps.png", new IStoryChoice[] { StoryChoice.FromResource("ch9ISleep", 10001) });
		}
	}
}
