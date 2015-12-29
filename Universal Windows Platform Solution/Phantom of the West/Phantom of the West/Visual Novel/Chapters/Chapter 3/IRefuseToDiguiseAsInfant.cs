using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class IRefuseToDiguiseAsInfant : StoryChoice
	{
		internal IRefuseToDiguiseAsInfant() : base(StoryChoice.GetLocalizedString("ch3IRefuseToDiguiseAsInfant"), 3035)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3DroveWithCaitlyn = DriveWithCaitlyn.PossessedCaitlyn;
			base.Select();
		}
	}
}
