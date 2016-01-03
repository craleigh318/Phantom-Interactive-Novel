using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_11
{
	internal class IPayAsMyself : StoryChoice
	{
		internal IPayAsMyself() : base(StoryChoice.GetLocalizedString("ch11IPayAsMyself"), 11062)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch11PayedForHotelRoom = HotelRoomPayment.KadenMoney;
			base.Select();
		}
	}
}
