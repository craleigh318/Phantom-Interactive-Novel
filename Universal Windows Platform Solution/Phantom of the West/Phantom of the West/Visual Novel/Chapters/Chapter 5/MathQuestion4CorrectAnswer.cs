using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class MathQuestion4CorrectAnswer : StoryChoice
	{
		internal MathQuestion4CorrectAnswer() : base(StoryChoice.GetLocalizedString("ch5MathQuestion4CorrectAnswer"), 5050)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredMathQuestion4 = TwoChoiceAnswer.Correct;
			base.Select();
		}
	}
}
