package com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
public class EventFlagsCollection {
    private DriveWithCaitlyn ch3DroveWithCaitlyn = DriveWithCaitlyn.NotYetDriven;

    private TalkWithCaitlyn ch3TalkedWithCaitlyn = TalkWithCaitlyn.HasNotTalked;

    private boolean ch3TalkedWithYukio = false;

    private LiteratureStoryAnswer ch5AnsweredLiteratureStory = LiteratureStoryAnswer.NotYetAnswered;

    private TwoChoiceAnswer ch5AnsweredMathQuestion1 = TwoChoiceAnswer.NotYetAnswered;

    private TwoChoiceAnswer ch5AnsweredMathQuestion4 = TwoChoiceAnswer.NotYetAnswered;

    private TwoChoiceAnswer ch5AnsweredMathQuestion9 = TwoChoiceAnswer.NotYetAnswered;

    private PhysicalEducationAnswer ch5AnsweredCoach = PhysicalEducationAnswer.NotYetAnswered;

    private CheerleaderSpar ch5SparredWithCheerleader = CheerleaderSpar.NotYetSparred;

    private HewittHangout ch7HungOutWithHewitt = HewittHangout.NotYetAsked;

    private VaNalKiss ch7KissedVaNal = VaNalKiss.NotYetAsked;

    private FoxtrotReaction ch9FoxtrotReacted = FoxtrotReaction.NotYetEncountered;

    private HotelRoomPayment ch11PayedForHotelRoom = HotelRoomPayment.NotYetPaid;

    private WorkoutHarassment ch11HarassedAfterWorkout = WorkoutHarassment.NotYetHarassed;

    private ActivityInSarahRoom ch11ActedInSarahRoom = ActivityInSarahRoom.NotYetReturned;

    public Route getStoryRoute() {
        TalkWithCaitlyn twc = getCh3TalkedWithCaitlyn();
        if ((twc == TalkWithCaitlyn.SaidGoodMother) || (twc == TalkWithCaitlyn.EnjoyedPossession)) {
            return Route.Caitlyn;
        } else if (getCh7KissedVaNal() == VaNalKiss.Kissed) {
            return Route.VaNal;
        } else if (getCh11ActedInSarahRoom() == ActivityInSarahRoom.Showered) {
            return Route.Sarah;
        }
        return Route.Phantom;
    }

    public DriveWithCaitlyn getCh3DroveWithCaitlyn() {
        return ch3DroveWithCaitlyn;
    }

    public TalkWithCaitlyn getCh3TalkedWithCaitlyn() {
        return ch3TalkedWithCaitlyn;
    }

    public boolean getCh3TalkedWithYukio() {
        return ch3TalkedWithYukio;
    }

    public LiteratureStoryAnswer getCh5AnsweredLiteratureStory() {
        return ch5AnsweredLiteratureStory;
    }

    public TwoChoiceAnswer getCh5AnsweredMathQuestion1() {
        return ch5AnsweredMathQuestion1;
    }

    public TwoChoiceAnswer getCh5AnsweredMathQuestion4() {
        return ch5AnsweredMathQuestion4;
    }

    public TwoChoiceAnswer getCh5AnsweredMathQuestion9() {
        return ch5AnsweredMathQuestion9;
    }

    public int getCh5NumCorrectMathAnswers() {
        int numCorrectAnswers = 0;
        TwoChoiceAnswer[] questions = {getCh5AnsweredMathQuestion1(), getCh5AnsweredMathQuestion4(),
                getCh5AnsweredMathQuestion9()};
        for (TwoChoiceAnswer q : questions) {
            if (q == TwoChoiceAnswer.Correct) {
                ++numCorrectAnswers;
            }
        }
        return numCorrectAnswers;
    }

    public PhysicalEducationAnswer getCh5AnsweredCoach() {
        return ch5AnsweredCoach;
    }

    public CheerleaderSpar getCh5SparredWithCheerleader() {
        return ch5SparredWithCheerleader;
    }

    public HewittHangout getCh7HungOutWithHewitt() {
        return ch7HungOutWithHewitt;
    }

    public VaNalKiss getCh7KissedVaNal() {
        return ch7KissedVaNal;
    }

    public FoxtrotReaction getCh9FoxtrotReacted() {
        return ch9FoxtrotReacted;
    }

    public HotelRoomPayment getCh11PayedForHotelRoom() {
        return ch11PayedForHotelRoom;
    }

    public WorkoutHarassment getCh11HarassedAfterWorkout() {
        return ch11HarassedAfterWorkout;
    }

    public ActivityInSarahRoom getCh11ActedInSarahRoom() {
        return ch11ActedInSarahRoom;
    }

    public void setCh3DroveWithCaitlyn(DriveWithCaitlyn ch3DroveWithCaitlyn) {
        this.ch3DroveWithCaitlyn = ch3DroveWithCaitlyn;
    }

    public void setCh3TalkedWithCaitlyn(TalkWithCaitlyn ch3TalkedWithCaitlyn) {
        this.ch3TalkedWithCaitlyn = ch3TalkedWithCaitlyn;
    }

    public void setCh3TalkedWithYukio(boolean ch3TalkedWithYukio) {
        this.ch3TalkedWithYukio = ch3TalkedWithYukio;
    }

    public void setCh5AnsweredLiteratureStory(LiteratureStoryAnswer ch5AnsweredLiteratureStory) {
        this.ch5AnsweredLiteratureStory = ch5AnsweredLiteratureStory;
    }

    public void setCh5AnsweredMathQuestion1(TwoChoiceAnswer ch5AnsweredMathQuestion1) {
        this.ch5AnsweredMathQuestion1 = ch5AnsweredMathQuestion1;
    }

    public void setCh5AnsweredMathQuestion4(TwoChoiceAnswer ch5AnsweredMathQuestion4) {
        this.ch5AnsweredMathQuestion4 = ch5AnsweredMathQuestion4;
    }

    public void setCh5AnsweredMathQuestion9(TwoChoiceAnswer ch5AnsweredMathQuestion9) {
        this.ch5AnsweredMathQuestion9 = ch5AnsweredMathQuestion9;
    }

    public void setCh5AnsweredCoach(PhysicalEducationAnswer ch5AnsweredCoach) {
        this.ch5AnsweredCoach = ch5AnsweredCoach;
    }

    public void setCh5SparredWithCheerleader(CheerleaderSpar ch5SparredWithCheerleader) {
        this.ch5SparredWithCheerleader = ch5SparredWithCheerleader;
    }

    public void setCh7HungOutWithHewitt(HewittHangout ch7HungOutWithHewitt) {
        this.ch7HungOutWithHewitt = ch7HungOutWithHewitt;
    }

    public void setCh7KissedVaNal(VaNalKiss ch7KissedVaNal) {
        this.ch7KissedVaNal = ch7KissedVaNal;
    }

    public void setCh9FoxtrotReacted(FoxtrotReaction ch9FoxtrotReacted) {
        this.ch9FoxtrotReacted = ch9FoxtrotReacted;
    }

    public void setCh11PayedForHotelRoom(HotelRoomPayment ch11PayedForHotelRoom) {
        this.ch11PayedForHotelRoom = ch11PayedForHotelRoom;
    }

    public void setCh11HarassedAfterWorkout(WorkoutHarassment ch11HarassedAfterWorkout) {
        this.ch11HarassedAfterWorkout = ch11HarassedAfterWorkout;
    }

    public void setCh11ActedInSarahRoom(ActivityInSarahRoom ch11ActedInSarahRoom) {
        this.ch11ActedInSarahRoom = ch11ActedInSarahRoom;
    }
}
