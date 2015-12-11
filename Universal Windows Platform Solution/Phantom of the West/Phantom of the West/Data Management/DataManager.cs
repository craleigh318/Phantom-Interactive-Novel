using Phantom_of_the_West.Visual_Novel.Serialization;
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
		private static ApplicationDataContainer localSettings = ApplicationData.Current.LocalSettings;

		private const string voiceoverName = "voiceover";

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
	}
}
