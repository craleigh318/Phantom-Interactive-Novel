using System.Runtime.Serialization;

namespace Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging
{
	[DataContract]
	internal class EventFlagsCollection
	{
		[DataMember]
		internal DriveWithCaitlyn Ch3DroveWithCaitlyn
		{
			get;
			set;
		} = DriveWithCaitlyn.NotYetDriven;

		[DataMember]
		internal TalkWithCaitlyn Ch3TalkedWithCaitlyn
		{
			get;
			set;
		} = TalkWithCaitlyn.HasNotTalked;

		[DataMember]
		internal bool Ch3TalkedWithYukio
		{
			get;
			set;
		} = false;

		[DataMember]
		internal LiteratureStoryAnswer Ch5AnsweredLiteratureStory
		{
			get;
			set;
		} = LiteratureStoryAnswer.NotYetAnswered;

		[DataMember]
		internal TwoChoiceAnswer Ch5AnsweredMathQuestion1
		{
			get;
			set;
		} = TwoChoiceAnswer.NotYetAnswered;

		[DataMember]
		internal TwoChoiceAnswer Ch5AnsweredMathQuestion4
		{
			get;
			set;
		} = TwoChoiceAnswer.NotYetAnswered;

		[DataMember]
		internal TwoChoiceAnswer Ch5AnsweredMathQuestion9
		{
			get;
			set;
		} = TwoChoiceAnswer.NotYetAnswered;

		internal int Ch5NumCorrectMathAnswers
		{
			get
			{
				int numCorrectAnswers = 0;
				TwoChoiceAnswer[] questions = { Ch5AnsweredMathQuestion1, Ch5AnsweredMathQuestion4, Ch5AnsweredMathQuestion9 };
				foreach (TwoChoiceAnswer q in questions)
				{
					if (q == TwoChoiceAnswer.Correct)
					{
						++numCorrectAnswers;
					}
				}
				return numCorrectAnswers;
			}
		}

		[DataMember]
		internal PhysicalEducationAnswer Ch5AnsweredCoach
		{
			get;
			set;
		} = PhysicalEducationAnswer.NotYetAnswered;

		[DataMember]
		internal CheerleaderSpar Ch5SparredWithCheerleader
		{
			get;
			set;
		} = CheerleaderSpar.NotYetSparred;

		[DataMember]
		internal HewittHangout Ch7HungOutWithHewitt
		{
			get;
			set;
		} = HewittHangout.NotYetAsked;

		[DataMember]
		internal VaNalKiss Ch7KissedVaNal
		{
			get;
			set;
		} = VaNalKiss.NotYetAsked;

		[DataMember]
		internal FoxtrotReaction Ch9FoxtrotReacted
		{
			get;
			set;
		} = FoxtrotReaction.NotYetEncountered;

		[DataMember]
		internal HotelRoomPayment Ch11PayedForHotelRoom
		{
			get;
			set;
		} = HotelRoomPayment.NotYetPaid;

		[DataMember]
		internal WorkoutHarassment Ch11HarassedAfterWorkout
		{
			get;
			set;
		} = WorkoutHarassment.NotYetHarassed;

		[DataMember]
		internal ActivityInSarahRoom Ch11ActedInSarahRoom
		{
			get;
			set;
		} = ActivityInSarahRoom.NotYetReturned;
	}
}
