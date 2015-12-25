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
			return StoryChoiceList.FromResource("Towel-in-Car.png", new IStoryChoice[] { StoryChoice.FromResource("ch3IDiguiseAsInfant", 3025), StoryChoice.FromResource("ch3IRefuseToDiguiseAsInfant", 3035) });
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
	}
}