using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class MathQuestion9IncorrectAnswer : StoryChoice
	{
		internal MathQuestion9IncorrectAnswer() : base(StoryChoice.GetLocalizedString("ch5MathQuestion9IncorrectAnswer"), 5052)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredMathQuestion9 = TwoChoiceAnswer.Incorrect;
			base.Select();
		}
	}
}
