namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class StoryChoice : IStoryChoice
	{
		private int nextState;

		private PotWVN vn;

		public string Text
		{
			get;
			private set;
		}

		internal StoryChoice(string text, int nextState, PotWVN vn)
		{
			Text = text;
			this.nextState = nextState;
			this.vn = vn;
		}

		public void Select()
		{
			vn.GoToState(nextState);
		}
	}
}
