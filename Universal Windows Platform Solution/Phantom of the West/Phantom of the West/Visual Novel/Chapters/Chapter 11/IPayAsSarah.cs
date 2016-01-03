using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class IPayAsSarah : StoryChoice
	{
		internal IPayAsSarah() : base(StoryChoice.GetLocalizedString("ch11IPayAsSarah"), 11069)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch11PayedForHotelRoom = HotelRoomPayment.SarahMoney;
			base.Select();
		}
	}
}
