using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_1;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_2;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal delegate StoryChoiceList StoryChoiceListDelegate();

	internal class ChapterSelector
	{
		private static Dictionary<int, IChapter> idToChapter = new Dictionary<int, IChapter>()
		{
			{0, new Chapter0()},
			{1, new Chapter1()},
			{2, new Chapter2()}
		};

		internal static IStoryChoiceList GoToState(int id)
		{
			const int chapterMaxPages = 1000;
			int chapterNumber = id / chapterMaxPages;
			IStoryChoiceList nextList = null;
			if (idToChapter.ContainsKey(chapterNumber))
			{
				IChapter chapter = idToChapter[chapterNumber];
				nextList = chapter.GoToState(id);
			}
			return nextList;
		}
	}
}
