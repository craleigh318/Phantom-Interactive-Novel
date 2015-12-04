using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.Visual_Novel
{
	public class BlankStoryChoiceList : IStoryChoiceList
	{
		public ImageSource Image
		{
			get
			{
				return null;
			}
		}

		public int NumChoices
		{
			get
			{
				return 0;
			}
		}

		public IStoryChoice GetChoice(int index)
		{
			return new BlankStoryChoice();
		}
	}
}
