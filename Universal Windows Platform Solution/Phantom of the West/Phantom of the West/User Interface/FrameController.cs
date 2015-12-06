using Phantom_of_the_West.User_Interface.Story_View;
using Phantom_of_the_West.Visual_Novel;
using System;
using Windows.UI.Xaml.Controls;

namespace Phantom_of_the_West.User_Interface
{
	public class FrameController : IFrameController
	{
		public static FrameController MainFrameController
		{
			get;
			private set;
		} = new FrameController();

		public Frame Frame
		{
			get;
			private set;
		} = new Frame();

		private FrameController()
		{
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
