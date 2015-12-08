using Phantom_of_the_West.Visual_Novel;
using System;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.User_Interface.Story_View
{
	internal class StoryViewController : IObserver<IVisualNovel>
	{
		private IStoryView view;

		private IStoryChoiceList storyChoiceList = null;

		private int index = 0;

		private IStoryChoice Choice
		{
			get
			{
				return storyChoiceList.GetChoice(index);
			}
		}

		internal StoryViewController(IStoryView view)
		{
			this.view = view;
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
			UpdateImageAndText();
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
			UpdateImageAndText();
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
			UpdateImageAndText();
		}

		internal void SelectChoice()
		{
			Choice.Select();
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

		private void UpdateImageAndText()
		{
			SetImage(storyChoiceList.Image);
			UpdateText();
		}

		private void SetImage(ImageSource source)
		{
			view.SetImage(source);
		}

		private void UpdateText()
		{
			SetText(Choice.Text);
		}

		private void SetText(string text)
		{
			view.SetText(text);
		}

		private void UpdateButtons()
		{
			int numChoices = storyChoiceList.NumChoices;
			bool willEnableContinue = (numChoices > 0);
			bool willEnablePreviousAndNext = (numChoices > 1);
			EnableButtonContinue(willEnableContinue);
			EnableButtonsPreviousAndNextChoice(willEnablePreviousAndNext);
		}

		private void EnableButtonContinue(bool enabled)
		{
			view.EnableButtonContinue(enabled);
		}

		private void EnableButtonsPreviousAndNextChoice(bool enabled)
		{
			EnableButtonPreviousChoice(enabled);
			EnableButtonNextChoice(enabled);
		}

		private void EnableButtonPreviousChoice(bool enabled)
		{
			view.EnableButtonPreviousChoice(enabled);
		}

		private void EnableButtonNextChoice(bool enabled)
		{
			view.EnableButtonNextChoice(enabled);
		}
	}
}
