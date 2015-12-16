using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class Chapter : IChapter
	{
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
				return nextListDelegate();
			}
			return null;
		}
	}
}
