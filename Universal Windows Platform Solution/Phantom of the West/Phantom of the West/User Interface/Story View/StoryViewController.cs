using Phantom_of_the_West.Visual_Novel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.User_Interface
{
	public class StoryViewController
	{
		private IStoryChoiceList storyChoiceList;

		private int index;

		internal Page StoryView
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

		public void SetStoryChoiceList(IStoryChoiceList list)
		{
			storyChoiceList = list;
			index = 0;
			SetImage(list.Image);
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

		}

		private void UpdateText()
		{
			SetText(Choice.Text);
		}

		private void SetText(string text)
		{

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

		}

		private void enableButtonsPreviousAndNextChoice(bool enabled)
		{
			enableButtonPreviousChoice(enabled);
			enableButtonNextChoice(enabled);
		}

		private void enableButtonPreviousChoice(bool enabled)
		{

		}

		private void enableButtonNextChoice(bool enabled)
		{

		}
	}
}
