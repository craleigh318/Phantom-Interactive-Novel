using Phantom_of_the_West.User_Interface.Story_View;
using Phantom_of_the_West.Visual_Novel;
using System;
using Windows.UI.Xaml.Controls;

namespace Phantom_of_the_West.User_Interface
{
	public class FrameController : IFrameController, IObserver<IVisualNovel>
	{
		StoryViewController rootViewController = null;

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

		public StoryViewController RootViewController
		{
			get
			{
				return rootViewController;
			}
			internal set
			{
				rootViewController = value;
				UpdateStoryView(PotWVN.MainVN);
			}
		}

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

		private void UpdateStoryView(IVisualNovel vn)
		{
			IStoryChoiceList choices = vn.CurrentChoices;
			if (choices == null)
			{
				choices = new BlankStoryChoiceList();
			}
			StoryViewController rootViewController = RootViewController;
			if (rootViewController != null)
			{
				rootViewController.SetStoryChoiceList(choices);
			}
		}
	}
}
