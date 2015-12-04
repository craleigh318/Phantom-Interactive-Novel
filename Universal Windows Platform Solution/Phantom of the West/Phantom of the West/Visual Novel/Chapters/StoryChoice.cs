namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class StoryChoice : IStoryChoice
	{
		private int nextState;

		public string Text
		{
			get;
			private set;
		}

		internal StoryChoice(string text, int nextState)
		{
			Text = text;
			this.nextState = nextState;
		}

		public void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.GoToState(nextState);
		}
	}
}
