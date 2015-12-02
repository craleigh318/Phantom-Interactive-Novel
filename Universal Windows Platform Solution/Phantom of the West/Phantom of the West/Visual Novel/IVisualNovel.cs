namespace Phantom_of_the_West.Visual_Novel
{
	public interface IVisualNovel
	{
		IStoryChoiceList CurrentChoices
		{
			get;
		}

		void NewGame();

		void AddObserver(IVisualNovelObserver o);

		void DeleteObserver(IVisualNovelObserver o);
	}
}
