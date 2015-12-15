using Windows.Foundation;
using Windows.Media.SpeechSynthesis;

namespace Phantom_of_the_West.Voice_Overs
{
	internal class SynthesizedVoiceover : IVoiceover
	{
		private SpeechSynthesizer synthesizer;

		private VoiceInformation voice;

		private string text;

		internal SynthesizedVoiceover(SpeechSynthesizer synthesizer, VoiceInformation voice, string text)
		{
			this.synthesizer = synthesizer;
			this.voice = voice;
			this.text = text;
		}

		public void Play()
		{
			synthesizer.Voice = voice;
			IAsyncOperation<SpeechSynthesisStream> op = synthesizer.SynthesizeTextToStreamAsync(text);
		}
	}
}
