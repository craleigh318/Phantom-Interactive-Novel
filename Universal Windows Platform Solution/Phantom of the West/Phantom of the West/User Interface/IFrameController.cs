using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.User_Interface
{
	public interface IFrameController
	{
		bool PushPage(Type type);

		void PopPage();

		void PopPageToRoot();
	}
}
