using Phantom_of_the_West.Data_Management;
using Phantom_of_the_West.Visual_Novel;
using Phantom_of_the_West.Visual_Novel.Serialization;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Threading.Tasks;
using Windows.Storage;
using Windows.Storage.Pickers;
using Windows.UI.Core;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace Phantom_of_the_West.User_Interface.Menus
{
	/// <summary>
	/// An empty page that can be used on its own or navigated to within a Frame.
	/// </summary>
	public sealed partial class MainOptionsMenu : Page
	{
		private const string saveFileTypeName = "XML Save File";

		private static readonly string[] saveFileTypeExtensions = new string[] { ".xml" };

		private const PickerLocationId gameSavesFolder = PickerLocationId.DocumentsLibrary;

		public MainOptionsMenu()
		{
			this.InitializeComponent();
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
			FrameworkElement clickedItem = e.ClickedItem as FrameworkElement;
			string clickedItemName = clickedItem.Name;
			switch (clickedItemName)
			{
				case "blockSaveGame":
					SaveGame();
					break;
				case "blockLoadGame":
					LoadGame();
					break;
				case "blockNewGame":
					NewGame();
					break;
				default:
					break;
			}
		}

		private void SaveGame()
		{
			Task t = SaveGameAsync();
		}

		private async Task SaveGameAsync()
		{
			FileSavePicker savePicker = new FileSavePicker();
			savePicker.SuggestedStartLocation = gameSavesFolder;
			savePicker.FileTypeChoices.Add(saveFileTypeName, saveFileTypeExtensions);
			StorageFile file = await savePicker.PickSaveFileAsync();
			if (file != null)
			{
				CachedFileManager.DeferUpdates(file);
				GameState data = PotWVN.MainVN.SaveGame();
				await DataManager.ManualSave(data, file);
				await CachedFileManager.CompleteUpdatesAsync(file);
			}
		}

		private void LoadGame()
		{
			Task t = LoadGameAsync();
		}

		private async Task LoadGameAsync()
		{
			FileOpenPicker openPicker = new FileOpenPicker();
			openPicker.SuggestedStartLocation = gameSavesFolder;
			foreach (string ext in saveFileTypeExtensions)
			{
				openPicker.FileTypeFilter.Add(ext);
			}
			StorageFile file = await openPicker.PickSingleFileAsync();
			if (file != null)
			{
				GameState data = await DataManager.ManualLoad(file);
				PotWVN.MainVN.LoadGame(data);
			}
		}

		private void NewGame()
		{
			PotWVN.MainVN.NewGame();
		}
	}
}
