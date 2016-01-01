using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_7
{
	internal class IAcceptHangout : StoryChoice
	{
		internal IAcceptHangout() : base(StoryChoice.GetLocalizedString("ch7IAcceptHangout"), 7022)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch7HungOutWithHewitt = HewittHangout.Accepted;
			base.Select();
		}
	}
}
