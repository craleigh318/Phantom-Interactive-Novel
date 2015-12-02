using Phantom_of_the_West.Visual_Novel.Chapters;
using Phantom_of_the_West.Visual_Novel.Serialization;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel
{
	public class PotWVN : IVisualNovel
	{
		private static PotWVN mainVN = new PotWVN();

		public static PotWVN MainVN
		{
			get
			{
				return mainVN;
			}
		}

		private IStoryChoiceList currentChoices = null;

		private HashSet<IVisualNovelObserver> observers = new HashSet<IVisualNovelObserver>();

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

		public void AddObserver(IVisualNovelObserver o)
		{
			observers.Add(o);
		}

		public void DeleteObserver(IVisualNovelObserver o)
		{
			observers.Remove(o);
		}

		internal void GoToState(int id)
		{
			ChapterSelector.GoToState(id, this);
		}

		private void NotifyObservers()
		{
			foreach (IVisualNovelObserver o in observers)
			{
				o.Update(this);
			}
		}
	}
}
