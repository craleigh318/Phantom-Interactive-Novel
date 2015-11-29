using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel
{
	public class StoryChoice : IStoryChoice
	{
		private int nextState;

		public string Text
		{
			get;
			private set;
		}

		public StoryChoice(string text, int nextState)
		{
			Text = text;
			this.nextState = nextState;
		}

		public void Select()
		{
			throw new NotImplementedException();
		}
	}
}
