using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class StoryChoiceList : IStoryChoiceList
	{
		private IStoryChoice[] choices;

		public ImageSource Image
		{
			get;
			private set;
		}

		public int NumChoices
		{
			get
			{
				return choices.Length;
			}
		}

		internal StoryChoiceList(IStoryChoice[] choices, ImageSource image)
		{
			this.choices = choices;
			Image = image;
		}

		public IStoryChoice GetChoice(int index)
		{
			return choices[index];
		}
	}
}
