using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.Storage.Pickers;
using Windows.UI.Core;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace Phantom_of_the_West.User_Interface.Menus
{
	/// <summary>
	/// An empty page that can be used on its own or navigated to within a Frame.
	/// </summary>
	public sealed partial class MainOptionsMenu : Page
	{
		private FileSavePicker savePicker = new FileSavePicker();
		private FileOpenPicker openPicker = new FileOpenPicker();

		public MainOptionsMenu()
		{
			this.InitializeComponent();
			PickerLocationId gameSavesFolder = PickerLocationId.DocumentsLibrary;
        }

		protected override void OnNavigatedTo(NavigationEventArgs e)
		{
			Frame rootFrame = Window.Current.Content as Frame;
			SystemNavigationManager nm = SystemNavigationManager.GetForCurrentView();
			if (rootFrame.CanGoBack)
			{
				nm.AppViewBackButtonVisibility =
					AppViewBackButtonVisibility.Visible;
			}
			else
			{
				nm.AppViewBackButtonVisibility =
					AppViewBackButtonVisibility.Collapsed;
			}
		}

		private void listOptions_ItemClick(object sender, ItemClickEventArgs e)
		{
			/*ListViewItem clickedItem = e.ClickedItem as ListViewItem;
			string clickedItemName = clickedItem.Name;*/

		}
	}
}
