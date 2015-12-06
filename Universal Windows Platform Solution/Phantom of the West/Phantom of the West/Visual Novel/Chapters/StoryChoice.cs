using Windows.ApplicationModel.Resources;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class StoryChoice : IStoryChoice
	{
		internal static StoryChoice FromResource(string stringName, int nextState)
		{
			string localizedString = GetLocalizedString(stringName);
			StoryChoice newChoice = new StoryChoice(localizedString, nextState);
			return newChoice;
		}

		internal static string GetLocalizedString(string stringName)
		{
			ResourceLoader resourceLoader = ResourceLoader.GetForViewIndependentUse("StoryText");
			string localizedString = resourceLoader.GetString(stringName);
			return localizedString;
		}

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
