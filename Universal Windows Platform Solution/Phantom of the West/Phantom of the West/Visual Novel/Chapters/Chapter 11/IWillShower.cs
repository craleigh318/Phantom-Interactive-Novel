using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class IWillShower : StoryChoice
	{
		internal IWillShower() : base(StoryChoice.GetLocalizedString("ch11IWillShower"), 11125)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch11ActedInSarahRoom = ActivityInSarahRoom.Showered;
			base.Select();
		}
	}
}
