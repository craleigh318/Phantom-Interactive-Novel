using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_9
{
	internal class IWillPetFoxtrot : StoryChoice
	{
		bool kickedCheerleader = (PotWVN.MainVN.EventFlags.Ch5SparredWithCheerleader == CheerleaderSpar.Kicked);

		internal IWillPetFoxtrot() : base(StoryChoice.GetLocalizedString("ch9IWillPetFoxtrot"), 9096)
		{
			if (kickedCheerleader)
			{
				NextState = 9095;
			}
		}

		public override void Select()
		{
			FoxtrotReaction reaction;
			if (kickedCheerleader)
			{
				reaction = FoxtrotReaction.Hissed;
			}
			else
			{
				reaction = FoxtrotReaction.AcceptedPet;
			}
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch9FoxtrotReacted = reaction;
			base.Select();
		}
	}
}
