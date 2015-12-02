using System;
using Windows.UI.Xaml.Media.Imaging;

namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal class ChapterSelector
	{
		internal static BitmapImage GetImgSrc(string imgName)
		{
			string uriString = "/Assets/Story Images/" + imgName;
			Uri uri = new Uri(uriString, UriKind.Relative);
			BitmapImage bmp = new BitmapImage(uri);
			return bmp;
		}

		internal static void GoToState(int id, PotWVN vn)
		{

		}
	}
}
