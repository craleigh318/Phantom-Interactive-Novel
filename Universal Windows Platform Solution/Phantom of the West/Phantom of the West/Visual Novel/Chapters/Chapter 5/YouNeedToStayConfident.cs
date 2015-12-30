using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class YouNeedToStayConfident : StoryChoice
	{
		internal YouNeedToStayConfident() : base(StoryChoice.GetLocalizedString("ch5YouNeedToStayConfident"), 5026)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredLiteratureStory = LiteratureStoryAnswer.StayConfident;
			base.Select();
		}
	}
}
