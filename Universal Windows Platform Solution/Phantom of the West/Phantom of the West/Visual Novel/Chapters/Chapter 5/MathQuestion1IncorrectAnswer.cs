using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_5
{
	internal class MathQuestion1IncorrectAnswer : StoryChoice
	{
		internal MathQuestion1IncorrectAnswer() : base(StoryChoice.GetLocalizedString("ch5MathQuestion1IncorrectAnswer"), 5048)
		{
		}

		public override void Select()
		{
			PotWVN vn = PotWVN.MainVN;
			vn.EventFlags.Ch5AnsweredMathQuestion1 = TwoChoiceAnswer.Incorrect;
			base.Select();
		}
	}
}
