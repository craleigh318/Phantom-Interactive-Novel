using Phantom_of_the_West.Voice_Overs;
using System.Collections.Generic;
using Windows.Media.SpeechSynthesis;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class Chapter : IChapter
	{
		protected VoiceInformation Voiceover
		{
			get
			{
				return VoiceoverManager.MainManager.MainVoice;
			}
		}

		internal Dictionary<int, StoryChoiceListDelegate> IDToChoices
		{
			get;
			private set;
		}

		internal Chapter(Dictionary<int, StoryChoiceListDelegate> idToChoices)
		{
			IDToChoices = idToChoices;
		}

		public IStoryChoiceList GoToState(int id)
		{
			Dictionary<int, StoryChoiceListDelegate> idToChoices = IDToChoices;
			if (idToChoices.ContainsKey(id))
			{
				StoryChoiceListDelegate nextListDelegate = idToChoices[id];
				StoryChoiceList nextList = nextListDelegate();
				AddAudio(nextList);
				return nextList;
			}
			return null;
		}

		private void AddAudio(StoryChoiceList nextList)
		{
			if (nextList.Count == 1)
			{
				VoiceInformation v = Voiceover;
				string text = nextList[0].Text;
				IVoiceover audio = VoiceoverManager.MainManager.MakeSynthesizedVoiceover(v, text);
				nextList.AudioComponent = audio;
			}
		}
	}
}
