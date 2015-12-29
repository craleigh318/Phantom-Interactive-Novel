using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class PossessionFeltWeird : StoryChoice
	{
		internal PossessionFeltWeird() : base(StoryChoice.GetLocalizedString("ch3PossessionFeltWeird"), 3083)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3TalkedWithCaitlyn = TalkWithCaitlyn.WeirdedByPossession;
			base.Select();
		}
	}
}
