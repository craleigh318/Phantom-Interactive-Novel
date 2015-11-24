using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.Visual_Novel
{
	public interface IStoryChoiceList
	{
		ImageSource Image
		{
			get;
		}

		int NumChoices
		{
			get;
		}

		IStoryChoice GetChoice(int index);
	}
}
