using Phantom_of_the_West.Visual_Novel.Chapters;
using Phantom_of_the_West.Visual_Novel.Serialization;
using System.Collections.Generic;

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

		private IStoryChoiceList currentChoices = null;

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
			GoToState(101);
		}

		public void PlayTutorial()
		{
			GoToState(1);
		}

		public GameState SaveGame()
		{
			throw new System.InvalidOperationException();
		}

		public void LoadGame(GameState gs)
		{

		}

		internal void GoToState(int id)
		{
			ChapterSelector.GoToState(id);
		}

		private void NotifyObservers()
		{
			Observable.NotifyObservers(this);
		}
	}
}
