using Phantom_of_the_West.User_Interface.Story_View;
using Windows.UI.Core;
using Windows.UI.Xaml.Controls;

namespace Phantom_of_the_West.User_Interface
{
	public class StoryFrame : Frame
	{
		public static StoryFrame MainStoryFrame
		{
			get;
			private set;
		} = new StoryFrame();

		public static void GoBackToRoot(Frame f)
		{
			while (f.CanGoBack)
			{
				f.GoBack();
			}
		}

		private StoryFrame()
		{
			Navigate(typeof(StoryView));
			SystemNavigationManager nm = SystemNavigationManager.GetForCurrentView();
			nm.BackRequested += OnBackButton;
		}

		private void OnBackButton(object sender, BackRequestedEventArgs e)
		{
			if (CanGoBack && e.Handled == false)
			{
				e.Handled = true;
				GoBack();
			}
		}
	}
}
