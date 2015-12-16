using Phantom_of_the_West.Voice_Overs;
using System;
using System.Collections;
using System.Collections.Generic;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Media.Imaging;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class StoryChoiceList : IStoryChoiceList
	{
		internal static StoryChoiceList FromResource(string imageName, IStoryChoice[] choices)
		{
			BitmapImage imgSrc = GetImgSrc(imageName);
			StoryChoiceList newList = new StoryChoiceList(imgSrc, choices);
			return newList;
		}

		internal static BitmapImage GetImgSrc(string imgName)
		{
			string uriString = "ms-appx:///Assets/Story Images/" + imgName;
			Uri uri = new Uri(uriString);
			BitmapImage bmp = new BitmapImage(uri);
			return bmp;
		}

		private IStoryChoice[] choices;

		public ImageSource Image
		{
			get;
			private set;
		}

		internal IVoiceover AudioComponent
		{
			get;
			set;
		}

		public void PlayAudio()
		{
			IVoiceover audio = AudioComponent;
			if (audio != null)
			{
				audio.Play();
			}
		}

		public int Count
		{
			get
			{
				return choices.Length;
			}
		}

		public IStoryChoice this[int index]
		{
			get
			{
				return choices[index];
			}
		}

		public IEnumerator<IStoryChoice> GetEnumerator()
		{
			return GetEnumerator() as IEnumerator<IStoryChoice>;
		}

		IEnumerator IEnumerable.GetEnumerator()
		{
			return choices.GetEnumerator();
		}

		internal StoryChoiceList(ImageSource image, IStoryChoice[] choices, IVoiceover audioComponent = null)
		{
			Image = image;
			this.choices = choices;
			AudioComponent = audioComponent;
		}
	}
}
