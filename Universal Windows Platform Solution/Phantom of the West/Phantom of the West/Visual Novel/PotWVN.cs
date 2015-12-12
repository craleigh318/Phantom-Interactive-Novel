using Phantom_of_the_West.Visual_Novel.Chapters;
using Phantom_of_the_West.Visual_Novel.Serialization;
using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel
{
	public class PotWVN : IVisualNovel
	{
		public static PotWVN MainVN
		{
			get;
			private set;
		} = new PotWVN();

		public ObservableVisualNovel Observable
		{
			get;
			private set;
		} = new ObservableVisualNovel();

		internal EventFlagsCollection EventFlags
		{
			get;
			private set;
		} = null;

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

		public void NewGame()
		{
			EventFlags = new EventFlagsCollection();
			GoToState(101);
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

		internal void GoToState(int id)
		{
			this.id = id;
			ChapterSelector.GoToState(id);
		}

		private void NotifyObservers()
		{
			Observable.NotifyObservers(this);
		}
	}
}
