using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0;
using System;
using System.Collections.Generic;
using Windows.UI.Xaml.Media.Imaging;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal delegate IStoryChoiceList StoryChoiceListDelegate();

	internal class ChapterSelector
	{
		private static Dictionary<int, Dictionary<int, StoryChoiceListDelegate>> idToChapter = new Dictionary<int, Dictionary<int, StoryChoiceListDelegate>>()
		{
			{0, Chapter0.IDToChoices}
		};

		internal static BitmapImage GetImgSrc(string imgName)
		{
			string uriString = "/Assets/Story Images/" + imgName;
			Uri uri = new Uri(uriString, UriKind.Relative);
			BitmapImage bmp = new BitmapImage(uri);
			return bmp;
		}

		internal static void GoToState(int id)
		{
			const int chapterMaxPages = 1000;
			int chapterNumber = id / chapterMaxPages;
			IStoryChoiceList nextList = null;
			if (idToChapter.ContainsKey(chapterNumber))
			{
				Dictionary<int, StoryChoiceListDelegate> chapter = idToChapter[chapterNumber];
				if (chapter.ContainsKey(id))
				{
					StoryChoiceListDelegate nextListDelegate = chapter[id];
					nextList = nextListDelegate();
				}
			}
			PotWVN.MainVN.CurrentChoices = nextList;
		}
	}
}
