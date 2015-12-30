using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class MathQuestion9CorrectAnswer : StoryChoice
	{
		internal MathQuestion9CorrectAnswer() : base(StoryChoice.GetLocalizedString("ch5MathQuestion9CorrectAnswer"), 5052)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredMathQuestion9 = TwoChoiceAnswer.Correct;
			base.Select();
		}
	}
}
