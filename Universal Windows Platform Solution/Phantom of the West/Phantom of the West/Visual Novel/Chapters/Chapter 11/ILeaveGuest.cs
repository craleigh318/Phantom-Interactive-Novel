using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class ILeaveGuest : StoryChoice
	{
		internal ILeaveGuest() : base(StoryChoice.GetLocalizedString("ch11ILeaveGuest"), 11114)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch11HarassedAfterWorkout = WorkoutHarassment.Left;
			base.Select();
		}
	}
}
