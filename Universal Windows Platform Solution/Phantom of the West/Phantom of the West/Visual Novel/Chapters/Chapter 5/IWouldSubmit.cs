using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class IWouldSubmit : StoryChoice
	{
		internal IWouldSubmit() : base(StoryChoice.GetLocalizedString("ch5IWouldSubmit"), 5062)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredCoach = PhysicalEducationAnswer.Submit;
			base.Select();
		}
	}
}
