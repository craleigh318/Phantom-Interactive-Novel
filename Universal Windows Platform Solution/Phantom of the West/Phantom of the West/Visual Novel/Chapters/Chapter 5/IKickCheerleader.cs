using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class IKickCheerleader : StoryChoice
	{
		internal IKickCheerleader() : base(StoryChoice.GetLocalizedString("ch5IKickCheerleader"), 5071)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5SparredWithCheerleader = CheerleaderSpar.Kicked;
			base.Select();
		}
	}
}
