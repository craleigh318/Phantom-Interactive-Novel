using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class CaitlynMightBeGoodMother : StoryChoice
	{
		internal CaitlynMightBeGoodMother() : base(StoryChoice.GetLocalizedString("ch3CaitlynMightBeGoodMother"), 3072)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3TalkedWithCaitlyn = TalkWithCaitlyn.SaidMaybeGoodMother;
			base.Select();
		}
	}
}
