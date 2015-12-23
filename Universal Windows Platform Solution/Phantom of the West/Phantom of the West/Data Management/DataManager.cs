using Phantom_of_the_West.Visual_Novel.Serialization;
using Phantom_of_the_West.Voice_Overs;
using System;
using System.IO;
using System.Runtime.Serialization;
using System.Threading.Tasks;
using Windows.Foundation;
using Windows.Storage;
using Windows.Storage.Streams;

namespace Phantom_of_the_West.Data_Management
{
	public class DataManager
	{
		private static StorageFolder storageFolder = ApplicationData.Current.LocalFolder;

		private static ApplicationDataContainer localSettings = ApplicationData.Current.LocalSettings;

		private const string voiceoverName = "voiceover";

		private const string autoSaveName = "autoSave.xml";

		public static bool Voiceover
		{
			get
			{
				bool? boolValue = localSettings.Values[voiceoverName] as bool?;
				if (boolValue != null)
				{
					return (bool)boolValue;
				}
				return false;
			}
			set
			{
				if (!value)
				{
					VoiceoverManager vm = VoiceoverManager.MainManager;
					vm.StopSpeech();
				}
				localSettings.Values[voiceoverName] = value;
			}
		}

		public static async Task ManualSave(GameState data, StorageFile toFile)
		{
			DataContractSerializer ser = new DataContractSerializer(typeof(GameState));
			IAsyncOperation<IRandomAccessStream> op = toFile.OpenAsync(FileAccessMode.ReadWrite);
			using (var stream = await op)
			{
				using (Stream outputStream = stream.AsStreamForWrite())
				{
					ser.WriteObject(outputStream, data);
				}
			}
		}

		public static async Task<GameState> ManualLoad(StorageFile fromFile)
		{
			GameState data;
			DataContractSerializer ser = new DataContractSerializer(typeof(GameState));
			IAsyncOperation<IRandomAccessStream> op = fromFile.OpenAsync(FileAccessMode.Read);
			using (var stream = await op)
			{
				using (Stream outputStream = stream.AsStreamForRead())
				{
					data = ser.ReadObject(outputStream) as GameState;
				}
			}
			return data;
		}

		public static async Task AutoSave(GameState data)
		{
			StorageFile file = await storageFolder.CreateFileAsync(autoSaveName, CreationCollisionOption.ReplaceExisting);
			await ManualSave(data, file);
		}

		public static async Task<GameState> LoadAutoSave()
		{
			StorageFile file = await storageFolder.TryGetItemAsync(autoSaveName) as StorageFile;
			GameState gs;
			if (file != null)
			{
				gs = await ManualLoad(file);
			}
			else
			{
				gs = null;
			}
			return gs;
		}
	}
}
