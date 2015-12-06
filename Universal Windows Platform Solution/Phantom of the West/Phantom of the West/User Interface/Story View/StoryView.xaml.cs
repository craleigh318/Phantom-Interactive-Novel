using Phantom_of_the_West.Visual_Novel;
using System;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Media;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace Phantom_of_the_West.User_Interface.Story_View
{
	/// <summary>
	/// An empty page that can be used on its own or navigated to within a Frame.
	/// </summary>
	public sealed partial class StoryView : Page, IObserver<IVisualNovel>
	{
		private IStoryChoiceList storyChoiceList = null;

		private int index = 0;

		private IStoryChoice Choice
		{
			get
			{
				return storyChoiceList.GetChoice(index);
			}
		}

		public StoryView()
		{
			this.InitializeComponent();
			InitializeVariables();
		}

		public void OnCompleted()
		{
		}

		public void OnError(Exception error)
		{
			throw error;
		}

		public void OnNext(IVisualNovel value)
		{
			UpdateStoryView(value);
		}

		internal void SetStoryChoiceList(IStoryChoiceList list)
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

		private void InitializeVariables()
		{
			PotWVN mainVN = PotWVN.MainVN;
			mainVN.Observable.Subscribe(this);
			UpdateStoryView(mainVN);
		}

		private void UpdateStoryView(IVisualNovel vn)
		{
			SetStoryChoiceList(vn.CurrentChoices);
		}

		private void SetImage(ImageSource source)
		{
			Image imageView = FindName("imageView") as Image;
			imageView.Source = source;
		}

		private void UpdateText()
		{
			SetText(Choice.Text);
		}

		private void SetText(string text)
		{
			TextBlock textView = FindName("textView") as TextBlock;
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
			Button button = FindName(buttonName) as Button;
			button.IsEnabled = enabled;
		}
	}
}
