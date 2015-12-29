using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class Chapter3 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{3001, Ch3Title},
			{3002, Ch3IAwaken},
			{3003, Ch3SezjaGreetsMe},
			{3004, Ch3SezjaGreetsMePause},
			{3005, Ch3SezjaStartlesMe},
			{3006, Ch3SezjaAnswers},
			{3007, Ch3SezjaLeaves},
			{3008, Ch3IHaveToSignOut},
			{3009, Ch3PoliceWillBeSuspicious},
			{3010, Ch3IHaveToReturnToArcticon},
			{3011, Ch3MyWorkIsCutOut},
			{3012, Ch3ICallCaitlyn},
			{3013, Ch3CaitlynDoesNotRecognizeMe},
			{3014, Ch3ITellCaitlynIDrankElixir},
			{3015, Ch3CaitlynBelievesMe},
			{3016, Ch3IAskCaitlynToCome},
			{3017, Ch3CaitlynAgreesToCome},
			{3018, Ch3CaitlynComes},
			{3019, Ch3CaitlynNoticesMeAsOfficer},
			{3020, Ch3IAskToPossessCaitlyn},
			{3021, Ch3CaitlynHesitatesPossession},
			{3022, Ch3IJustifyPossession},
			{3023, Ch3CaitlynAsksMeToDisguiseAsInfant},
			{3024, Ch3IDiguiseAsInfant},
			{3025, Ch3CaitlynBringsMeToHotel},
			{3026, Ch3IEnterHotelRoomFromBlanket},
			{3027, Ch3CaitlynChecksOut},
			{3028, Ch3CaitlynTriesToShowReceptionistMe},
			{3029, Ch3ReceptionistLikesKatie},
			{3030, Ch3CaitlynLeavesHotel},
			{3031, Ch3CaitlynCannotBreastFeed},
			{3032, Ch3CaitlynDrivesOnHighway},
			{3033, Ch3CaitlynEntersArcticon},
			{3034, Ch3ILeaveBlanket},
			{3035, Ch3IWillOweCaitlynAFavor},
			{3036, Ch3IGoToHotel},
			{3037, Ch3IEnterHotelRoomFromCaitlyn},
			{3038, Ch3ICheckOut},
			{3039, Ch3IClaimToBeMyWife},
			{3040, Ch3ReceptionistDoubtsMe},
			{3041, Ch3IInsultReceptionist},
			{3042, Ch3IDriveOnHighway},
			{3043, Ch3IEnterArcticon},
			{3044, Ch3IDispossessCaitlyn},
			{3045, Ch3IConjureClothes},
			{3046, Ch3CaitlynDragsMyHand},
			{3047, Ch3YukioGreetsMe},
			{3048, Ch3CaitlynExplainsMyGhostliness},
			{3049, Ch3YukioIsAwed},
			{3050, Ch3CaitlynWantsToHelp},
			{3051, Ch3ILeaveCaitlynAndYukio},
			{3052, Ch3IGoHome},
			{3053, Ch3IRelax},
			{3054, Ch3BekShtiiGreetsMe},
			{3055, Ch3IKnowBekShtii},
			{3056, Ch3BekShtiiAsksMeToVisit},
			{3057, Ch3IsItWesternContinentalPark},
			{3058, Ch3BekShtiiAsksMeToStay},
			{3059, Ch3BekShtiiLeaves},
			{3060, Ch3EndDecision},
			{3061, Ch3CaitlynPlaysWithFoxtrot},
			{3062, Ch3IAmAllRight},
			{3063, Ch3CaitlynAsksIfIWasEmbarrassed},
			{3064, Ch3IAdmitEmbarrassment},
			{3065, Ch3CaitlynHugsMe},
			{3066, Ch3CanCaitlynAskPersonally},
			{3067, Ch3IReplyOK},
			{3068, Ch3WouldCaitlynBeGoodMother},
			{3069, Ch3IThink},
			{3070, Ch3CaitlynWouldBeGoodMother},
			{3071, Ch3CaitlynThanksMe},
			{3072, Ch3CaitlynAdmitsGoodIdea},
			{3073, Ch3CaitlynJustifiesMotherhood},
			{3074, Ch3HowDidCaitlynFeelPossession},
			{3075, Ch3CaitlynFeltLightheaded},
			{3076, Ch3IAscertainCaitlynsUnconciousness},
			{3077, Ch3CaitlynOnlySlept},
			{3078, Ch3IThankCaitlyn},
			{3079, Ch3CaitlynAcceptsThanks},
			{3080, Ch3HowDidIFeelDuringPossession},
			{3081, Ch3IEnjoyedPossession},
			{3082, Ch3CaitlynLikesBeingClose},
			{3083, Ch3CaitlynFeltWeird},
			{3084, Ch3WasCaitlynsQuestionWeird},
			{3085, Ch3ILikeTalkingWithCaitlyn},
			{3086, Ch3YukioWorks},
			{3087, Ch3IsYukioUnimpressed},
			{3088, Ch3YukioLecturesMe},
			{3089, Ch3ITakeCharge},
		};

		internal Chapter3() : base(dictionary, 3002)
		{
		}

		private static StoryChoiceList Ch3Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch3Title", 3002) });
		}

		private static StoryChoiceList Ch3IAwaken()
		{
			return StoryChoiceList.FromResource("Officer-Awakens.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IAwaken", 3003) });
		}

		private static StoryChoiceList Ch3SezjaGreetsMe()
		{
			return StoryChoiceList.FromResource("Officer-Lies-with-Sezja.png", new IStoryChoice[] { StoryChoice.FromResource("ch3SezjaGreetsMe", 3004) });
		}

		private static StoryChoiceList Ch3SezjaGreetsMePause()
		{
			return StoryChoiceList.FromResource("Officer-Lies-with-Sezja.png", new IStoryChoice[] { StoryChoice.FromResource("ellipsis", 3005) });
		}

		private static StoryChoiceList Ch3SezjaStartlesMe()
		{
			return StoryChoiceList.FromResource("Officer-Falls-from-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3SezjaStartlesMe", 3006) });
		}

		private static StoryChoiceList Ch3SezjaAnswers()
		{
			return StoryChoiceList.FromResource("Officer-Falls-from-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3SezjaAnswers", 3007) });
		}

		private static StoryChoiceList Ch3SezjaLeaves()
		{
			return StoryChoiceList.FromResource("Officer-Leans-over-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3SezjaLeaves", 3008) });
		}

		private static StoryChoiceList Ch3IHaveToSignOut()
		{
			return StoryChoiceList.FromResource("Officer-Leans-over-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IHaveToSignOut", 3009) });
		}

		private static StoryChoiceList Ch3PoliceWillBeSuspicious()
		{
			return StoryChoiceList.FromResource("Officer-Leans-over-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3PoliceWillBeSuspicious", 3010) });
		}

		private static StoryChoiceList Ch3IHaveToReturnToArcticon()
		{
			return StoryChoiceList.FromResource("Officer-Leans-over-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IHaveToReturnToArcticon", 3011) });
		}

		private static StoryChoiceList Ch3MyWorkIsCutOut()
		{
			return StoryChoiceList.FromResource("Officer-Leans-over-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3MyWorkIsCutOut", 3012) });
		}

		private static StoryChoiceList Ch3ICallCaitlyn()
		{
			return StoryChoiceList.FromResource("Officer-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ICallCaitlyn", 3013) });
		}

		private static StoryChoiceList Ch3CaitlynDoesNotRecognizeMe()
		{
			return StoryChoiceList.FromResource("Officer-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynDoesNotRecognizeMe", 3014) });
		}

		private static StoryChoiceList Ch3ITellCaitlynIDrankElixir()
		{
			return StoryChoiceList.FromResource("Officer-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ITellCaitlynIDrankElixir", 3015) });
		}

		private static StoryChoiceList Ch3CaitlynBelievesMe()
		{
			return StoryChoiceList.FromResource("Officer-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynBelievesMe", 3016) });
		}

		private static StoryChoiceList Ch3IAskCaitlynToCome()
		{
			return StoryChoiceList.FromResource("Officer-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IAskCaitlynToCome", 3017) });
		}

		private static StoryChoiceList Ch3CaitlynAgreesToCome()
		{
			return StoryChoiceList.FromResource("Officer-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynAgreesToCome", 3018) });
		}

		private static StoryChoiceList Ch3CaitlynComes()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynComes", 3019) });
		}

		private static StoryChoiceList Ch3CaitlynNoticesMeAsOfficer()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynNoticesMeAsOfficer", 3020) });
		}

		private static StoryChoiceList Ch3IAskToPossessCaitlyn()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IAskToPossessCaitlyn", 3021) });
		}

		private static StoryChoiceList Ch3CaitlynHesitatesPossession()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynHesitatesPossession", 3022) });
		}

		private static StoryChoiceList Ch3IJustifyPossession()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IJustifyPossession", 3023) });
		}

		private static StoryChoiceList Ch3CaitlynAsksMeToDisguiseAsInfant()
		{
			return StoryChoiceList.FromResource("Towel-in-Car.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynAsksMeToDisguiseAsInfant", 3024) });
		}

		private static StoryChoiceList Ch3IDiguiseAsInfant()
		{
			return StoryChoiceList.FromResource("Towel-in-Car.png", new IStoryChoice[] { new IDiguiseAsInfant(), new IRefuseToDiguiseAsInfant() });
		}

		private static StoryChoiceList Ch3CaitlynBringsMeToHotel()
		{
			return StoryChoiceList.FromResource("Infant-in-Car.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynBringsMeToHotel", 3026) });
		}

		private static StoryChoiceList Ch3IEnterHotelRoomFromBlanket()
		{
			return StoryChoiceList.FromResource("Infant-Crawls-Under-Door.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IEnterHotelRoomFromBlanket", 3027) });
		}

		private static StoryChoiceList Ch3CaitlynChecksOut()
		{
			return StoryChoiceList.FromResource("Caitlyn-with-Infant-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynChecksOut", 3028) });
		}

		private static StoryChoiceList Ch3CaitlynTriesToShowReceptionistMe()
		{
			return StoryChoiceList.FromResource("Infant-Shown-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynTriesToShowReceptionistMe", 3029) });
		}

		private static StoryChoiceList Ch3ReceptionistLikesKatie()
		{
			return StoryChoiceList.FromResource("Infant-Shown-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ReceptionistLikesKatie", 3030) });
		}

		private static StoryChoiceList Ch3CaitlynLeavesHotel()
		{
			return StoryChoiceList.FromResource("Infant-Shown-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynLeavesHotel", 3031) });
		}

		private static StoryChoiceList Ch3CaitlynCannotBreastFeed()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-on-Highway.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynCannotBreastFeed", 3032) });
		}

		private static StoryChoiceList Ch3CaitlynDrivesOnHighway()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-on-Highway.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynDrivesOnHighway", 3033) });
		}

		private static StoryChoiceList Ch3CaitlynEntersArcticon()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Arcticon.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynEntersArcticon", 3034) });
		}

		private static StoryChoiceList Ch3ILeaveBlanket()
		{
			return StoryChoiceList.FromResource("Kaden-First-Arrival-to-Arcticon.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ILeaveBlanket", 3045) });
		}

		private static StoryChoiceList Ch3IWillOweCaitlynAFavor()
		{
			return StoryChoiceList.FromResource("Towel-in-Car.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IWillOweCaitlynAFavor", 3036) });
		}

		private static StoryChoiceList Ch3IGoToHotel()
		{
			return StoryChoiceList.FromResource("Caitlyn-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IGoToHotel", 3037) });
		}

		private static StoryChoiceList Ch3IEnterHotelRoomFromCaitlyn()
		{
			return StoryChoiceList.FromResource("Caitlyn-Crawls-Under-Door.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IEnterHotelRoomFromCaitlyn", 3038) });
		}

		private static StoryChoiceList Ch3ICheckOut()
		{
			return StoryChoiceList.FromResource("Caitlyn-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ICheckOut", 3039) });
		}

		private static StoryChoiceList Ch3IClaimToBeMyWife()
		{
			return StoryChoiceList.FromResource("Caitlyn-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IClaimToBeMyWife", 3040) });
		}

		private static StoryChoiceList Ch3ReceptionistDoubtsMe()
		{
			return StoryChoiceList.FromResource("Caitlyn-Talks-to-Receptionist.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ReceptionistDoubtsMe", 3041) });
		}

		private static StoryChoiceList Ch3IInsultReceptionist()
		{
			return StoryChoiceList.FromResource("Caitlyn-Tosses-Key.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IInsultReceptionist", 3042) });
		}

		private static StoryChoiceList Ch3IDriveOnHighway()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-on-Highway.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IDriveOnHighway", 3043) });
		}

		private static StoryChoiceList Ch3IEnterArcticon()
		{
			return StoryChoiceList.FromResource("Caitlyn-Drives-to-Arcticon.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IEnterArcticon", 3044) });
		}

		private static StoryChoiceList Ch3IDispossessCaitlyn()
		{
			return StoryChoiceList.FromResource("Kaden-First-Arrival-to-Arcticon.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IDispossessCaitlyn", 3045) });
		}

		private static StoryChoiceList Ch3IConjureClothes()
		{
			return StoryChoiceList.FromResource("Kaden-First-Arrival-to-Arcticon.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IConjureClothes", 3046) });
		}

		private static StoryChoiceList Ch3CaitlynDragsMyHand()
		{
			return StoryChoiceList.FromResource("Kaden-First-Arrival-to-Arcticon.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynDragsMyHand", 3047) });
		}

		private static StoryChoiceList Ch3YukioGreetsMe()
		{
			return StoryChoiceList.FromResource("Yukio-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch3YukioGreetsMe", 3048) });
		}

		private static StoryChoiceList Ch3CaitlynExplainsMyGhostliness()
		{
			return StoryChoiceList.FromResource("Yukio-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynExplainsMyGhostliness", 3049) });
		}

		private static StoryChoiceList Ch3YukioIsAwed()
		{
			return StoryChoiceList.FromResource("Yukio-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch3YukioIsAwed", 3050) });
		}

		private static StoryChoiceList Ch3CaitlynWantsToHelp()
		{
			return StoryChoiceList.FromResource("Yukio-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynWantsToHelp", 3051) });
		}

		private static StoryChoiceList Ch3ILeaveCaitlynAndYukio()
		{
			return StoryChoiceList.FromResource("Yukio-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ILeaveCaitlynAndYukio", 3052) });
		}

		private static StoryChoiceList Ch3IGoHome()
		{
			return StoryChoiceList.FromResource("Kaden-on-Tram.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IGoHome", 3053) });
		}

		private static StoryChoiceList Ch3IRelax()
		{
			return StoryChoiceList.FromResource("Kaden-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IRelax", 3054) });
		}

		private static StoryChoiceList Ch3BekShtiiGreetsMe()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch3BekShtiiGreetsMe", 3055) });
		}

		private static StoryChoiceList Ch3IKnowBekShtii()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IKnowBekShtii", 3056) });
		}

		private static StoryChoiceList Ch3BekShtiiAsksMeToVisit()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch3BekShtiiAsksMeToVisit", 3057) });
		}

		private static StoryChoiceList Ch3IsItWesternContinentalPark()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IsItWesternContinentalPark", 3058) });
		}

		private static StoryChoiceList Ch3BekShtiiAsksMeToStay()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch3BekShtiiAsksMeToStay", 3059) });
		}

		private static StoryChoiceList Ch3BekShtiiLeaves()
		{
			return StoryChoiceList.FromResource("Kaden-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch3BekShtiiLeaves", 3060) });
		}

		private static StoryChoiceList Ch3EndDecision()
		{
			List<IStoryChoice> nextPages = new List<IStoryChoice>();
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			if (flags.Ch3TalkedWithCaitlyn == TalkWithCaitlyn.HasNotTalked)
			{
				nextPages.Add(StoryChoice.FromResource("ch3IVisitCaitlyn", 3061));
			}
			if (!flags.Ch3TalkedWithYukio)
			{
				nextPages.Add(new IVisitYukio());
			}
			nextPages.Add(StoryChoice.FromResource("ch3ISleep", 4001));
			StoryChoiceList newList = StoryChoiceList.FromResource("Kaden-on-Bed.png", nextPages);
			return newList;
		}

		private static StoryChoiceList Ch3CaitlynPlaysWithFoxtrot()
		{
			return StoryChoiceList.FromResource("Foxtrot-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynPlaysWithFoxtrot", 3062) });
		}

		private static StoryChoiceList Ch3IAmAllRight()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			if (flags.Ch3DroveWithCaitlyn == DriveWithCaitlyn.PossessedCaitlyn)
			{
				nextState = 3074;
			}
			else
			{
				nextState = 3063;
			}
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IAmAllRight", nextState) });
		}

		private static StoryChoiceList Ch3CaitlynAsksIfIWasEmbarrassed()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynAsksIfIWasEmbarrassed", 3064) });
		}

		private static StoryChoiceList Ch3IAdmitEmbarrassment()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IAdmitEmbarrassment", 3065) });
		}

		private static StoryChoiceList Ch3CaitlynHugsMe()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynHugsMe", 3066) });
		}

		private static StoryChoiceList Ch3CanCaitlynAskPersonally()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CanCaitlynAskPersonally", 3067) });
		}

		private static StoryChoiceList Ch3IReplyOK()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IReplyOK", 3068) });
		}

		private static StoryChoiceList Ch3WouldCaitlynBeGoodMother()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3WouldCaitlynBeGoodMother", 3069) });
		}

		private static StoryChoiceList Ch3IThink()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IThink", 3070) });
		}

		private static StoryChoiceList Ch3CaitlynWouldBeGoodMother()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { new CaitlynWouldBeGoodMother(), new CaitlynMightBeGoodMother() });
		}

		private static StoryChoiceList Ch3CaitlynThanksMe()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynThanksMe", 3073) });
		}

		private static StoryChoiceList Ch3CaitlynAdmitsGoodIdea()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynAdmitsGoodIdea", 3073) });
		}

		private static StoryChoiceList Ch3CaitlynJustifiesMotherhood()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynJustifiesMotherhood", 3085) });
		}

		private static StoryChoiceList Ch3HowDidCaitlynFeelPossession()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3HowDidCaitlynFeelPossession", 3075) });
		}

		private static StoryChoiceList Ch3CaitlynFeltLightheaded()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynFeltLightheaded", 3076) });
		}

		private static StoryChoiceList Ch3IAscertainCaitlynsUnconciousness()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IAscertainCaitlynsUnconciousness", 3077) });
		}

		private static StoryChoiceList Ch3CaitlynOnlySlept()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynOnlySlept", 3078) });
		}

		private static StoryChoiceList Ch3IThankCaitlyn()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IThankCaitlyn", 3079) });
		}

		private static StoryChoiceList Ch3CaitlynAcceptsThanks()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynAcceptsThanks", 3080) });
		}

		private static StoryChoiceList Ch3HowDidIFeelDuringPossession()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3HowDidIFeelDuringPossession", 3081) });
		}

		private static StoryChoiceList Ch3IEnjoyedPossession()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { new IEnjoyedPossession(), new PossessionFeltWeird() });
		}

		private static StoryChoiceList Ch3CaitlynLikesBeingClose()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynLikesBeingClose", 3084) });
		}

		private static StoryChoiceList Ch3CaitlynFeltWeird()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3CaitlynFeltWeird", 3084) });
		}

		private static StoryChoiceList Ch3WasCaitlynsQuestionWeird()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3WasCaitlynsQuestionWeird", 3085) });
		}

		private static StoryChoiceList Ch3ILikeTalkingWithCaitlyn()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Caitlyn.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ILikeTalkingWithCaitlyn", 3060) });
		}

		private static StoryChoiceList Ch3YukioWorks()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch3YukioWorks", 3087) });
		}

		private static StoryChoiceList Ch3IsYukioUnimpressed()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IsYukioUnimpressed", 3088) });
		}

		private static StoryChoiceList Ch3YukioLecturesMe()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch3YukioLecturesMe", 3089) });
		}

		private static StoryChoiceList Ch3ITakeCharge()
		{
			return StoryChoiceList.FromResource("Kaden-Talks-to-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch3ITakeCharge", 3060) });
		}
	}
}