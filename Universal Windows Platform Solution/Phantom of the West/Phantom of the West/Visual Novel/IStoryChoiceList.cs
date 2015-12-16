using System.Collections.Generic;
using Windows.UI.Xaml.Media;

namespace Phantom_of_the_West.Visual_Novel
{
	public interface IStoryChoiceList : IReadOnlyList<IStoryChoice>
	{
		ImageSource Image
		{
			get;
		}

		void PlayAudio();
	}
}
