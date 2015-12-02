namespace Phantom_of_the_West.Visual_Novel
{
	public interface IStoryChoice
	{
		string Text
		{
			get;
		}

		void Select();
	}
}
