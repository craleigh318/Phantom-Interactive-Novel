using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class CaitlynWouldBeGoodMother : StoryChoice
	{
		internal CaitlynWouldBeGoodMother() : base(StoryChoice.GetLocalizedString("ch3CaitlynWouldBeGoodMother"), 3071)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3TalkedWithCaitlyn = TalkWithCaitlyn.SaidGoodMother;
			base.Select();
		}
	}
}
