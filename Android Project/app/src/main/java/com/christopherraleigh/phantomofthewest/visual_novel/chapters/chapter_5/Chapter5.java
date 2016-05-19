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

    private static StoryChoiceList ch5BekShtiiWakesMe = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5BekShtiiWakesMe, 5003)}));

    private static StoryChoiceList ch5PlanIsRoundabout = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5PlanIsRoundabout, 5004)}));

    private static StoryChoiceList ch5RangersCannotCaptureMe = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5RangersCannotCaptureMe, 5005)}));

    private static StoryChoiceList ch5IEnterVent = new StoryChoiceList(R.drawable.bekshtii_points_at_vent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IEnterVent, 5006)}));

    private static StoryChoiceList ch5IExitVent = new StoryChoiceList(R.drawable.kaden_flies_out_of_vent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IExitVent, 5007)}));

    private static StoryChoiceList ch5IReachSchool = new StoryChoiceList(R.drawable.st_josephine_at_dawn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IReachSchool, 5008)}));

    private static StoryChoiceList ch5IPossessElodie = new StoryChoiceList(R.drawable.two_girls_bedroom_dark,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IPossessElodie, 5009)}));

    private static StoryChoiceList ch5CarleighWakesMe = new StoryChoiceList(R.drawable.awaken_as_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CarleighWakesMe, 5010)}));

    private static StoryChoiceList ch5ISearchElodiesMemory = new StoryChoiceList(R.drawable.elodie_pajamas,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5ISearchElodiesMemory, 5011)}));

    private static StoryChoiceList ch5IDressSlowly = new StoryChoiceList(R.drawable.elodie_and_carleigh_pajamas,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IDressSlowly, 5012)}));

    private static StoryChoiceList ch5INodAtCarleigh = new StoryChoiceList(R.drawable.elodie_and_carleigh_pajamas,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5INodAtCarleigh, 5013)}));

    private static StoryChoiceList ch5IDressElodie = new StoryChoiceList(R.drawable.elodie_uniform,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IDressElodie, 5014)}));

    private static StoryChoiceList ch5IEnterLiteratureClass = new StoryChoiceList(R.drawable.elodie_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IEnterLiteratureClass, 5015)}));

    private static StoryChoiceList ch5IReadPaulsStory = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IReadPaulsStory, 5016)}));

    private static StoryChoiceList ch5WhyDidPaulWantToFitIn = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5WhyDidPaulWantToFitIn, 5017)}));

    private static StoryChoiceList ch5BadWriting = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5BadWriting, 5018)}));

    private static StoryChoiceList ch5PutWhatTeacherWants = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5PutWhatTeacherWants, 5019)}));

    private static StoryChoiceList ch5PaulHadNothingUnique = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5PaulHadNothingUnique, 5020)}));

    private static StoryChoiceList ch5SureCarleighWrites = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5SureCarleighWrites, 5021)}));

    private static StoryChoiceList ch5WasPaulJustified = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5WasPaulJustified, 5022)}));

    private static StoryChoiceList ch5WhyBeYourself = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5WhyBeYourself, 5023)}));

    private static StoryChoiceList ch5SureISay = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5SureISay, 5024)}));

    private static StoryChoiceList ch5YouCannotLowerYourself = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new YouCannotLowerYourself(), new YouNeedToStayConfident(), new YouAvoidStupidity()}));

    private static StoryChoiceList ch5CannotAssociateWithLowlyPeople = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CannotAssociateWithLowlyPeople, 5028)}));

    private static StoryChoiceList ch5CarleighWasTeased = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CarleighWasTeased, 5028)}));

    private static StoryChoiceList ch5IAmPragmatic = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IAmPragmatic, 5028)}));

    private static StoryChoiceList ch5WasActivityTerrible = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5WasActivityTerrible, 5029)}));

    private static StoryChoiceList ch5WriterThinksKidsAreDumb = new StoryChoiceList(R.drawable.literature_discussion,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5WriterThinksKidsAreDumb, 5030)}));

    private static StoryChoiceList ch5IPassByCheerleader = new StoryChoiceList(R.drawable.elodie_passes_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IPassByCheerleader, 5031)}));

    private static StoryChoiceList ch5CheerleaderTripsMe = new StoryChoiceList(R.drawable.elodie_trips,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CheerleaderTripsMe, 5032)}));

    private static StoryChoiceList ch5HewittConsolesMe = new StoryChoiceList(R.drawable.elodie_first_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5HewittConsolesMe, 5033)}));

    private static StoryChoiceList ch5CheerleaderIsJealous = new StoryChoiceList(R.drawable.elodie_first_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CheerleaderIsJealous, 5034)}));

    private static StoryChoiceList ch5CanIStudyWithCarleigh = new StoryChoiceList(R.drawable.elodie_first_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CanIStudyWithCarleigh, 5035)}));

    private static StoryChoiceList ch5IEnterLibrary = new StoryChoiceList(R.drawable.elodie_first_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IEnterLibrary, 5036)}));

    private static StoryChoiceList ch5ISeeCarleighsTextbook = new StoryChoiceList(R.drawable.carleigh_textbook,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5ISeeCarleighsTextbook, 5037)}));

    private static StoryChoiceList ch5IPrepareToPossessCarleigh = new StoryChoiceList(R.drawable.carleigh_textbook,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IPrepareToPossessCarleigh, 5038)}));

    private static StoryChoiceList ch5IPossessCarleigh = new StoryChoiceList(R.drawable.carleigh_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IPossessCarleigh, 5039)}));

    private static StoryChoiceList ch5IExamineCarleigh = new StoryChoiceList(R.drawable.carleigh_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IExamineCarleigh, 5040)}));

    private static StoryChoiceList ch5ILeaveLibrary = new StoryChoiceList(R.drawable.elodie_leans_on_carleigh_shoulder,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5ILeaveLibrary, 5041)}));

    private static StoryChoiceList ch5WhyIsElodieHere = new StoryChoiceList(R.drawable.elodie_leans_on_carleigh_shoulder,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5WhyIsElodieHere, 5042)}));

    private static StoryChoiceList ch5ElodieIsExhausted = new StoryChoiceList(R.drawable.elodie_leans_on_carleigh_shoulder,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5ElodieIsExhausted, 5043)}));

    private static StoryChoiceList ch5ElodieIsDizzy = new StoryChoiceList(R.drawable.elodie_leans_on_carleigh_shoulder,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5ElodieIsDizzy, 5044)}));

    private static StoryChoiceList ch5IEnterMathClass = new StoryChoiceList(R.drawable.elodie_leans_on_carleigh_shoulder,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IEnterMathClass, 5045)}));

    private static StoryChoiceList ch5IStartMathTest = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IStartMathTest, 5046)}));

    private static StoryChoiceList ch5MathQuestion1 = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5MathQuestion1, 5047)}));

    private static StoryChoiceList ch5MathQuestion1Answer = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new MathQuestion1CorrectAnswer(), new MathQuestion1IncorrectAnswer()}));

    private static StoryChoiceList ch5MathQuestion4 = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5MathQuestion4, 5049)}));

    private static StoryChoiceList ch5MathQuestion4Answer = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new MathQuestion4IncorrectAnswer(), new MathQuestion4CorrectAnswer()}));

    private static StoryChoiceList ch5MathQuestion9 = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5MathQuestion9, 5051)}));

    private static StoryChoiceList ch5MathQuestion9Answer = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new MathQuestion9IncorrectAnswer(), new MathQuestion9CorrectAnswer()}));

    private static StoryChoiceList ch5MathClassEnds = new StoryChoiceList(R.drawable.carleigh_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5MathClassEnds, 5053)}));

    private static StoryChoiceList ch5IReencounterCheerleader = new StoryChoiceList(R.drawable.carleigh_passes_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IReencounterCheerleader, 5054)}));

    private static StoryChoiceList ch5IEnterLockerRoom = new StoryChoiceList(R.drawable.ananya_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IEnterLockerRoom, 5055)}));

    private static StoryChoiceList ch5IPossessAnanya = new StoryChoiceList(R.drawable.ananya_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IPossessAnanya, 5056)}));

    private static StoryChoiceList ch5IDressAnanya = new StoryChoiceList(R.drawable.ananya_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IDressAnanya, 5057)}));

    private static StoryChoiceList ch5ITieAnanyasHair = new StoryChoiceList(R.drawable.ananya_ties_hair,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5ITieAnanyasHair, 5058)}));

    private static StoryChoiceList ch5IEnterPEClass = new StoryChoiceList(R.drawable.ananya_gym_attendance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IEnterPEClass, 5059)}));

    private static StoryChoiceList ch5CoachLectures = new StoryChoiceList(R.drawable.ananya_gym_attendance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachLectures, 5060)}));

    private static StoryChoiceList ch5IRaiseHand = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IRaiseHand, 5061)}));

    private static StoryChoiceList ch5IWouldSubmit = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new IWouldSubmit(), new IWouldRun(), new IWouldDisarm()}));

    private static StoryChoiceList ch5CoachRespondsToSubmission = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachRespondsToSubmission, 5066)}));

    private static StoryChoiceList ch5CoachRespondsToRunning = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachRespondsToRunning, 5065)}));

    private static StoryChoiceList ch5CoachRespondsToDisarming = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachRespondsToDisarming, 5065)}));

    private static StoryChoiceList ch5IDisagreeWithCoach = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IDisagreeWithCoach, 5066)}));

    private static StoryChoiceList ch5CoachStartsSpar = new StoryChoiceList(R.drawable.ananya_raises_hand,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachStartsSpar, 5067)}));

    private static StoryChoiceList ch5IPartnerWithCheerleader = new StoryChoiceList(R.drawable.ananya_spar,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IPartnerWithCheerleader, 5068)}));

    private static StoryChoiceList ch5CheerleaderAndISpar = new StoryChoiceList(R.drawable.ananya_spar,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CheerleaderAndISpar, 5069)}));

    private static StoryChoiceList ch5IPinCheerleader = new StoryChoiceList(R.drawable.ananya_spar,
            Arrays.asList(new IStoryChoice[]{new IPinCheerleader(), new IKickCheerleader()}));

    private static StoryChoiceList ch5CoachCheersMe = new StoryChoiceList(R.drawable.ananya_pins_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachCheersMe, 5078)}));

    private static StoryChoiceList ch5CheerleaderFalls = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CheerleaderFalls, 5072)}));

    private static StoryChoiceList ch5IBringCoachToCheerleader = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IBringCoachToCheerleader, 5073)}));

    private static StoryChoiceList ch5CoachAsksWhatHappened = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachAsksWhatHappened, 5074)}));

    private static StoryChoiceList ch5CheerleaderIsBruised = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CheerleaderIsBruised, 5075)}));

    private static StoryChoiceList ch5IApologizeToCheerleader = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IApologizeToCheerleader, 5076)}));

    private static StoryChoiceList ch5CoachTellsMeToBeCareful = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5CoachTellsMeToBeCareful, 5077)}));

    private static StoryChoiceList ch5INodAtCoach = new StoryChoiceList(R.drawable.ananya_kicks_cheerleader,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5INodAtCoach, 5078)}));

    private static StoryChoiceList ch5PEClassEnds = new StoryChoiceList(R.drawable.dorms_first_afternoon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5PEClassEnds, 5079)}));

    private static StoryChoiceList ch5IDispossessAnanya = new StoryChoiceList(R.drawable.dorms_first_afternoon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch5IDispossessAnanya, 5080)}));

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
