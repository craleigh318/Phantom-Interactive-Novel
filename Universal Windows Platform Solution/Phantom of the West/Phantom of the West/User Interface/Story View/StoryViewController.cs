using Phantom_of_the_West.Visual_Novel;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.User_Interface.Story_View
{
	public class StoryViewController
	{
		private IStoryChoiceList storyChoiceList;

		private int index;

		internal StoryView StoryView
		{
			get;
			private set;
		}

		private IStoryChoice Choice
		{
			get
			{
				return storyChoiceList.GetChoice(index);
			}
		}

		internal StoryViewController()
		{
			//FrameController.MainFrameController.RootViewController = this;
		}

		public void SetStoryChoiceList(IStoryChoiceList list)
		{
			if (list != null)
			{
				storyChoiceList = list;
			}
			else
			{
				storyChoiceList = new BlankStoryChoiceList();
			}
			index = 0;
			UpdateButtons();
			SetImage(storyChoiceList.Image);
			UpdateText();
		}

		internal void PreviousChoice()
		{
			if (index <= 0)
			{
				int lastIndex = storyChoiceList.NumChoices - 1;
				index = lastIndex;
			}
			else
			{
				--index;
			}
		}

		internal void NextChoice()
		{
			int lastIndex = storyChoiceList.NumChoices - 1;
			if (index >= lastIndex)
			{

				index = 0;
			}
			else
			{
				++index;
			}
		}

		private void SetImage(ImageSource source)
		{
			Image imageView = (Image)StoryView.FindName("imageView");
			imageView.Source = source;
		}

		private void UpdateText()
		{
			SetText(Choice.Text);
		}

		private void SetText(string text)
		{
			TextBlock textView = (TextBlock)StoryView.FindName("textView");
			textView.Text = text;
		}

		private void UpdateButtons()
		{
			int numChoices = storyChoiceList.NumChoices;
			bool willEnableContinue = (numChoices > 0);
			bool willEnablePreviousAndNext = (numChoices > 1);
			enableButtonContinue(willEnableContinue);
			enableButtonsPreviousAndNextChoice(willEnablePreviousAndNext);
		}

		private void enableButtonContinue(bool enabled)
		{
			enableButton("buttonContinue", enabled);
		}

		private void enableButtonsPreviousAndNextChoice(bool enabled)
		{
			enableButtonPreviousChoice(enabled);
			enableButtonNextChoice(enabled);
		}

		private void enableButtonPreviousChoice(bool enabled)
		{
			enableButton("buttonPrevious", enabled);
		}

		private void enableButtonNextChoice(bool enabled)
		{
			enableButton("buttonNext", enabled);
		}

		private void enableButton(string buttonName, bool enabled)
		{
			Button button = (Button)StoryView.FindName(buttonName);
			button.IsEnabled = enabled;
		}
	}
}
