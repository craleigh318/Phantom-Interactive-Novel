using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Windows.UI.Xaml.Data;

namespace Phantom_of_the_West.User_Interface.Story_View
{
	public class ImageViewAspectRatio : IValueConverter
	{
		private const double aspectRatio = 16 / 9;

		public object Convert(object value, Type targetType, object parameter, string language)
		{
			return ((double)value) / aspectRatio;
		}

		public object ConvertBack(object value, Type targetType, object parameter, string language)
		{
			return ((double)value) * aspectRatio;
		}
	}
}
