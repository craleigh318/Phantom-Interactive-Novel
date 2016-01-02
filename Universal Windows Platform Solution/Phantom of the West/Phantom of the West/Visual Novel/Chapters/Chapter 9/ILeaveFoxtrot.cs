using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_9
{
	internal class ILeaveFoxtrot : StoryChoice
	{
		internal ILeaveFoxtrot() : base(StoryChoice.GetLocalizedString("ch9ILeaveFoxtrot"), 9094)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch9FoxtrotReacted = FoxtrotReaction.NotPetted;
			base.Select();
		}
	}
}
