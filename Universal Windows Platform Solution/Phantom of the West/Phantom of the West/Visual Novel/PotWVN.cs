using Phantom_of_the_West.Data_Management;
using Phantom_of_the_West.Visual_Novel.Chapters;
using Phantom_of_the_West.Visual_Novel.Serialization;
using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel
{
	public class PotWVN : IVisualNovel, IObservable<IVisualNovel>
	{
		public static PotWVN MainVN
		{
			get;
			private set;
		} = new PotWVN();

		internal EventFlagsCollection EventFlags
		{
			get;
			private set;
		} = null;

		private ObservableVisualNovel observable = new ObservableVisualNovel();

		private IStoryChoiceList currentChoices = null;

		private int id = 0;

		public IStoryChoiceList CurrentChoices
		{
			get
			{
				return currentChoices;
			}
			internal set
			{
				currentChoices = value;
				NotifyObservers();
			}
		}

		public async Task StartUp()
		{
			GameState autoSave = await LoadAutoSave();
			if (autoSave != null)
			{
				LoadGame(autoSave);
			}
			else
			{
				PlayTutorial();
			}
		}

		public void NewGame()
		{
			EventFlags = new EventFlagsCollection();
			GoToState(1001);
		}

		public void PlayTutorial()
		{
			EventFlags = new EventFlagsCollection();
			GoToState(1);
		}

		public GameState SaveGame()
		{
			GameState gs = new GameState(EventFlags, id);
			return gs;
		}

		public void LoadGame(GameState gs)
		{
			EventFlags = gs.EventFlags;
			GoToState(gs.ID);
		}

		public IDisposable Subscribe(IObserver<IVisualNovel> observer)
		{
			return observable.Subscribe(observer);
		}

		internal void GoToState(int id)
		{
			this.id = id;
			CurrentChoices = ChapterSelector.GoToState(id);
		}

		private void NotifyObservers()
		{
			AutoSave();
			observable.NotifyObservers(this);
			PlayAudio();
		}

		private void AutoSave()
		{
			GameState gs = SaveGame();
			Task t = DataManager.AutoSave(gs);
		}

		private async Task<GameState> LoadAutoSave()
		{
			GameState gs = await DataManager.LoadAutoSave();
			return gs;
		}

		private void PlayAudio()
		{
			if (currentChoices != null)
			{
				currentChoices.PlayAudio();
			}
		}
	}
}
