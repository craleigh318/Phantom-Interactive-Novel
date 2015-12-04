using System;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_0
{
	internal class Chapter0
	{
		internal static Dictionary<int, StoryChoiceListDelegate> IDToChoices
		{
			get;
			private set;
		} = new Dictionary<int, StoryChoiceListDelegate>();
	}
}
