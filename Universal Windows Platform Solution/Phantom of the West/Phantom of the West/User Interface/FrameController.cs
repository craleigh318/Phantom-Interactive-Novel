using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.UI.Xaml.Controls;

namespace Phantom_of_the_West.User_Interface
{
	public class FrameController: IFrameController
	{
		public Frame Frame
		{
			get;
			private set;
		}

		public StoryViewController RootViewController
		{
			get;
			private set;
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
