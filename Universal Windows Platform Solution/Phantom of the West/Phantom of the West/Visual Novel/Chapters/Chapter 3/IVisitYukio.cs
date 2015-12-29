namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_3
{
	internal class IVisitYukio : StoryChoice
	{
		internal IVisitYukio() : base(StoryChoice.GetLocalizedString("ch3IVisitYukio"), 3086)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch3TalkedWithYukio = true;
			base.Select();
		}
	}
}
