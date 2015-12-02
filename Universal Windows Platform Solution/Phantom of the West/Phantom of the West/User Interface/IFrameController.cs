using System;

namespace Phantom_of_the_West.User_Interface
{
	public interface IFrameController
	{
		bool PushPage(Type type);

		void PopPage();

		void PopPageToRoot();
	}
}
