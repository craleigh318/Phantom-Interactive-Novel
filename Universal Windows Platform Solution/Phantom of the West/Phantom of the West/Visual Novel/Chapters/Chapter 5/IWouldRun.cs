using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class IWouldRun : StoryChoice
	{
		internal IWouldRun() : base(StoryChoice.GetLocalizedString("ch5IWouldRun"), 5063)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredCoach = PhysicalEducationAnswer.Run;
			base.Select();
		}
	}
}
