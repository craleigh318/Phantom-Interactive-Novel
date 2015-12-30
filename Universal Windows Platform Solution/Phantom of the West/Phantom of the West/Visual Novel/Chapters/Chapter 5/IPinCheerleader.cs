using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class IPinCheerleader : StoryChoice
	{
		internal IPinCheerleader() : base(StoryChoice.GetLocalizedString("ch5IPinCheerleader"), 5070)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5SparredWithCheerleader = CheerleaderSpar.Pinned;
			base.Select();
		}
	}
}
