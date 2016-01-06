using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class IWatchTV : StoryChoice
	{
		internal IWatchTV() : base(StoryChoice.GetLocalizedString("ch11IWatchTV"), 11132)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch11ActedInSarahRoom = ActivityInSarahRoom.WatchedTV;
			base.Select();
		}
	}
}
