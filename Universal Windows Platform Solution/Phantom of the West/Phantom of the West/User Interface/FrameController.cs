using Phantom_of_the_West.User_Interface.Story_View;
using System;
using Windows.UI.Xaml.Controls;

namespace Phantom_of_the_West.User_Interface
{
	public class FrameController: IFrameController
	{
		private static FrameController mainFrameController = new FrameController();

		public static FrameController MainFrameController
		{
			get
			{
				return mainFrameController;
			}
		}

		public Frame Frame
		{
			get;
			private set;
		}

		public StoryViewController RootViewController
		{
			get;
			internal set;
		}

		public FrameController()
		{
			Frame = new Frame();
			PushPage(typeof(User_Interface.Story_View.StoryView));
		}

		public bool PushPage(Type type)
		{
			return Frame.Navigate(type);
		}

		public void PopPage()
		{
			Frame.GoBack();
		}

		public void PopPageToRoot()
		{
			Frame f = Frame;
            while (f.CanGoBack)
			{
				f.GoBack();
			}
		}
	}
}
