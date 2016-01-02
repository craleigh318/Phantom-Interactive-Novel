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

		public string Text
		{
			get;
			private set;
		}

		protected int NextState
		{
			get;
			set;
		}

		internal StoryChoice(string text, int nextState)
		{
			Text = text;
			NextState = nextState;
		}

		public virtual void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.GoToState(NextState);
		}
	}
}
