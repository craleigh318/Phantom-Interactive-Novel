namespace Phantom_of_the_West.Visual_Novel.Chapters
{
	internal interface IChapter
	{
		IStoryChoiceList GoToState(int id);
	}
}
