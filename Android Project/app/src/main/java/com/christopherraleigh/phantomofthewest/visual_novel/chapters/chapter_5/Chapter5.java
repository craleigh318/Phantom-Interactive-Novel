package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class Chapter5 extends Chapter {
    private static StoryChoiceList ch5Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5Title, 5002)}));

    private static StoryChoiceList Ch5BekShtiiWakesMe()
    {
        return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch5BekShtiiWakesMe", 5003) });
    }

    private static StoryChoiceList Ch5PlanIsRoundabout()
    {
        return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PlanIsRoundabout", 5004) });
    }

    private static StoryChoiceList Ch5RangersCannotCaptureMe()
    {
        return StoryChoiceList.FromResource("Bek'Shtii-First-Meets-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch5RangersCannotCaptureMe", 5005) });
    }

    private static StoryChoiceList Ch5IEnterVent()
    {
        return StoryChoiceList.FromResource("Bek'Shtii-Points-at-Vent.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterVent", 5006) });
    }

    private static StoryChoiceList Ch5IExitVent()
    {
        return StoryChoiceList.FromResource("Kaden-Flies-out-of-Vent.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IExitVent", 5007) });
    }

    private static StoryChoiceList Ch5IReachSchool()
    {
        return StoryChoiceList.FromResource("St-Josephine-at-Dawn.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IReachSchool", 5008) });
    }

    private static StoryChoiceList Ch5IPossessElodie()
    {
        return StoryChoiceList.FromResource("Two-Girls-Bedroom-Dark.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPossessElodie", 5009) });
    }

    private static StoryChoiceList Ch5CarleighWakesMe()
    {
        return StoryChoiceList.FromResource("Awaken-as-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighWakesMe", 5010) });
    }

    private static StoryChoiceList Ch5ISearchElodiesMemory()
    {
        return StoryChoiceList.FromResource("Elodie-Pajamas.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ISearchElodiesMemory", 5011) });
    }

    private static StoryChoiceList Ch5IDressSlowly()
    {
        return StoryChoiceList.FromResource("Elodie-and-Carleigh-Pajamas.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDressSlowly", 5012) });
    }

    private static StoryChoiceList Ch5INodAtCarleigh()
    {
        return StoryChoiceList.FromResource("Elodie-and-Carleigh-Pajamas.png", new IStoryChoice[] { StoryChoice.FromResource("ch5INodAtCarleigh", 5013) });
    }

    private static StoryChoiceList Ch5IDressElodie()
    {
        return StoryChoiceList.FromResource("Elodie-Uniform.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDressElodie", 5014) });
    }

    private static StoryChoiceList Ch5IEnterLiteratureClass()
    {
        return StoryChoiceList.FromResource("Elodie-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterLiteratureClass", 5015) });
    }

    private static StoryChoiceList Ch5IReadPaulsStory()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IReadPaulsStory", 5016) });
    }

    private static StoryChoiceList Ch5WhyDidPaulWantToFitIn()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WhyDidPaulWantToFitIn", 5017) });
    }

    private static StoryChoiceList Ch5BadWriting()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5BadWriting", 5018) });
    }

    private static StoryChoiceList Ch5PutWhatTeacherWants()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PutWhatTeacherWants", 5019) });
    }

    private static StoryChoiceList Ch5PaulHadNothingUnique()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PaulHadNothingUnique", 5020) });
    }

    private static StoryChoiceList Ch5SureCarleighWrites()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5SureCarleighWrites", 5021) });
    }

    private static StoryChoiceList Ch5WasPaulJustified()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WasPaulJustified", 5022) });
    }

    private static StoryChoiceList Ch5WhyBeYourself()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WhyBeYourself", 5023) });
    }

    private static StoryChoiceList Ch5SureISay()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5SureISay", 5024) });
    }

    private static StoryChoiceList Ch5YouCannotLowerYourself()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { new YouCannotLowerYourself(), new YouNeedToStayConfident(), new YouAvoidStupidity() });
    }

    private static StoryChoiceList Ch5CannotAssociateWithLowlyPeople()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CannotAssociateWithLowlyPeople", 5028) });
    }

    private static StoryChoiceList Ch5CarleighWasTeased()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighWasTeased", 5028) });
    }

    private static StoryChoiceList Ch5IAmPragmatic()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IAmPragmatic", 5028) });
    }

    private static StoryChoiceList Ch5WasActivityTerrible()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WasActivityTerrible", 5029) });
    }

    private static StoryChoiceList Ch5WriterThinksKidsAreDumb()
    {
        return StoryChoiceList.FromResource("Literature-Discussion.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WriterThinksKidsAreDumb", 5030) });
    }

    private static StoryChoiceList Ch5IPassByCheerleader()
    {
        return StoryChoiceList.FromResource("Elodie-Passes-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPassByCheerleader", 5031) });
    }

    private static StoryChoiceList Ch5CheerleaderTripsMe()
    {
        return StoryChoiceList.FromResource("Elodie-Trips.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderTripsMe", 5032) });
    }

    private static StoryChoiceList Ch5HewittConsolesMe()
    {
        return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5HewittConsolesMe", 5033) });
    }

    private static StoryChoiceList Ch5CheerleaderIsJealous()
    {
        return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderIsJealous", 5034) });
    }

    private static StoryChoiceList Ch5CanIStudyWithCarleigh()
    {
        return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CanIStudyWithCarleigh", 5035) });
    }

    private static StoryChoiceList Ch5IEnterLibrary()
    {
        return StoryChoiceList.FromResource("Elodie-First-Lunch.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterLibrary", 5036) });
    }

    private static StoryChoiceList Ch5ISeeCarleighsTextbook()
    {
        return StoryChoiceList.FromResource("Carleigh-Textbook.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ISeeCarleighsTextbook", 5037) });
    }

    private static StoryChoiceList Ch5IPrepareToPossessCarleigh()
    {
        return StoryChoiceList.FromResource("Carleigh-Textbook.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPrepareToPossessCarleigh", 5038) });
    }

    private static StoryChoiceList Ch5IPossessCarleigh()
    {
        return StoryChoiceList.FromResource("Carleigh-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPossessCarleigh", 5039) });
    }

    private static StoryChoiceList Ch5IExamineCarleigh()
    {
        return StoryChoiceList.FromResource("Carleigh-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IExamineCarleigh", 5040) });
    }

    private static StoryChoiceList Ch5ILeaveLibrary()
    {
        return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ILeaveLibrary", 5041) });
    }

    private static StoryChoiceList Ch5WhyIsElodieHere()
    {
        return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5WhyIsElodieHere", 5042) });
    }

    private static StoryChoiceList Ch5ElodieIsExhausted()
    {
        return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ElodieIsExhausted", 5043) });
    }

    private static StoryChoiceList Ch5ElodieIsDizzy()
    {
        return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ElodieIsDizzy", 5044) });
    }

    private static StoryChoiceList Ch5IEnterMathClass()
    {
        return StoryChoiceList.FromResource("Elodie-Leans-on-Carleigh-Shoulder.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterMathClass", 5045) });
    }

    private static StoryChoiceList Ch5IStartMathTest()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IStartMathTest", 5046) });
    }

    private static StoryChoiceList Ch5MathQuestion1()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathQuestion1", 5047) });
    }

    private static StoryChoiceList Ch5MathQuestion1Answer()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { new MathQuestion1CorrectAnswer(), new MathQuestion1IncorrectAnswer() });
    }

    private static StoryChoiceList Ch5MathQuestion4()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathQuestion4", 5049) });
    }

    private static StoryChoiceList Ch5MathQuestion4Answer()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { new MathQuestion4IncorrectAnswer(), new MathQuestion4CorrectAnswer() });
    }

    private static StoryChoiceList Ch5MathQuestion9()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathQuestion9", 5051) });
    }

    private static StoryChoiceList Ch5MathQuestion9Answer()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { new MathQuestion9IncorrectAnswer(), new MathQuestion9CorrectAnswer() });
    }

    private static StoryChoiceList Ch5MathClassEnds()
    {
        return StoryChoiceList.FromResource("Carleigh-at-Desk.png", new IStoryChoice[] { StoryChoice.FromResource("ch5MathClassEnds", 5053) });
    }

    private static StoryChoiceList Ch5IReencounterCheerleader()
    {
        return StoryChoiceList.FromResource("Carleigh-Passes-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IReencounterCheerleader", 5054) });
    }

    private static StoryChoiceList Ch5IEnterLockerRoom()
    {
        return StoryChoiceList.FromResource("Ananya-Intro.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterLockerRoom", 5055) });
    }

    private static StoryChoiceList Ch5IPossessAnanya()
    {
        return StoryChoiceList.FromResource("Ananya-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPossessAnanya", 5056) });
    }

    private static StoryChoiceList Ch5IDressAnanya()
    {
        return StoryChoiceList.FromResource("Ananya-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDressAnanya", 5057) });
    }

    private static StoryChoiceList Ch5ITieAnanyasHair()
    {
        return StoryChoiceList.FromResource("Ananya-Ties-Hair.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ITieAnanyasHair", 5058) });
    }

    private static StoryChoiceList Ch5IEnterPEClass()
    {
        return StoryChoiceList.FromResource("Ananya-Gym-Attendance.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IEnterPEClass", 5059) });
    }

    private static StoryChoiceList Ch5CoachLectures()
    {
        return StoryChoiceList.FromResource("Ananya-Gym-Attendance.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachLectures", 5060) });
    }

    private static StoryChoiceList Ch5IRaiseHand()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IRaiseHand", 5061) });
    }

    private static StoryChoiceList Ch5IWouldSubmit()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { new IWouldSubmit(), new IWouldRun(), new IWouldDisarm() });
    }

    private static StoryChoiceList Ch5CoachRespondsToSubmission()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachRespondsToSubmission", 5066) });
    }

    private static StoryChoiceList Ch5CoachRespondsToRunning()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachRespondsToRunning", 5065) });
    }

    private static StoryChoiceList Ch5CoachRespondsToDisarming()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachRespondsToDisarming", 5065) });
    }

    private static StoryChoiceList Ch5IDisagreeWithCoach()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDisagreeWithCoach", 5066) });
    }

    private static StoryChoiceList Ch5CoachStartsSpar()
    {
        return StoryChoiceList.FromResource("Ananya-Raises-Hand.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachStartsSpar", 5067) });
    }

    private static StoryChoiceList Ch5IPartnerWithCheerleader()
    {
        return StoryChoiceList.FromResource("Ananya-Spar.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IPartnerWithCheerleader", 5068) });
    }

    private static StoryChoiceList Ch5CheerleaderAndISpar()
    {
        return StoryChoiceList.FromResource("Ananya-Spar.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderAndISpar", 5069) });
    }

    private static StoryChoiceList Ch5IPinCheerleader()
    {
        return StoryChoiceList.FromResource("Ananya-Spar.png", new IStoryChoice[] { new IPinCheerleader(), new IKickCheerleader() });
    }

    private static StoryChoiceList Ch5CoachCheersMe()
    {
        return StoryChoiceList.FromResource("Ananya-Pins-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachCheersMe", 5078) });
    }

    private static StoryChoiceList Ch5CheerleaderFalls()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderFalls", 5072) });
    }

    private static StoryChoiceList Ch5IBringCoachToCheerleader()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IBringCoachToCheerleader", 5073) });
    }

    private static StoryChoiceList Ch5CoachAsksWhatHappened()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachAsksWhatHappened", 5074) });
    }

    private static StoryChoiceList Ch5CheerleaderIsBruised()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CheerleaderIsBruised", 5075) });
    }

    private static StoryChoiceList Ch5IApologizeToCheerleader()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IApologizeToCheerleader", 5076) });
    }

    private static StoryChoiceList Ch5CoachTellsMeToBeCareful()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CoachTellsMeToBeCareful", 5077) });
    }

    private static StoryChoiceList Ch5INodAtCoach()
    {
        return StoryChoiceList.FromResource("Ananya-Kicks-Cheerleader.png", new IStoryChoice[] { StoryChoice.FromResource("ch5INodAtCoach", 5078) });
    }

    private static StoryChoiceList Ch5PEClassEnds()
    {
        return StoryChoiceList.FromResource("Dorms-First-Afternoon.png", new IStoryChoice[] { StoryChoice.FromResource("ch5PEClassEnds", 5079) });
    }

    private static StoryChoiceList Ch5IDispossessAnanya()
    {
        return StoryChoiceList.FromResource("Dorms-First-Afternoon.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDispossessAnanya", 5080) });
    }

    private static StoryChoiceList Ch5IHideInTheCloset()
    {
        return StoryChoiceList.FromResource("Phantom-in-Closet.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IHideInTheCloset", 5081) });
    }

    private static StoryChoiceList Ch5IRepossessElodie()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Possessed.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IRepossessElodie", 5082) });
    }

    private static StoryChoiceList Ch5IRelax()
    {
        return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IRelax", 5083) });
    }

    private static StoryChoiceList Ch5ICallCaitlyn()
    {
        return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ICallCaitlyn", 5084) });
    }

    private static StoryChoiceList Ch5IGreetCaitlyn()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IGreetCaitlyn", 5085) });
    }

    private static StoryChoiceList Ch5AmIOK()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5AmIOK", 5086) });
    }

    private static StoryChoiceList Ch5ITellCaitlynAboutSchool()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ITellCaitlynAboutSchool", 5087) });
    }

    private static StoryChoiceList Ch5CaitlynOffersToDrive()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CaitlynOffersToDrive", 5088) });
    }

    private static StoryChoiceList Ch5IDeclineCaitlynsOffer()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IDeclineCaitlynsOffer", 5089) });
    }

    private static StoryChoiceList Ch5OK()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5OK", 5090) });
    }

    private static StoryChoiceList Ch5YukioWantsToTalk()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioWantsToTalk", 5091) });
    }

    private static StoryChoiceList Ch5YukioGreetsMe()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioGreetsMe", 5092) });
    }

    private static StoryChoiceList Ch5IGreetYukio()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IGreetYukio", 5093) });
    }

    private static StoryChoiceList Ch5YukioDislikesMeGettingFreshAir()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioDislikesMeGettingFreshAir", 5094) });
    }

    private static StoryChoiceList Ch5IWillCallSupervisor()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IWillCallSupervisor", 5095) });
    }

    private static StoryChoiceList Ch5IAmApathetic()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IAmApathetic", 5096) });
    }

    private static StoryChoiceList Ch5IApologizeToYukio()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IApologizeToYukio", 5097) });
    }

    private static StoryChoiceList Ch5YukioDismissesMe()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioDismissesMe", 5098) });
    }

    private static StoryChoiceList Ch5YukioIsWrong()
    {
        return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5YukioIsWrong", 5099) });
    }

    private static StoryChoiceList Ch5IThinkTooLong()
    {
        return StoryChoiceList.FromResource("Resting-Elodie.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IThinkTooLong", 5100) });
    }

    private static StoryChoiceList Ch5CarleighReturns()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighReturns", 5101) });
    }

    private static StoryChoiceList Ch5HowWasCarleighsMath()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5HowWasCarleighsMath", 5102) });
    }

    private static StoryChoiceList Ch5CarleighForgets()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighForgets", 5103) });
    }

    private static StoryChoiceList Ch5CarleighWillBeStar()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighWillBeStar", 5104) });
    }

    private static StoryChoiceList Ch5ElodieCanBeCool()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ElodieCanBeCool", 5105) });
    }

    private static StoryChoiceList Ch5CarleighAndILaugh()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Talk-to-Carleigh.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CarleighAndILaugh", 5106) });
    }

    private static StoryChoiceList Ch5HewittCallsMe()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5HewittCallsMe", 5107) });
    }

    private static StoryChoiceList Ch5IGreetHewitt()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IGreetHewitt", 5108) });
    }

    private static StoryChoiceList Ch5CanIHangOutWithHewitt()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5CanIHangOutWithHewitt", 5109) });
    }

    private static StoryChoiceList Ch5IMightHangOutWithHewitt()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-on-Phone-Evening.png", new IStoryChoice[] { StoryChoice.FromResource("ch5IMightHangOutWithHewitt", 5110) });
    }

    private static StoryChoiceList Ch5ISleep()
    {
        return StoryChoiceList.FromResource("Resting-Elodie-Night.png", new IStoryChoice[] { StoryChoice.FromResource("ch5ISleep", 6001) });
    }

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 5001: return ch5Title;
            case 5002: return ch5BekShtiiWakesMe;
            case 5003: return ch5PlanIsRoundabout;
            case 5004: return ch5RangersCannotCaptureMe;
            case 5005: return ch5IEnterVent;
            case 5006: return ch5IExitVent;
            case 5007: return ch5IReachSchool;
            case 5008: return ch5IPossessElodie;
            case 5009: return ch5CarleighWakesMe;
            case 5010: return ch5ISearchElodiesMemory;
            case 5011: return ch5IDressSlowly;
            case 5012: return ch5INodAtCarleigh;
            case 5013: return ch5IDressElodie;
            case 5014: return ch5IEnterLiteratureClass;
            case 5015: return ch5IReadPaulsStory;
            case 5016: return ch5WhyDidPaulWantToFitIn;
            case 5017: return ch5BadWriting;
            case 5018: return ch5PutWhatTeacherWants;
            case 5019: return ch5PaulHadNothingUnique;
            case 5020: return ch5SureCarleighWrites;
            case 5021: return ch5WasPaulJustified;
            case 5022: return ch5WhyBeYourself;
            case 5023: return ch5SureISay;
            case 5024: return ch5YouCannotLowerYourself;
            case 5025: return ch5CannotAssociateWithLowlyPeople;
            case 5026: return ch5CarleighWasTeased;
            case 5027: return ch5IAmPragmatic;
            case 5028: return ch5WasActivityTerrible;
            case 5029: return ch5WriterThinksKidsAreDumb;
            case 5030: return ch5IPassByCheerleader;
            case 5031: return ch5CheerleaderTripsMe;
            case 5032: return ch5HewittConsolesMe;
            case 5033: return ch5CheerleaderIsJealous;
            case 5034: return ch5CanIStudyWithCarleigh;
            case 5035: return ch5IEnterLibrary;
            case 5036: return ch5ISeeCarleighsTextbook;
            case 5037: return ch5IPrepareToPossessCarleigh;
            case 5038: return ch5IPossessCarleigh;
            case 5039: return ch5IExamineCarleigh;
            case 5040: return ch5ILeaveLibrary;
            case 5041: return ch5WhyIsElodieHere;
            case 5042: return ch5ElodieIsExhausted;
            case 5043: return ch5ElodieIsDizzy;
            case 5044: return ch5IEnterMathClass;
            case 5045: return ch5IStartMathTest;
            case 5046: return ch5MathQuestion1;
            case 5047: return ch5MathQuestion1Answer;
            case 5048: return ch5MathQuestion4;
            case 5049: return ch5MathQuestion4Answer;
            case 5050: return ch5MathQuestion9;
            case 5051: return ch5MathQuestion9Answer;
            case 5052: return ch5MathClassEnds;
            case 5053: return ch5IReencounterCheerleader;
            case 5054: return ch5IEnterLockerRoom;
            case 5055: return ch5IPossessAnanya;
            case 5056: return ch5IDressAnanya;
            case 5057: return ch5ITieAnanyasHair;
            case 5058: return ch5IEnterPEClass;
            case 5059: return ch5CoachLectures;
            case 5060: return ch5IRaiseHand;
            case 5061: return ch5IWouldSubmit;
            case 5062: return ch5CoachRespondsToSubmission;
            case 5063: return ch5CoachRespondsToRunning;
            case 5064: return ch5CoachRespondsToDisarming;
            case 5065: return ch5IDisagreeWithCoach;
            case 5066: return ch5CoachStartsSpar;
            case 5067: return ch5IPartnerWithCheerleader;
            case 5068: return ch5CheerleaderAndISpar;
            case 5069: return ch5IPinCheerleader;
            case 5070: return ch5CoachCheersMe;
            case 5071: return ch5CheerleaderFalls;
            case 5072: return ch5IBringCoachToCheerleader;
            case 5073: return ch5CoachAsksWhatHappened;
            case 5074: return ch5CheerleaderIsBruised;
            case 5075: return ch5IApologizeToCheerleader;
            case 5076: return ch5CoachTellsMeToBeCareful;
            case 5077: return ch5INodAtCoach;
            case 5078: return ch5PEClassEnds;
            case 5079: return ch5IDispossessAnanya;
            case 5080: return ch5IHideInTheCloset;
            case 5081: return ch5IRepossessElodie;
            case 5082: return ch5IRelax;
            case 5083: return ch5ICallCaitlyn;
            case 5084: return ch5IGreetCaitlyn;
            case 5085: return ch5AmIOK;
            case 5086: return ch5ITellCaitlynAboutSchool;
            case 5087: return ch5CaitlynOffersToDrive;
            case 5088: return ch5IDeclineCaitlynsOffer;
            case 5089: return ch5OK;
            case 5090: return ch5YukioWantsToTalk;
            case 5091: return ch5YukioGreetsMe;
            case 5092: return ch5IGreetYukio;
            case 5093: return ch5YukioDislikesMeGettingFreshAir;
            case 5094: return ch5IWillCallSupervisor;
            case 5095: return ch5IAmApathetic;
            case 5096: return ch5IApologizeToYukio;
            case 5097: return ch5YukioDismissesMe;
            case 5098: return ch5YukioIsWrong;
            case 5099: return ch5IThinkTooLong;
            case 5100: return ch5CarleighReturns;
            case 5101: return ch5HowWasCarleighsMath;
            case 5102: return ch5CarleighForgets;
            case 5103: return ch5CarleighWillBeStar;
            case 5104: return ch5ElodieCanBeCool;
            case 5105: return ch5CarleighAndILaugh;
            case 5106: return ch5HewittCallsMe;
            case 5107: return ch5IGreetHewitt;
            case 5108: return ch5CanIHangOutWithHewitt;
            case 5109: return ch5IMightHangOutWithHewitt;
            case 5110: return ch5ISleep;
        }
        return null;
    }
}
