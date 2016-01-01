using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_7
{
	internal class IDoNotKissVaNal : StoryChoice
	{
		internal IDoNotKissVaNal() : base(StoryChoice.GetLocalizedString("ch7IDoNotKissVaNal"), 7066)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch7KissedVaNal = VaNalKiss.Refused;
			base.Select();
		}
	}
}
