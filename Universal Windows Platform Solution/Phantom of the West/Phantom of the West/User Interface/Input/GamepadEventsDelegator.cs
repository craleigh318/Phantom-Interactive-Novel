using System.Collections.Generic;
using Windows.Gaming.Input;

namespace Phantom_of_the_West.User_Interface.Input
{
	public class GamepadEventsDelegator
	{
		public void ReadGamepad(Gamepad g, IGamepadEvents delegatee)
		{
			GamepadReading r = g.GetCurrentReading();
			// Was a button pressed?
			GamepadButtons b = r.Buttons;
			if (InputTriggered(b))
			{
				delegatee.GamepadButtonPressed(b);
			}
			// Did the left stick move?
			GamepadButtons ls = AnalogueDirectionToDigital(r);
			if (InputTriggered(ls))
			{
				delegatee.LeftThumbstickMoved(ls);
			}
		}

		private bool InputTriggered(GamepadButtons b)
		{
			return (b != GamepadButtons.None);
		}

		private GamepadButtons AnalogueDirectionToDigital(GamepadReading r)
		{
			double x = r.LeftThumbstickX;
			double y = r.LeftThumbstickY;
			Dictionary<double, GamepadButtons> mappings = new Dictionary<double, GamepadButtons>()
				{
				{x, GamepadButtons.DPadRight},
				{-x, GamepadButtons.DPadLeft},
				{y, GamepadButtons.DPadDown},
				{-y, GamepadButtons.DPadUp},
			};
			foreach (KeyValuePair<double, GamepadButtons> p in mappings)
			{
				if (AnaloguePressed(p.Key))
				{
					return p.Value;
				}
			}
			return GamepadButtons.None;
		}

		private bool AnaloguePressed(double position)
		{
			return (position >= 0.5);
		}
	}
}
