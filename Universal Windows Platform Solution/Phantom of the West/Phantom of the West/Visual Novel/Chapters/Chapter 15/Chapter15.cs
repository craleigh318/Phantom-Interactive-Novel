using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_15
{
	internal class Chapter15 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{15001, Ch15Title},
			{15002, Ch15IAmInJail},
			{15003, Ch15ISeeViolinist},
			{15004, Ch15ISeeBeggar},
			{15005, Ch15ISeeAddict},
			{15006, Ch15AddictTalks},
			{15007, Ch15SoundproofTube},
			{15008, Ch15LittleBuddyCannotTalk},
			{15009, Ch15IHaveCivilRights},
			{15010, Ch15BallBreaksMyCell},
			{15011, Ch15ConstructorGreetsMe},
			{15012, Ch15ConstructorIsDispossessed},
			{15013, Ch15ItsSezja},
			{15014, Ch15SezjaIsHappySeeingMe},
			{15015, Ch15HowLongWasIJailed},
			{15016, Ch15ItIsMorning},
			{15017, Ch15ILookAround},
			{15018, Ch15OhWow},
			{15019, Ch15FloodedRoads},
			{15020, Ch15BekShtiiAndBaqerFight},
			{15021, Ch15CanBaqerTurnIntoFireSpirits},
			{15022, Ch15DoIDislikeHistory},
			{15023, Ch15DidSezjaEnjoySchool},
			{15024, Ch15ThereIsCamp},
			{15025, Ch15SezjaHugs},
			{15026, Ch15SezjaPaddles},
			{15027, Ch15MeAndCity},
			{15028, Ch15ILookAtConstructor},
			{15029, Ch15IPossessConstructor},
			{15030, Ch15MyTeethAreBad},
			{15031, Ch15IClimbBuilding},
			{15032, Ch15ISeeRestOfCity},
			{15033, Ch15IFindConstructionSite},
			{15034, Ch15IJumpToConstructionSite},
			{15035, Ch15IGetPickaxe},
			{15036, Ch15IJumpBetweenRooftops},
			{15037, Ch15PeopleBelowTrapped},
			{15038, Ch15IFindFireSpirits},
			{15039, Ch15SpiritsSurroundMe},
			{15040, Ch15ISlamSpirits},
			{15041, Ch15IDeathByOverconfidence},
			{15042, Ch15KeptYouWaiting},
			{15043, Ch15IStrikeSpirit},
			{15044, Ch15ILeaveSpirits},
			{15045, Ch15SchoolBusNeedsHelp},
			{15046, Ch15IDispossessConstructor},
			{15047, Ch15IAmHero},
			{15048, Ch15ILiftBus},
			{15049, Ch15StudentsThankMe},
			{15050, Ch15IKnowElodie},
			{15051, Ch15KeepFriendsClose},
			{15052, Ch15ICanSayEllie},
			{15053, Ch15KeepStudentsSafe},
			{15054, Ch15WowStudentsSay},
			{15055, Ch15PhantomGoesToHotel},
			{15056, Ch15IsThatBekShtii},
			{15057, Ch15WhatIsBekShtiiDoing},
			{15058, Ch15ModernSelfishness},
			{15059, Ch15IHoldBekShtiiBack},
			{15060, Ch15BekShtiiThrowsMe},
			{15061, Ch15IDrift},
			{15062, Ch15IShouldHaveBeenAtReunion},
			{15063, Ch15IWillBeRescued}
		};

		internal Chapter15() : base(dictionary, 15002)
		{
		}

		private static StoryChoiceList Ch15Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch15Title", 15002) });
		}

		private static StoryChoiceList Ch15IAmInJail()
		{
			return StoryChoiceList.FromResource("Phantom-Jail.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IAmInJail", 15003) });
		}

		private static StoryChoiceList Ch15ISeeViolinist()
		{
			return StoryChoiceList.FromResource("Jail-Violinist.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ISeeViolinist", 15004) });
		}

		private static StoryChoiceList Ch15ISeeBeggar()
		{
			return StoryChoiceList.FromResource("Jail-Beggar.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ISeeBeggar", 15005) });
		}

		private static StoryChoiceList Ch15ISeeAddict()
		{
			return StoryChoiceList.FromResource("Jail-Addict.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ISeeAddict", 15006) });
		}

		private static StoryChoiceList Ch15AddictTalks()
		{
			return StoryChoiceList.FromResource("Jail-Addict.png", new IStoryChoice[] { StoryChoice.FromResource("ch15AddictTalks", 15007) });
		}

		private static StoryChoiceList Ch15SoundproofTube()
		{
			return StoryChoiceList.FromResource("Jail-Addict.png", new IStoryChoice[] { StoryChoice.FromResource("ch15SoundproofTube", 15008) });
		}

		private static StoryChoiceList Ch15LittleBuddyCannotTalk()
		{
			return StoryChoiceList.FromResource("Jail-Addict.png", new IStoryChoice[] { StoryChoice.FromResource("ch15LittleBuddyCannotTalk", 15009) });
		}

		private static StoryChoiceList Ch15IHaveCivilRights()
		{
			return StoryChoiceList.FromResource("Jail-Window.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IHaveCivilRights", 15010) });
		}

		private static StoryChoiceList Ch15BallBreaksMyCell()
		{
			return StoryChoiceList.FromResource("Phantom-Jailbreak.png", new IStoryChoice[] { StoryChoice.FromResource("ch15BallBreaksMyCell", 15011) });
		}

		private static StoryChoiceList Ch15ConstructorGreetsMe()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Waves.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ConstructorGreetsMe", 15012) });
		}

		private static StoryChoiceList Ch15ConstructorIsDispossessed()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Dispossessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ConstructorIsDispossessed", 15013) });
		}

		private static StoryChoiceList Ch15ItsSezja()
		{
			return StoryChoiceList.FromResource("Sezja-from-Construction-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ItsSezja", 15014) });
		}

		private static StoryChoiceList Ch15SezjaIsHappySeeingMe()
		{
			return StoryChoiceList.FromResource("Sezja-from-Construction-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15SezjaIsHappySeeingMe", 15015) });
		}

		private static StoryChoiceList Ch15HowLongWasIJailed()
		{
			return StoryChoiceList.FromResource("Sezja-from-Construction-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15HowLongWasIJailed", 15016) });
		}

		private static StoryChoiceList Ch15ItIsMorning()
		{
			return StoryChoiceList.FromResource("Sezja-from-Construction-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ItIsMorning", 15017) });
		}

		private static StoryChoiceList Ch15ILookAround()
		{
			return StoryChoiceList.FromResource("Flooded-Roads.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ILookAround", 15018) });
		}

		private static StoryChoiceList Ch15OhWow()
		{
			return StoryChoiceList.FromResource("Flooded-Roads.png", new IStoryChoice[] { StoryChoice.FromResource("ch15OhWow", 15019) });
		}

		private static StoryChoiceList Ch15FloodedRoads()
		{
			return StoryChoiceList.FromResource("Flooded-Roads.png", new IStoryChoice[] { StoryChoice.FromResource("ch15FloodedRoads", 15020) });
		}

		private static StoryChoiceList Ch15BekShtiiAndBaqerFight()
		{
			return StoryChoiceList.FromResource("Kaden-and-Sezja-Backs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15BekShtiiAndBaqerFight", 15021) });
		}

		private static StoryChoiceList Ch15CanBaqerTurnIntoFireSpirits()
		{
			return StoryChoiceList.FromResource("Kaden-and-Sezja-Backs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15CanBaqerTurnIntoFireSpirits", 15022) });
		}

		private static StoryChoiceList Ch15DoIDislikeHistory()
		{
			return StoryChoiceList.FromResource("Kaden-and-Sezja-Backs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15DoIDislikeHistory", 15023) });
		}

		private static StoryChoiceList Ch15DidSezjaEnjoySchool()
		{
			return StoryChoiceList.FromResource("Kaden-and-Sezja-Backs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15DidSezjaEnjoySchool", 15024) });
		}

		private static StoryChoiceList Ch15ThereIsCamp()
		{
			return StoryChoiceList.FromResource("Kaden-and-Sezja-Backs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ThereIsCamp", 15025) });
		}

		private static StoryChoiceList Ch15SezjaHugs()
		{
			return StoryChoiceList.FromResource("Kaden-and-Sezja-Backs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15SezjaHugs", 15026) });
		}

		private static StoryChoiceList Ch15SezjaPaddles()
		{
			return StoryChoiceList.FromResource("Sezja-Raft.png", new IStoryChoice[] { StoryChoice.FromResource("ch15SezjaPaddles", 15027) });
		}

		private static StoryChoiceList Ch15MeAndCity()
		{
			return StoryChoiceList.FromResource("Sezja-Raft.png", new IStoryChoice[] { StoryChoice.FromResource("ch15MeAndCity", 15028) });
		}

		private static StoryChoiceList Ch15ILookAtConstructor()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Dazed.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ILookAtConstructor", 15029) });
		}

		private static StoryChoiceList Ch15IPossessConstructor()
		{
			return StoryChoiceList.FromResource("Kaden-Possesses-Construction-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IPossessConstructor", 15030) });
		}

		private static StoryChoiceList Ch15MyTeethAreBad()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Teeth.png", new IStoryChoice[] { StoryChoice.FromResource("ch15MyTeethAreBad", 15031) });
		}

		private static StoryChoiceList Ch15IClimbBuilding()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Climbs.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IClimbBuilding", 15032) });
		}

		private static StoryChoiceList Ch15ISeeRestOfCity()
		{
			return StoryChoiceList.FromResource("Whole-City-Flooded.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ISeeRestOfCity", 15033) });
		}

		private static StoryChoiceList Ch15IFindConstructionSite()
		{
			return StoryChoiceList.FromResource("Construction-Site.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IFindConstructionSite", 15034) });
		}

		private static StoryChoiceList Ch15IJumpToConstructionSite()
		{
			return StoryChoiceList.FromResource("Construction-Site.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IJumpToConstructionSite", 15035) });
		}

		private static StoryChoiceList Ch15IGetPickaxe()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Pickaxe.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IGetPickaxe", 15036) });
		}

		private static StoryChoiceList Ch15IJumpBetweenRooftops()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Leaps.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IJumpBetweenRooftops", 15037) });
		}

		private static StoryChoiceList Ch15PeopleBelowTrapped()
		{
			return StoryChoiceList.FromResource("Flooded-City-Below.png", new IStoryChoice[] { StoryChoice.FromResource("ch15PeopleBelowTrapped", 15038) });
		}

		private static StoryChoiceList Ch15IFindFireSpirits()
		{
			return StoryChoiceList.FromResource("Fire-Spirits-Below.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IFindFireSpirits", 15039) });
		}

		private static StoryChoiceList Ch15SpiritsSurroundMe()
		{
			return StoryChoiceList.FromResource("Fire-Spirits-Surround-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15SpiritsSurroundMe", 15040) });
		}

		private static StoryChoiceList Ch15ISlamSpirits()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			bool saidDisarm = (flags.Ch5AnsweredCoach == PhysicalEducationAnswer.Disarm);
			if (saidDisarm)
			{
				nextState = 15041;
			}
			else
			{
				nextState = 15042;
			}
			return StoryChoiceList.FromResource("Worker-Axes-Fire-Spirits.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ISlamSpirits", nextState) });
		}

		private static StoryChoiceList Ch15IDeathByOverconfidence()
		{
			return StoryChoiceList.FromResource("Worker-Leans-over-Fire-Spirit.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IDeathByOverconfidence", 15043) });
		}

		private static StoryChoiceList Ch15KeptYouWaiting()
		{
			return StoryChoiceList.FromResource("Worker-Leans-over-Fire-Spirit.png", new IStoryChoice[] { StoryChoice.FromResource("ch15KeptYouWaiting", 15043) });
		}

		private static StoryChoiceList Ch15IStrikeSpirit()
		{
			return StoryChoiceList.FromResource("Worker-Kills-Fire-Spirit.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IStrikeSpirit", 15044) });
		}

		private static StoryChoiceList Ch15ILeaveSpirits()
		{
			return StoryChoiceList.FromResource("Construction-Worker-Climbs-with-Pickaxe.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ILeaveSpirits", 15045) });
		}

		private static StoryChoiceList Ch15SchoolBusNeedsHelp()
		{
			return StoryChoiceList.FromResource("Flooded-School-Bus-Below.png", new IStoryChoice[] { StoryChoice.FromResource("ch15SchoolBusNeedsHelp", 15046) });
		}

		private static StoryChoiceList Ch15IDispossessConstructor()
		{
			return StoryChoiceList.FromResource("Kaden-Dispossesses-Construction-Worker.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IDispossessConstructor", 15047) });
		}

		private static StoryChoiceList Ch15IAmHero()
		{
			return StoryChoiceList.FromResource("School-Bus-Passengers-See-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IAmHero", 15048) });
		}

		private static StoryChoiceList Ch15ILiftBus()
		{
			return StoryChoiceList.FromResource("Kaden-Lifts-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ILiftBus", 15049) });
		}

		private static StoryChoiceList Ch15StudentsThankMe()
		{
			return StoryChoiceList.FromResource("Students-Thank-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15StudentsThankMe", 15050) });
		}

		private static StoryChoiceList Ch15IKnowElodie()
		{
			return StoryChoiceList.FromResource("Students-Thank-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IKnowElodie", 15051) });
		}

		private static StoryChoiceList Ch15KeepFriendsClose()
		{
			return StoryChoiceList.FromResource("Students-Thank-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15KeepFriendsClose", 15052) });
		}

		private static StoryChoiceList Ch15ICanSayEllie()
		{
			return StoryChoiceList.FromResource("Students-Thank-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ICanSayEllie", 15053) });
		}

		private static StoryChoiceList Ch15KeepStudentsSafe()
		{
			return StoryChoiceList.FromResource("Students-Thank-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15KeepStudentsSafe", 15054) });
		}

		private static StoryChoiceList Ch15WowStudentsSay()
		{
			return StoryChoiceList.FromResource("Kaden-Flies-from-Bus.png", new IStoryChoice[] { StoryChoice.FromResource("ch15WowStudentsSay", 15055) });
		}

		private static StoryChoiceList Ch15PhantomGoesToHotel()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-in-Distance.png", new IStoryChoice[] { StoryChoice.FromResource("ch15PhantomGoesToHotel", 15056) });
		}

		private static StoryChoiceList Ch15IsThatBekShtii()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-in-Distance.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IsThatBekShtii", 15057) });
		}

		private static StoryChoiceList Ch15WhatIsBekShtiiDoing()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-in-Distance.png", new IStoryChoice[] { StoryChoice.FromResource("ch15WhatIsBekShtiiDoing", 15058) });
		}

		private static StoryChoiceList Ch15ModernSelfishness()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-in-City.png", new IStoryChoice[] { StoryChoice.FromResource("ch15ModernSelfishness", 15059) });
		}

		private static StoryChoiceList Ch15IHoldBekShtiiBack()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-in-City.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IHoldBekShtiiBack", 15060) });
		}

		private static StoryChoiceList Ch15BekShtiiThrowsMe()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-Grabs-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch15BekShtiiThrowsMe", 15061) });
		}

		private static StoryChoiceList Ch15IDrift()
		{
			return StoryChoiceList.FromResource("Kaden-Floats-on-River.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IDrift", 15062) });
		}

		private static StoryChoiceList Ch15IShouldHaveBeenAtReunion()
		{
			return StoryChoiceList.FromResource("Kaden-Floats-on-River.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IShouldHaveBeenAtReunion", 15063) });
		}

		private static StoryChoiceList Ch15IWillBeRescued()
		{
			return StoryChoiceList.FromResource("Kaden-Floats-on-River.png", new IStoryChoice[] { StoryChoice.FromResource("ch15IWillBeRescued", 16001) });
		}
	}
}