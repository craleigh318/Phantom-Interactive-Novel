using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class IPlayGuest : StoryChoice
	{
		internal IPlayGuest() : base(StoryChoice.GetLocalizedString("ch11IPlayGuest"), 11117)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch11HarassedAfterWorkout = WorkoutHarassment.PlayedAlong;
			base.Select();
		}
	}
}
