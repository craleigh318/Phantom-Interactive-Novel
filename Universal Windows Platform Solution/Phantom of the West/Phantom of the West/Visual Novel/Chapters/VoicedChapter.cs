using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class VoicedChapter : Chapter
	{
		int? firstVoiced;

		int? lastVoiced;

		internal VoicedChapter(Dictionary<int, StoryChoiceListDelegate> idToChoices, int? firstVoiced = null, int? lastVoiced = null) : base(idToChoices)
		{
			this.firstVoiced = firstVoiced;
			this.lastVoiced = lastVoiced;
		}

		public override IStoryChoiceList GoToState(int id)
		{
			StoryChoiceList nextList = base.GoToState(id) as StoryChoiceList;
			if ((nextList != null) && ((firstVoiced == null) || (id >= firstVoiced)) && ((lastVoiced == null) || (id <= lastVoiced)))
			{
				AddAudio(nextList);
			}
			return nextList;
		}
	}
}
