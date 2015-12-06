using System;
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

		public int NumChoices
		{
			get
			{
				return choices.Length;
			}
		}

		internal StoryChoiceList(ImageSource image, IStoryChoice[] choices)
		{
			Image = image;
			this.choices = choices;
		}

		public IStoryChoice GetChoice(int index)
		{
			return choices[index];
		}
	}
}
