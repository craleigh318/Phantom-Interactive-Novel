using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class IEnjoyedPossession : StoryChoice
	{
		internal IEnjoyedPossession() : base(StoryChoice.GetLocalizedString("ch3IEnjoyedPossession"), 3082)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3TalkedWithCaitlyn = TalkWithCaitlyn.EnjoyedPossession;
			base.Select();
		}
	}
}
