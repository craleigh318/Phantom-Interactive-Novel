using Phantom_of_the_West.Data_Management;
using System;
using System.Collections.Generic;
using Windows.Media.SpeechSynthesis;
using Windows.UI.Xaml.Controls;

namespace Phantom_of_the_West.Voice_Overs
{
	public class VoiceoverManager
	{
		public static VoiceoverManager MainManager
		{
			get;
			private set;
		} = new VoiceoverManager();

		private const string english = "en-";

		private const string britishEnglish = "en-GB";

		private const string americanEnglish = "en-US";

		private const string frenchFrench = "fr-FR";

		private static VoiceInformation GetVoiceInfo(string language, VoiceGender gender)
		{
			VoiceInformation voiceInfo = SpeechSynthesizer.DefaultVoice;
			IReadOnlyList<VoiceInformation> voiceList = SpeechSynthesizer.AllVoices;
			foreach (VoiceInformation vi in voiceList)
			{
				if (gender == vi.Gender)
				{
					voiceInfo = vi;
					int comparison = vi.Language.IndexOf(language, StringComparison.OrdinalIgnoreCase);
					if (comparison >= 0)
					{
						break;
					}
				}
			}
			return voiceInfo;
		}

		public VoiceInformation MainVoice
		{
			get
			{
				return enGBMaleVoice;
			}
		}

		public VoiceInformation enMaleVoice
		{
			get;
			private set;
		} = GetVoiceInfo(english, VoiceGender.Male);

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

		private MediaElement mediaElement = new MediaElement();

		public IVoiceover MakeSynthesizedVoiceover(VoiceInformation voice, string text)
		{
			return new SynthesizedVoiceover(synthesizer, voice, text);
		}

		public void StopSpeech()
		{
			mediaElement.Stop();
		}

		internal void PlayStream(SpeechSynthesisStream stream)
		{
			mediaElement.SetSource(stream, stream.ContentType);
			mediaElement.Play();
		}
	}
}
