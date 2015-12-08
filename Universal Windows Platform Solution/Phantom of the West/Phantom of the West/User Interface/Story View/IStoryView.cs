using System;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.User_Interface.Story_View
{
	internal interface IStoryView
	{
		void SetImage(ImageSource source);

		void SetText(string text);

		void EnableButtonContinue(bool enabled);

		void EnableButtonPreviousChoice(bool enabled);

		void EnableButtonNextChoice(bool enabled);

		bool FrameNavigate(Type sourcePageType);
	}
}
