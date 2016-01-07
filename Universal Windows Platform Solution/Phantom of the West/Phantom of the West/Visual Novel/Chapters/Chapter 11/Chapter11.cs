using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class Chapter11 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{11001, Ch11Title},
			{11002, Ch11BekShtiiWakesMe},
			{11003, Ch11ReunionWillBeTonight},
			{11004, Ch11ICannotPrepare},
			{11005, Ch11ICouldPossessSarah},
			{11006, Ch11IReallyWantRebecca},
			{11007, Ch11BekShtiiLeaves},
			{11008, Ch11IGoToLab},
			{11009, Ch11IWantUsToGoToHotel},
			{11010, Ch11YukioIsNotPaidToGoWithMe},
			{11011, Ch11IWillCallSupervisor},
			{11012, Ch11YukioShrugs},
			{11013, Ch11ICallSupervisor},
			{11014, Ch11WeDriveOutOfArcticon},
			{11015, Ch11YukioDrivesDownHighway},
			{11016, Ch11KNFNVanPassesUs},
			{11017, Ch11IRollDownWindow},
			{11018, Ch11IFlyToVan},
			{11019, Ch11ILandOnVan},
			{11020, Ch11VanEntersPark},
			{11021, Ch11VanStopsAtLodge},
			{11022, Ch11SarahLooksAtMirror},
			{11023, Ch11IPossessSarah},
			{11024, Ch11IExamineSarah},
			{11025, Ch11IGoToCrew},
			{11026, Ch11RangerComes},
			{11027, Ch11WeStartInterview},
			{11028, Ch11AnchorStarts},
			{11029, Ch11IIntroduceRanger},
			{11030, Ch11RangerSawMe},
			{11031, Ch11WasIAggressive},
			{11032, Ch11RangerWasToDetainMe},
			{11033, Ch11WasIDangerous},
			{11034, Ch11StandardProcedure},
			{11035, Ch11GoOnINod},
			{11036, Ch11ISaidIWasPhantomOfWest},
			{11037, Ch11WhatShouldIKnow},
			{11038, Ch11IShouldTurnIn},
			{11039, Ch11RangerMisunderstoodMe},
			{11040, Ch11ISignOff},
			{11041, Ch11AnchorThanksMe},
			{11042, Ch11WePackUpToVan},
			{11043, Ch11VanDrivesToNewFerando},
			{11044, Ch11IExitVan},
			{11045, Ch11IRegroupWithCaitlynAndYukio},
			{11046, Ch11SecretFantasy},
			{11047, Ch11YukioFlattersMe},
			{11048, Ch11ILeftMyWallet},
			{11049, Ch11YukioPullsBackWallet},
			{11050, Ch11WhatDoesYukioWant},
			{11051, Ch11WillIBookYukioARoom},
			{11052, Ch11SarahAlreadyBooked},
			{11053, Ch11YukioNeedsSeparateRoom},
			{11054, Ch11YukiItsFine},
			{11055, Ch11YukioGivesMeWallet},
			{11056, Ch11WeEnterHotel},
			{11057, Ch11YukioWaitsByEscalator},
			{11058, Ch11IGreetReceptionist},
			{11059, Ch11ReceptionistBooksRoom},
			{11060, Ch11HowDoIPay},
			{11061, Ch11IPayAsMyself},
			{11062, Ch11IGiveMyCardToReceptionist},
			{11063, Ch11IAmMyBoyfriend},
			{11064, Ch11ProveIt},
			{11065, Ch11IStare},
			{11066, Ch11IdentityTheft},
			{11067, Ch11AmICute},
			{11068, Ch11YeahIBlush},
			{11069, Ch11IGiveSarahsCardToReceptionist},
			{11070, Ch11ReceptionistKnowsMeAsSarah},
			{11071, Ch11YeahINod},
			{11072, Ch11ReceptionistIsFanOfSarah},
			{11073, Ch11LovelyFollower},
			{11074, Ch11ReceptionistSwipesSarahsCard},
			{11075, Ch11IGetKeycard},
			{11076, Ch11IGoToEscalator},
			{11077, Ch11IGiveYukioKeycard},
			{11078, Ch11WhereDoWeEat},
			{11079, Ch11WeGoToHabitat},
			{11080, Ch11IAcceptYukiosApology},
			{11081, Ch11HostGreetsUs},
			{11082, Ch11WeSitAtHabitat},
			{11083, Ch11INeedToWatchSarahsWeight},
			{11084, Ch11SarahWillBeFine},
			{11085, Ch11YukioIsLuckyToBeWithUs},
			{11086, Ch11IEatBurger},
			{11087, Ch11HabitatDims},
			{11088, Ch11FakeThunder},
			{11089, Ch11FakeMonkey},
			{11090, Ch11HabitatIsLame},
			{11091, Ch11IFinishEating},
			{11092, Ch11WeGoUpstairs},
			{11093, Ch11IEnterHotelRoom},
			{11094, Ch11IExamineSarahsRoom},
			{11095, Ch11ICheckSarahsCloset},
			{11096, Ch11IWillExcercise},
			{11097, Ch11IChangeIntoAthleticWear},
			{11098, Ch11ILookAtHotelMirror},
			{11099, Ch11IWorePonytailAsAnanya},
			{11100, Ch11ITieSarahsHair},
			{11101, Ch11IKnockForCaitlyn},
			{11102, Ch11CaitlynOpensDoor},
			{11103, Ch11WillCaitlynExcerciseWithMe},
			{11104, Ch11CaitlynDoesNotExcerciseWithMe},
			{11105, Ch11IEnterHealthClub},
			{11106, Ch11ILookForTreadmill},
			{11107, Ch11IRunOnTreadmill},
			{11108, Ch11IGetOffTreadmill},
			{11109, Ch11GuestApproachesMe},
			{11110, Ch11GuestFlirts},
			{11111, Ch11AmIGoodOrBad},
			{11112, Ch11GuestWastesMyTime},
			{11113, Ch11ILeaveGuest},
			{11114, Ch11IAmGoodGirl},
			{11115, Ch11IPushGuest},
			{11116, Ch11GuestWillNotForget},
			{11117, Ch11IAmNaughtyFemale},
			{11118, Ch11GladToHearIt},
			{11119, Ch11IWrapGuest},
			{11120, Ch11WhatIsMyProblem},
			{11121, Ch11GuestAskedForIt},
			{11122, Ch11ILeaveHealthClub},
			{11123, Ch11IRelax},
			{11124, Ch11IWillShower},
			{11125, Ch11IShouldCool},
			{11126, Ch11ILayNewClothes},
			{11127, Ch11IGetTowel},
			{11128, Ch11IAdjustTemperature},
			{11129, Ch11IShower},
			{11130, Ch11IFeelGood},
			{11131, Ch11IDry},
			{11132, Ch11NewNewsSegment},
			{11133, Ch11SeawallIntroduced},
			{11134, Ch11CameraShowsSeawall},
			{11135, Ch11MayorIsCriticized},
			{11136, Ch11Potholes},
			{11137, Ch11MayorsDefense},
			{11138, Ch11ITurnOffTV},
			{11139, Ch11IWearFormalwear},
		};

		internal Chapter11() : base(dictionary, 11002)
		{
		}

		private static StoryChoiceList Ch11Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch11Title", 11002) });
		}

		private static StoryChoiceList Ch11BekShtiiWakesMe()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-with-Flyer.png", new IStoryChoice[] { StoryChoice.FromResource("ch11BekShtiiWakesMe", 11003) });
		}

		private static StoryChoiceList Ch11ReunionWillBeTonight()
		{
			return StoryChoiceList.FromResource("Kaden-Reads-Flyer.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ReunionWillBeTonight", 11004) });
		}

		private static StoryChoiceList Ch11ICannotPrepare()
		{
			return StoryChoiceList.FromResource("Kaden-Reads-Flyer.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ICannotPrepare", 11005) });
		}

		private static StoryChoiceList Ch11ICouldPossessSarah()
		{
			return StoryChoiceList.FromResource("Kaden-Reads-Flyer.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ICouldPossessSarah", 11006) });
		}

		private static StoryChoiceList Ch11IReallyWantRebecca()
		{
			return StoryChoiceList.FromResource("Kaden-Reads-Flyer.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IReallyWantRebecca", 11007) });
		}

		private static StoryChoiceList Ch11BekShtiiLeaves()
		{
			return StoryChoiceList.FromResource("Kaden-Reads-Flyer.png", new IStoryChoice[] { StoryChoice.FromResource("ch11BekShtiiLeaves", 11008) });
		}

		private static StoryChoiceList Ch11IGoToLab()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGoToLab", 11009) });
		}

		private static StoryChoiceList Ch11IWantUsToGoToHotel()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IWantUsToGoToHotel", 11010) });
		}

		private static StoryChoiceList Ch11YukioIsNotPaidToGoWithMe()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioIsNotPaidToGoWithMe", 11011) });
		}

		private static StoryChoiceList Ch11IWillCallSupervisor()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IWillCallSupervisor", 11012) });
		}

		private static StoryChoiceList Ch11YukioShrugs()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioShrugs", 11013) });
		}

		private static StoryChoiceList Ch11ICallSupervisor()
		{
			return StoryChoiceList.FromResource("Kaden-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ICallSupervisor", 11014) });
		}

		private static StoryChoiceList Ch11WeDriveOutOfArcticon()
		{
			return StoryChoiceList.FromResource("Kaden-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WeDriveOutOfArcticon", 11015) });
		}

		private static StoryChoiceList Ch11YukioDrivesDownHighway()
		{
			return StoryChoiceList.FromResource("Yukio-Drives.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioDrivesDownHighway", 11016) });
		}

		private static StoryChoiceList Ch11KNFNVanPassesUs()
		{
			return StoryChoiceList.FromResource("Yukio-Drives.png", new IStoryChoice[] { StoryChoice.FromResource("ch11KNFNVanPassesUs", 11017) });
		}

		private static StoryChoiceList Ch11IRollDownWindow()
		{
			return StoryChoiceList.FromResource("Phantom-Car-Window.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IRollDownWindow", 11018) });
		}

		private static StoryChoiceList Ch11IFlyToVan()
		{
			return StoryChoiceList.FromResource("Jump-onto-News-Van.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IFlyToVan", 11019) });
		}

		private static StoryChoiceList Ch11ILandOnVan()
		{
			return StoryChoiceList.FromResource("Phantom-Underneath-Van.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ILandOnVan", 11020) });
		}

		private static StoryChoiceList Ch11VanEntersPark()
		{
			return StoryChoiceList.FromResource("Phantom-Underneath-Van.png", new IStoryChoice[] { StoryChoice.FromResource("ch11VanEntersPark", 11021) });
		}

		private static StoryChoiceList Ch11VanStopsAtLodge()
		{
			return StoryChoiceList.FromResource("Phantom-Underneath-Van-Grass.png", new IStoryChoice[] { StoryChoice.FromResource("ch11VanStopsAtLodge", 11022) });
		}

		private static StoryChoiceList Ch11SarahLooksAtMirror()
		{
			return StoryChoiceList.FromResource("Phantom-Underneath-Van-Grass.png", new IStoryChoice[] { StoryChoice.FromResource("ch11SarahLooksAtMirror", 11023) });
		}

		private static StoryChoiceList Ch11IPossessSarah()
		{
			return StoryChoiceList.FromResource("Sarah-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IPossessSarah", 11024) });
		}

		private static StoryChoiceList Ch11IExamineSarah()
		{
			return StoryChoiceList.FromResource("Sarah-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IExamineSarah", 11025) });
		}

		private static StoryChoiceList Ch11IGoToCrew()
		{
			return StoryChoiceList.FromResource("News-Crew-Preparation.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGoToCrew", 11026) });
		}

		private static StoryChoiceList Ch11RangerComes()
		{
			return StoryChoiceList.FromResource("News-Crew-Preparation.png", new IStoryChoice[] { StoryChoice.FromResource("ch11RangerComes", 11027) });
		}

		private static StoryChoiceList Ch11WeStartInterview()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WeStartInterview", 11028) });
		}

		private static StoryChoiceList Ch11AnchorStarts()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11AnchorStarts", 11029) });
		}

		private static StoryChoiceList Ch11IIntroduceRanger()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IIntroduceRanger", 11030) });
		}

		private static StoryChoiceList Ch11RangerSawMe()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11RangerSawMe", 11031) });
		}

		private static StoryChoiceList Ch11WasIAggressive()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WasIAggressive", 11032) });
		}

		private static StoryChoiceList Ch11RangerWasToDetainMe()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11RangerWasToDetainMe", 11033) });
		}

		private static StoryChoiceList Ch11WasIDangerous()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WasIDangerous", 11034) });
		}

		private static StoryChoiceList Ch11StandardProcedure()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11StandardProcedure", 11035) });
		}

		private static StoryChoiceList Ch11GoOnINod()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GoOnINod", 11036) });
		}

		private static StoryChoiceList Ch11ISaidIWasPhantomOfWest()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ISaidIWasPhantomOfWest", 11037) });
		}

		private static StoryChoiceList Ch11WhatShouldIKnow()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WhatShouldIKnow", 11038) });
		}

		private static StoryChoiceList Ch11IShouldTurnIn()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IShouldTurnIn", 11039) });
		}

		private static StoryChoiceList Ch11RangerMisunderstoodMe()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11RangerMisunderstoodMe", 11040) });
		}

		private static StoryChoiceList Ch11ISignOff()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ISignOff", 11041) });
		}

		private static StoryChoiceList Ch11AnchorThanksMe()
		{
			return StoryChoiceList.FromResource("Sarah-Interviews-Ranger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11AnchorThanksMe", 11042) });
		}

		private static StoryChoiceList Ch11WePackUpToVan()
		{
			return StoryChoiceList.FromResource("Sarah-Return-to-Van.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WePackUpToVan", 11043) });
		}

		private static StoryChoiceList Ch11VanDrivesToNewFerando()
		{
			return StoryChoiceList.FromResource("Van-Drives-to-City.png", new IStoryChoice[] { StoryChoice.FromResource("ch11VanDrivesToNewFerando", 11044) });
		}

		private static StoryChoiceList Ch11IExitVan()
		{
			return StoryChoiceList.FromResource("Van-Stops-at-Hotel.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IExitVan", 11045) });
		}

		private static StoryChoiceList Ch11IRegroupWithCaitlynAndYukio()
		{
			return StoryChoiceList.FromResource("Sarah-at-Hotel-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IRegroupWithCaitlynAndYukio", 11046) });
		}

		private static StoryChoiceList Ch11SecretFantasy()
		{
			return StoryChoiceList.FromResource("Sarah-at-Hotel-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch11SecretFantasy", 11047) });
		}

		private static StoryChoiceList Ch11YukioFlattersMe()
		{
			return StoryChoiceList.FromResource("Sarah-at-Hotel-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioFlattersMe", 11048) });
		}

		private static StoryChoiceList Ch11ILeftMyWallet()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ILeftMyWallet", 11049) });
		}

		private static StoryChoiceList Ch11YukioPullsBackWallet()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioPullsBackWallet", 11050) });
		}

		private static StoryChoiceList Ch11WhatDoesYukioWant()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WhatDoesYukioWant", 11051) });
		}

		private static StoryChoiceList Ch11WillIBookYukioARoom()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WillIBookYukioARoom", 11052) });
		}

		private static StoryChoiceList Ch11SarahAlreadyBooked()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11SarahAlreadyBooked", 11053) });
		}

		private static StoryChoiceList Ch11YukioNeedsSeparateRoom()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioNeedsSeparateRoom", 11054) });
		}

		private static StoryChoiceList Ch11YukiItsFine()
		{
			return StoryChoiceList.FromResource("Yukio-Withholds-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukiItsFine", 11055) });
		}

		private static StoryChoiceList Ch11YukioGivesMeWallet()
		{
			return StoryChoiceList.FromResource("Yukio-Gives-Sarah-Wallet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioGivesMeWallet", 11056) });
		}

		private static StoryChoiceList Ch11WeEnterHotel()
		{
			return StoryChoiceList.FromResource("Sarah-in-Lobby.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WeEnterHotel", 11057) });
		}

		private static StoryChoiceList Ch11YukioWaitsByEscalator()
		{
			return StoryChoiceList.FromResource("Sarah-in-Lobby.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioWaitsByEscalator", 11058) });
		}

		private static StoryChoiceList Ch11IGreetReceptionist()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGreetReceptionist", 11059) });
		}

		private static StoryChoiceList Ch11ReceptionistBooksRoom()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ReceptionistBooksRoom", 11060) });
		}

		private static StoryChoiceList Ch11HowDoIPay()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11HowDoIPay", 11061) });
		}

		private static StoryChoiceList Ch11IPayAsMyself()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { new IPayAsMyself(), new IPayAsSarah() });
		}

		private static StoryChoiceList Ch11IGiveMyCardToReceptionist()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGiveMyCardToReceptionist", 11063) });
		}

		private static StoryChoiceList Ch11IAmMyBoyfriend()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IAmMyBoyfriend", 11064) });
		}

		private static StoryChoiceList Ch11ProveIt()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ProveIt", 11065) });
		}

		private static StoryChoiceList Ch11IStare()
		{
			return StoryChoiceList.FromResource("Sarah-Stares.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IStare", 11066) });
		}

		private static StoryChoiceList Ch11IdentityTheft()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IdentityTheft", 11067) });
		}

		private static StoryChoiceList Ch11AmICute()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11AmICute", 11068) });
		}

		private static StoryChoiceList Ch11YeahIBlush()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YeahIBlush", 11075) });
		}

		private static StoryChoiceList Ch11IGiveSarahsCardToReceptionist()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGiveSarahsCardToReceptionist", 11070) });
		}

		private static StoryChoiceList Ch11ReceptionistKnowsMeAsSarah()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ReceptionistKnowsMeAsSarah", 11071) });
		}

		private static StoryChoiceList Ch11YeahINod()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YeahINod", 11072) });
		}

		private static StoryChoiceList Ch11ReceptionistIsFanOfSarah()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ReceptionistIsFanOfSarah", 11073) });
		}

		private static StoryChoiceList Ch11LovelyFollower()
		{
			return StoryChoiceList.FromResource("Sarah-Autographs-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11LovelyFollower", 11074) });
		}

		private static StoryChoiceList Ch11ReceptionistSwipesSarahsCard()
		{
			return StoryChoiceList.FromResource("Receptionist-Examines-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ReceptionistSwipesSarahsCard", 11075) });
		}

		private static StoryChoiceList Ch11IGetKeycard()
		{
			return StoryChoiceList.FromResource("Sarah-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGetKeycard", 11076) });
		}

		private static StoryChoiceList Ch11IGoToEscalator()
		{
			return StoryChoiceList.FromResource("Sarah-Gives-Yukio-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGoToEscalator", 11077) });
		}

		private static StoryChoiceList Ch11IGiveYukioKeycard()
		{
			return StoryChoiceList.FromResource("Sarah-Gives-Yukio-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGiveYukioKeycard", 11078) });
		}

		private static StoryChoiceList Ch11WhereDoWeEat()
		{
			return StoryChoiceList.FromResource("Sarah-Gives-Yukio-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WhereDoWeEat", 11079) });
		}

		private static StoryChoiceList Ch11WeGoToHabitat()
		{
			return StoryChoiceList.FromResource("Sarah-Gives-Yukio-Card.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WeGoToHabitat", 11080) });
		}

		private static StoryChoiceList Ch11IAcceptYukiosApology()
		{
			return StoryChoiceList.FromResource("Sarah-Walks-by-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IAcceptYukiosApology", 11081) });
		}

		private static StoryChoiceList Ch11HostGreetsUs()
		{
			return StoryChoiceList.FromResource("Habitat-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch11HostGreetsUs", 11082) });
		}

		private static StoryChoiceList Ch11WeSitAtHabitat()
		{
			return StoryChoiceList.FromResource("Habitat-Menu.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WeSitAtHabitat", 11083) });
		}

		private static StoryChoiceList Ch11INeedToWatchSarahsWeight()
		{
			return StoryChoiceList.FromResource("Habitat-Menu.png", new IStoryChoice[] { StoryChoice.FromResource("ch11INeedToWatchSarahsWeight", 11084) });
		}

		private static StoryChoiceList Ch11SarahWillBeFine()
		{
			return StoryChoiceList.FromResource("Habitat-Menu.png", new IStoryChoice[] { StoryChoice.FromResource("ch11SarahWillBeFine", 11085) });
		}

		private static StoryChoiceList Ch11YukioIsLuckyToBeWithUs()
		{
			return StoryChoiceList.FromResource("Habitat-Server.png", new IStoryChoice[] { StoryChoice.FromResource("ch11YukioIsLuckyToBeWithUs", 11086) });
		}

		private static StoryChoiceList Ch11IEatBurger()
		{
			return StoryChoiceList.FromResource("Sarah-Burger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IEatBurger", 11087) });
		}

		private static StoryChoiceList Ch11HabitatDims()
		{
			return StoryChoiceList.FromResource("Sarah-Burger-Dark.png", new IStoryChoice[] { StoryChoice.FromResource("ch11HabitatDims", 11088) });
		}

		private static StoryChoiceList Ch11FakeThunder()
		{
			return StoryChoiceList.FromResource("Sarah-Burger-Dark.png", new IStoryChoice[] { StoryChoice.FromResource("ch11FakeThunder", 11089) });
		}

		private static StoryChoiceList Ch11FakeMonkey()
		{
			return StoryChoiceList.FromResource("Sarah-Burger-Dark.png", new IStoryChoice[] { StoryChoice.FromResource("ch11FakeMonkey", 11090) });
		}

		private static StoryChoiceList Ch11HabitatIsLame()
		{
			return StoryChoiceList.FromResource("Sarah-Burger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11HabitatIsLame", 11091) });
		}

		private static StoryChoiceList Ch11IFinishEating()
		{
			return StoryChoiceList.FromResource("Sarah-Burger.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IFinishEating", 11092) });
		}

		private static StoryChoiceList Ch11WeGoUpstairs()
		{
			return StoryChoiceList.FromResource("Sarah-Caitlyn-Yukio-Elevator.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WeGoUpstairs", 11093) });
		}

		private static StoryChoiceList Ch11IEnterHotelRoom()
		{
			return StoryChoiceList.FromResource("Sarah-Caitlyn-Yukio-to-Hotel-Rooms.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IEnterHotelRoom", 11094) });
		}

		private static StoryChoiceList Ch11IExamineSarahsRoom()
		{
			return StoryChoiceList.FromResource("Sarah-Hotel-Room.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IExamineSarahsRoom", 11095) });
		}

		private static StoryChoiceList Ch11ICheckSarahsCloset()
		{
			return StoryChoiceList.FromResource("Sarah-Closet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ICheckSarahsCloset", 11096) });
		}

		private static StoryChoiceList Ch11IWillExcercise()
		{
			return StoryChoiceList.FromResource("Sarah-Closet.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IWillExcercise", 11097) });
		}

		private static StoryChoiceList Ch11IChangeIntoAthleticWear()
		{
			return StoryChoiceList.FromResource("Sarah-Athletic.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IChangeIntoAthleticWear", 11098) });
		}

		private static StoryChoiceList Ch11ILookAtHotelMirror()
		{
			return StoryChoiceList.FromResource("Sarah-Athletic.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ILookAtHotelMirror", 11099) });
		}

		private static StoryChoiceList Ch11IWorePonytailAsAnanya()
		{
			return StoryChoiceList.FromResource("Sarah-Athletic.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IWorePonytailAsAnanya", 11100) });
		}

		private static StoryChoiceList Ch11ITieSarahsHair()
		{
			return StoryChoiceList.FromResource("Sarah-Athletic-Ponytail.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ITieSarahsHair", 11101) });
		}

		private static StoryChoiceList Ch11IKnockForCaitlyn()
		{
			return StoryChoiceList.FromResource("Athletic-Sarah-Knock-Door.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IKnockForCaitlyn", 11102) });
		}

		private static StoryChoiceList Ch11CaitlynOpensDoor()
		{
			return StoryChoiceList.FromResource("Caitlyn-Greets-Athletic-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11CaitlynOpensDoor", 11103) });
		}

		private static StoryChoiceList Ch11WillCaitlynExcerciseWithMe()
		{
			return StoryChoiceList.FromResource("Caitlyn-Greets-Athletic-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WillCaitlynExcerciseWithMe", 11104) });
		}

		private static StoryChoiceList Ch11CaitlynDoesNotExcerciseWithMe()
		{
			return StoryChoiceList.FromResource("Caitlyn-Greets-Athletic-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11CaitlynDoesNotExcerciseWithMe", 11105) });
		}

		private static StoryChoiceList Ch11IEnterHealthClub()
		{
			return StoryChoiceList.FromResource("Health-Club-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IEnterHealthClub", 11106) });
		}

		private static StoryChoiceList Ch11ILookForTreadmill()
		{
			return StoryChoiceList.FromResource("Sarah-Sees-Treadmill.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ILookForTreadmill", 11107) });
		}

		private static StoryChoiceList Ch11IRunOnTreadmill()
		{
			return StoryChoiceList.FromResource("Sarah-Runs-Treadmill.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IRunOnTreadmill", 11108) });
		}

		private static StoryChoiceList Ch11IGetOffTreadmill()
		{
			return StoryChoiceList.FromResource("Sarah-Runs-Treadmill.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGetOffTreadmill", 11109) });
		}

		private static StoryChoiceList Ch11GuestApproachesMe()
		{
			return StoryChoiceList.FromResource("Sarah-Encounters-Guest.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GuestApproachesMe", 11110) });
		}

		private static StoryChoiceList Ch11GuestFlirts()
		{
			return StoryChoiceList.FromResource("Sarah-Encounters-Guest.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GuestFlirts", 11111) });
		}

		private static StoryChoiceList Ch11AmIGoodOrBad()
		{
			return StoryChoiceList.FromResource("Guest-Traps-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11AmIGoodOrBad", 11112) });
		}

		private static StoryChoiceList Ch11GuestWastesMyTime()
		{
			return StoryChoiceList.FromResource("Guest-Traps-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GuestWastesMyTime", 11113) });
		}

		private static StoryChoiceList Ch11ILeaveGuest()
		{
			return StoryChoiceList.FromResource("Guest-Traps-Sarah.png", new IStoryChoice[] { new ILeaveGuest(), new IPlayGuest() });
		}

		private static StoryChoiceList Ch11IAmGoodGirl()
		{
			return StoryChoiceList.FromResource("Guest-Traps-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IAmGoodGirl", 11115) });
		}

		private static StoryChoiceList Ch11IPushGuest()
		{
			return StoryChoiceList.FromResource("Sarah-Pushes-Guest.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IPushGuest", 11116) });
		}

		private static StoryChoiceList Ch11GuestWillNotForget()
		{
			return StoryChoiceList.FromResource("Guest-Falls.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GuestWillNotForget", 11122) });
		}

		private static StoryChoiceList Ch11IAmNaughtyFemale()
		{
			return StoryChoiceList.FromResource("Guest-Traps-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IAmNaughtyFemale", 11118) });
		}

		private static StoryChoiceList Ch11GladToHearIt()
		{
			return StoryChoiceList.FromResource("Guest-Traps-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GladToHearIt", 11119) });
		}

		private static StoryChoiceList Ch11IWrapGuest()
		{
			return StoryChoiceList.FromResource("Sarah-Wraps-Guest.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IWrapGuest", 11120) });
		}

		private static StoryChoiceList Ch11WhatIsMyProblem()
		{
			return StoryChoiceList.FromResource("Guest-Falls.png", new IStoryChoice[] { StoryChoice.FromResource("ch11WhatIsMyProblem", 11121) });
		}

		private static StoryChoiceList Ch11GuestAskedForIt()
		{
			return StoryChoiceList.FromResource("Guest-Falls.png", new IStoryChoice[] { StoryChoice.FromResource("ch11GuestAskedForIt", 11122) });
		}

		private static StoryChoiceList Ch11ILeaveHealthClub()
		{
			return StoryChoiceList.FromResource("Fitness-Crowd.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ILeaveHealthClub", 11123) });
		}

		private static StoryChoiceList Ch11IRelax()
		{
			return StoryChoiceList.FromResource("Athletic-Sarah-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IRelax", 11124) });
		}

		private static StoryChoiceList Ch11IWillShower()
		{
			List<IStoryChoice> nextPages = new List<IStoryChoice>();
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			if (flags.StoryRoute == Route.Phantom)
			{
				nextPages.Add(new IWillShower());
			}
			nextPages.Add(new IWatchTV());
			StoryChoiceList newList = StoryChoiceList.FromResource("Athletic-Sarah-on-Bed.png", nextPages);
			return newList;
		}

		private static StoryChoiceList Ch11IShouldCool()
		{
			return StoryChoiceList.FromResource("Athletic-Sarah-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IShouldCool", 11126) });
		}

		private static StoryChoiceList Ch11ILayNewClothes()
		{
			return StoryChoiceList.FromResource("Sarah-Gets-Towel.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ILayNewClothes", 11127) });
		}

		private static StoryChoiceList Ch11IGetTowel()
		{
			return StoryChoiceList.FromResource("Sarah-Gets-Towel.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IGetTowel", 11128) });
		}

		private static StoryChoiceList Ch11IAdjustTemperature()
		{
			return StoryChoiceList.FromResource("Sarah-Starts-Shower.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IAdjustTemperature", 11129) });
		}

		private static StoryChoiceList Ch11IShower()
		{
			return StoryChoiceList.FromResource("Sarah-in-Shower.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IShower", 11130) });
		}

		private static StoryChoiceList Ch11IFeelGood()
		{
			return StoryChoiceList.FromResource("Sarah-in-Shower.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IFeelGood", 11131) });
		}

		private static StoryChoiceList Ch11IDry()
		{
			return StoryChoiceList.FromResource("Sarah-Wears-Towel.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IDry", 11139) });
		}

		private static StoryChoiceList Ch11NewNewsSegment()
		{
			return StoryChoiceList.FromResource("TV-Seawall-Top.png", new IStoryChoice[] { StoryChoice.FromResource("ch11NewNewsSegment", 11133) });
		}

		private static StoryChoiceList Ch11SeawallIntroduced()
		{
			return StoryChoiceList.FromResource("TV-Seawall-Top.png", new IStoryChoice[] { StoryChoice.FromResource("ch11SeawallIntroduced", 11134) });
		}

		private static StoryChoiceList Ch11CameraShowsSeawall()
		{
			return StoryChoiceList.FromResource("TV-Seawall-Bottom.png", new IStoryChoice[] { StoryChoice.FromResource("ch11CameraShowsSeawall", 11135) });
		}

		private static StoryChoiceList Ch11MayorIsCriticized()
		{
			return StoryChoiceList.FromResource("TV-Seawall-Bottom.png", new IStoryChoice[] { StoryChoice.FromResource("ch11MayorIsCriticized", 11136) });
		}

		private static StoryChoiceList Ch11Potholes()
		{
			return StoryChoiceList.FromResource("TV-Cars.png", new IStoryChoice[] { StoryChoice.FromResource("ch11Potholes", 11137) });
		}

		private static StoryChoiceList Ch11MayorsDefense()
		{
			return StoryChoiceList.FromResource("TV-Mayor.png", new IStoryChoice[] { StoryChoice.FromResource("ch11MayorsDefense", 11138) });
		}

		private static StoryChoiceList Ch11ITurnOffTV()
		{
			return StoryChoiceList.FromResource("TV-Mayor.png", new IStoryChoice[] { StoryChoice.FromResource("ch11ITurnOffTV", 11139) });
		}

		private static StoryChoiceList Ch11IWearFormalwear()
		{
			return StoryChoiceList.FromResource("Sarah-Formal.png", new IStoryChoice[] { StoryChoice.FromResource("ch11IWearFormalwear", 12001) });
		}
	}
}
