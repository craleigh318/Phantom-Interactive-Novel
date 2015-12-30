using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class IWouldDisarm : StoryChoice
	{
		internal IWouldDisarm() : base(StoryChoice.GetLocalizedString("ch5IWouldDisarm"), 5064)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredCoach = PhysicalEducationAnswer.Disarm;
			base.Select();
		}
	}
}
