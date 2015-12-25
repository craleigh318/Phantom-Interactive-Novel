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
	}
}