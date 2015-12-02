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
		}

		[DataMember]
		internal TalkWithCaitlyn Ch3TalkedWithCaitlyn
		{
			get;
			set;
		}

		[DataMember]
		internal bool Ch3TalkedWithYukio
		{
			get;
			set;
		}

		[DataMember]
		internal LiteratureStoryAnswer Ch5AnsweredLiteratureStory
		{
			get;
			set;
		}

		[DataMember]
		internal TwoChoiceAnswer Ch5AnsweredMathQuestion1
		{
			get;
			set;
		}

		[DataMember]
		internal TwoChoiceAnswer Ch5AnsweredMathQuestion4
		{
			get;
			set;
		}

		[DataMember]
		internal TwoChoiceAnswer Ch5AnsweredMathQuestion9
		{
			get;
			set;
		}

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
		}

		[DataMember]
		internal CheerleaderSpar Ch5SparredWithCheerleader
		{
			get;
			set;
		}

		[DataMember]
		internal HewittHangout Ch7HungOutWithHewitt
		{
			get;
			set;
		}

		[DataMember]
		internal VaNalKiss Ch7KissedVaNal
		{
			get;
			set;
		}

		[DataMember]
		internal FoxtrotReaction Ch9FoxtrotReacted
		{
			get;
			set;
		}

		[DataMember]
		internal HotelRoomPayment Ch11PayedForHotelRoom
		{
			get;
			set;
		}

		[DataMember]
		internal WorkoutHarassment Ch11HarassedAfterWorkout
		{
			get;
			set;
		}

		[DataMember]
		internal ActivityInSarahRoom Ch11ActedInSarahRoom
		{
			get;
			set;
		}

		internal EventFlagsCollection()
		{
			Ch3DroveWithCaitlyn = DriveWithCaitlyn.NotYetDriven;
			Ch3TalkedWithCaitlyn = TalkWithCaitlyn.HasNotTalked;
			Ch3TalkedWithYukio = false;
			Ch5AnsweredLiteratureStory = LiteratureStoryAnswer.NotYetAnswered;
			Ch5AnsweredMathQuestion1 = TwoChoiceAnswer.NotYetAnswered;
			Ch5AnsweredMathQuestion4 = TwoChoiceAnswer.NotYetAnswered;
			Ch5AnsweredMathQuestion9 = TwoChoiceAnswer.NotYetAnswered;
			Ch5AnsweredCoach = PhysicalEducationAnswer.NotYetAnswered;
			Ch5SparredWithCheerleader = CheerleaderSpar.NotYetSparred;
			Ch7HungOutWithHewitt = HewittHangout.NotYetAsked;
			Ch7KissedVaNal = VaNalKiss.NotYetAsked;
			Ch9FoxtrotReacted = FoxtrotReaction.NotYetEncountered;
			Ch11PayedForHotelRoom = HotelRoomPayment.NotYetPaid;
			Ch11HarassedAfterWorkout = WorkoutHarassment.NotYetHarassed;
			Ch11ActedInSarahRoom = ActivityInSarahRoom.NotYetReturned;
		}
	}
}
