using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_1;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_10;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_2;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_4;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_6;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_7;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_8;
using Phantom_of_the_West.Visual_Novel.Chapters.Chapter_9;
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
			{2, new Chapter2()},
			{3, new Chapter3()},
			{4, new Chapter4()},
			{5, new Chapter5()},
			{6, new Chapter6()},
			{7, new Chapter7()},
			{8, new Chapter8()},
			{9, new Chapter9()},
			{10, new Chapter10()},
			{11, new Chapter11()}
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
