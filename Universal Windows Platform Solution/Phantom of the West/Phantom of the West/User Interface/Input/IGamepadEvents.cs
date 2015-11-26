using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.Gaming.Input;

namespace Phantom_of_the_West.User_Interface.Input
{
	public interface IGamepadEvents
	{
		void GamepadButtonPressed(GamepadButtons b);

		void LeftThumbstickMoved(GamepadButtons b);
	}
}
