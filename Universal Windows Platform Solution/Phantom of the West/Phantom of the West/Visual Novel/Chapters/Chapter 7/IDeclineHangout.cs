using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_7
{
	internal class IDeclineHangout : StoryChoice
	{
		internal IDeclineHangout() : base(StoryChoice.GetLocalizedString("ch7IDeclineHangout"), 7022)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch7HungOutWithHewitt = HewittHangout.Refused;
			base.Select();
		}
	}
}
