using Phantom_of_the_West.Voice_Overs;
using System.Collections.Generic;
using Windows.Media.SpeechSynthesis;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_14
{
	internal class Chapter14 : VoicedChapter
	{
		protected override VoiceInformation Voiceover
		{
			get
			{
				return VoiceoverManager.MainManager.frFRMaleVoice;
			}
		}

		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{14001, Ch14Title},
			{14002, Ch14TimeAgo},
			{14003, Ch14ItWasDusk},
			{14004, Ch14ArmyMarched},
			{14005, Ch14MenCarriedTorches},
			{14006, Ch14MenCarriedFirearms},
			{14007, Ch14NativesFled},
			{14008, Ch14ArmyReachedPyramid},
			{14009, Ch14PhantomArose},
			{14010, Ch14ElFantasma}
		};

		internal Chapter14() : base(dictionary, 14003)
		{
		}

		private static StoryChoiceList Ch14Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch14Title", 14002) });
		}

		private static StoryChoiceList Ch14TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch14TimeAgo", 14003) });
		}

		private static StoryChoiceList Ch14ItWasDusk()
		{
			return StoryChoiceList.FromResource("Warm-Bloody-Dusk.png", new IStoryChoice[] { StoryChoice.FromResource("ch14ItWasDusk", 14004) });
		}

		private static StoryChoiceList Ch14ArmyMarched()
		{
			return StoryChoiceList.FromResource("Conquistador-with-Torch.png", new IStoryChoice[] { StoryChoice.FromResource("ch14ArmyMarched", 14005) });
		}

		private static StoryChoiceList Ch14MenCarriedTorches()
		{
			return StoryChoiceList.FromResource("Conquistador-with-Torch.png", new IStoryChoice[] { StoryChoice.FromResource("ch14MenCarriedTorches", 14006) });
		}

		private static StoryChoiceList Ch14MenCarriedFirearms()
		{
			return StoryChoiceList.FromResource("Conquistador-with-Gun.png", new IStoryChoice[] { StoryChoice.FromResource("ch14MenCarriedFirearms", 14007) });
		}

		private static StoryChoiceList Ch14NativesFled()
		{
			return StoryChoiceList.FromResource("Natives-Flee.png", new IStoryChoice[] { StoryChoice.FromResource("ch14NativesFled", 14008) });
		}

		private static StoryChoiceList Ch14ArmyReachedPyramid()
		{
			return StoryChoiceList.FromResource("Warm-Bloody-Dusk.png", new IStoryChoice[] { StoryChoice.FromResource("ch14ArmyReachedPyramid", 14009) });
		}

		private static StoryChoiceList Ch14PhantomArose()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-from-Pyramid.png", new IStoryChoice[] { StoryChoice.FromResource("ch14PhantomArose", 14010) });
		}

		private static StoryChoiceList Ch14ElFantasma()
		{
			return StoryChoiceList.FromResource("Bek'Shtii-Phantom-from-Pyramid.png", new IStoryChoice[] { StoryChoice.FromResource("ch14ElFantasma", 15001) });
		}
	}
}
