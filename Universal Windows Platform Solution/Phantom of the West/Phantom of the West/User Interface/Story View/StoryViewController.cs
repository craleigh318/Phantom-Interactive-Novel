using Phantom_of_the_West.Visual_Novel;
using System;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.User_Interface.Story_View
{
	internal class StoryViewController : IObserver<IVisualNovel>
	{
		private WeakReference<IStoryView> viewRef;

		private IStoryChoiceList storyChoiceList = null;

		private int index = 0;

		private IStoryView View
		{
			get
			{
				IStoryView v = null;
				viewRef.TryGetTarget(out v);
				return v;
			}
		}

		private IStoryChoice Choice
		{
			get
			{
				return storyChoiceList[index];
			}
		}

		internal StoryViewController(WeakReference<IStoryView> view)
		{
			viewRef = view;
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
			storyChoiceList = list;
			index = 0;
			UpdateButtons();
			UpdateImageAndText();
		}

		internal void PreviousChoice()
		{
			if (index <= 0)
			{
				int lastIndex = storyChoiceList.Count - 1;
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
			int lastIndex = storyChoiceList.Count - 1;
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
			mainVN.Subscribe(this);
			UpdateStoryView(mainVN);
		}

		private void UpdateStoryView(IVisualNovel vn)
		{
			SetStoryChoiceList(vn.CurrentChoices);
		}

		private void UpdateImageAndText()
		{
			ImageSource img;
			if (storyChoiceList != null)
			{
				img = storyChoiceList.Image;
			}
			else
			{
				img = null;
			}
			SetImage(img);
			UpdateText();
		}

		private void SetImage(ImageSource source)
		{
			IStoryView view = View;
			if (view != null)
			{
				view.SetImage(source);
			}
		}

		private void UpdateText()
		{
			string txt = "";
			if (storyChoiceList != null)
			{

				if (storyChoiceList.Count > 1)
				{
					txt = AppendChoiceHeader(txt);
				}
				txt += Choice.Text;
			}
			SetText(txt);
		}

		private string AppendChoiceHeader(string text)
		{
			string newString = "Choice " + (index + 1) + " of " + storyChoiceList.Count + ":\n\n";
			return newString;
		}

		private void SetText(string text)
		{
			IStoryView view = View;
			if (view != null)
			{
				view.SetText(text);
			}
		}

		private void UpdateButtons()
		{
			int numChoices;
			if (storyChoiceList != null)
			{
				numChoices = storyChoiceList.Count;
			}
			else
			{
				numChoices = 0;
			}
			bool willEnableContinue = (numChoices > 0);
			bool willEnablePreviousAndNext = (numChoices > 1);
			EnableButtonContinue(willEnableContinue);
			EnableButtonsPreviousAndNextChoice(willEnablePreviousAndNext);
		}

		private void EnableButtonContinue(bool enabled)
		{
			IStoryView view = View;
			if (view != null)
			{
				view.EnableButtonContinue(enabled);
			}
		}

		private void EnableButtonsPreviousAndNextChoice(bool enabled)
		{
			EnableButtonPreviousChoice(enabled);
			EnableButtonNextChoice(enabled);
		}

		private void EnableButtonPreviousChoice(bool enabled)
		{
			IStoryView view = View;
			if (view != null)
			{
				view.EnableButtonPreviousChoice(enabled);
			}
		}

		private void EnableButtonNextChoice(bool enabled)
		{
			IStoryView view = View;
			if (view != null)
			{
				view.EnableButtonNextChoice(enabled);
			}
		}
	}
}
