using System.Collections.Generic;
using Windows.Media.SpeechSynthesis;

namespace Phantom_of_the_West.Voice_Overs
{
	public class VoiceoverManager
	{
		public static VoiceoverManager MainManager
		{
			get;
			private set;
		} = new VoiceoverManager();

		private const string britishEnglish = "en-GB";

		private const string americanEnglish = "en-US";

		private const string frenchFrench = "fr-FR";

		private static VoiceInformation GetVoiceInfo(string language, VoiceGender gender)
		{
			VoiceInformation voiceInfo = SpeechSynthesizer.DefaultVoice;
			IReadOnlyList<VoiceInformation> voiceList = SpeechSynthesizer.AllVoices;
			foreach (VoiceInformation vi in voiceList)
			{
				int comparison = string.Compare(language, vi.Language, true);
				if (comparison == 0)
				{
					voiceInfo = vi;
					if (gender == vi.Gender)
					{
						break;
					}
				}
			}
			return voiceInfo;
		}

		public VoiceInformation mainVoice
		{
			get;
			set;
		} = null;

		public VoiceInformation enGBMaleVoice
		{
			get;
			private set;
		} = GetVoiceInfo(britishEnglish, VoiceGender.Male);

		public VoiceInformation enUSMaleVoice
		{
			get;
			private set;
		} = GetVoiceInfo(americanEnglish, VoiceGender.Male);

		public VoiceInformation frFRMaleVoice
		{
			get;
			private set;
		} = GetVoiceInfo(frenchFrench, VoiceGender.Male);

		private SpeechSynthesizer synthesizer = new SpeechSynthesizer();

		public IVoiceover MakeSynthesizedVoiceover(VoiceInformation voice, string text)
		{
			return new SynthesizedVoiceover(synthesizer, voice, text);
		}
	}
}
