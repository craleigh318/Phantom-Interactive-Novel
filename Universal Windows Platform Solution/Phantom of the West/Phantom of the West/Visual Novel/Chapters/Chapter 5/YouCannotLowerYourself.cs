using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class YouCannotLowerYourself : StoryChoice
	{
		internal YouCannotLowerYourself() : base(StoryChoice.GetLocalizedString("ch5YouCannotLowerYourself"), 5025)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredLiteratureStory = LiteratureStoryAnswer.PlayToStrengths;
			base.Select();
		}
	}
}
