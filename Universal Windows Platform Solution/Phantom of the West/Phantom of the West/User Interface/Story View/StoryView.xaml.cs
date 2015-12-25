using Phantom_of_the_West.User_Interface.Menus;
using System;
using System.Collections.Generic;
using Windows.Foundation;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Media;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace Phantom_of_the_West.User_Interface.Story_View
{
	/// <summary>
	/// An empty page that can be used on its own or navigated to within a Frame.
	/// </summary>
	public sealed partial class StoryView : Page, IStoryView
	{
		private StoryViewController controller;

		public StoryView()
		{
			InitializeComponent();
			controller = new StoryViewController(this);
		}

		public void SetImage(ImageSource source)
		{
			Image[] images = new Image[] { (FindName("imageView") as Image), (FindName("imageView2") as Image) };
			foreach (Image imageView in images)
			{
				imageView.Source = source;
			}
		}

		public void SetText(string text)
		{
			TextBlock[] textBlocks = new TextBlock[] { (FindName("textView") as TextBlock), (FindName("textView2") as TextBlock) };
			foreach (TextBlock textView in textBlocks)
			{
				textView.Text = text;
			}
		}

		public void EnableButtonContinue(bool enabled)
		{
			string[] buttons = new string[] { "buttonContinue", "buttonContinue2" };
			EnableButtons(buttons, enabled);
		}

		public void EnableButtonPreviousChoice(bool enabled)
		{
			string[] buttons = new string[] { "buttonPrevious", "buttonPrevious2" };
			EnableButtons(buttons, enabled);
		}

		public void EnableButtonNextChoice(bool enabled)
		{
			string[] buttons = new string[] { "buttonNext", "buttonNext2" };
			EnableButtons(buttons, enabled);
		}

		public bool FrameNavigate(Type sourcePageType)
		{
			return Frame.Navigate(sourcePageType);
		}

		private void EnableButtons(string[] buttonNames, bool enabled)
		{
			foreach (string name in buttonNames)
			{
				EnableButton(name, enabled);
			}
		}

		private void EnableButton(string buttonName, bool enabled)
		{
			Button button = FindName(buttonName) as Button;
			button.IsEnabled = enabled;
		}

		private void UpdateOrientation(Windows.UI.Xaml.SizeChangedEventArgs e)
		{
			Size newSize = e.NewSize;
			double newWidth = newSize.Width;
			double newHeight = newSize.Height;
			bool isLandscape = (newWidth > newHeight);
			UIElement gridPortrait = FindName("gridPortrait") as UIElement;
			UIElement gridLandscape = FindName("gridLandscape") as UIElement;
			if (isLandscape)
			{
				gridPortrait.Visibility = Visibility.Collapsed;
				gridLandscape.Visibility = Visibility.Visible;
			}
			else
			{
				gridPortrait.Visibility = Visibility.Visible;
				gridLandscape.Visibility = Visibility.Collapsed;
			}
		}

		private void buttonPrevious_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
		{
			controller.PreviousChoice();
		}

		private void buttonContinue_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
		{
			controller.SelectChoice();
		}

		private void buttonNext_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
		{
			controller.NextChoice();
		}

		private void buttonOptions_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
		{
			FrameNavigate(typeof(MainOptionsMenu));
		}

		private void Page_SizeChanged(object sender, Windows.UI.Xaml.SizeChangedEventArgs e)
		{
			UpdateOrientation(e);
		}
	}
}
