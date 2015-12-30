using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class YouAvoidStupidity : StoryChoice
	{
		internal YouAvoidStupidity() : base(StoryChoice.GetLocalizedString("ch5YouAvoidStupidity"), 5027)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredLiteratureStory = LiteratureStoryAnswer.AvoidStupidity;
			base.Select();
		}
	}
}
