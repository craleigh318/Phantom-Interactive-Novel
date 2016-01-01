using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_7
{
	internal class IWillKissVaNal : StoryChoice
	{
		internal IWillKissVaNal() : base(StoryChoice.GetLocalizedString("ch7IWillKissVaNal"), 7071)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch7KissedVaNal = VaNalKiss.Kissed;
			base.Select();
		}
	}
}
