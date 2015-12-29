using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class IDiguiseAsInfant : StoryChoice
	{
		internal IDiguiseAsInfant() : base(StoryChoice.GetLocalizedString("ch3IDiguiseAsInfant"), 3025)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3DroveWithCaitlyn = DriveWithCaitlyn.DisguisedAsInfant;
			base.Select();
		}
	}
}
