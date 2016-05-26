package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_7;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.LiteratureStoryAnswer;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.Route;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-19.
 */
public class Chapter7 extends Chapter {
    private static StoryChoiceList ch7Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7Title, 7002)}));

    private static StoryChoiceList ch7SleepyHead = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SleepyHead, 7003)}));

    private static StoryChoiceList ch7ISnoreAtSezja = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7ISnoreAtSezja, 7004)}));

    private static StoryChoiceList ch7ISnoreAtSezjaPause = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ellipsis, 7005)}));

    private static StoryChoiceList ch7WasSezjaCarleigh = new StoryChoiceList(R.drawable.sezja_wakes_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WasSezjaCarleigh, 7006)}));

    private static StoryChoiceList ch7SezjaFingersChin = new StoryChoiceList(R.drawable.sezja_fingers_carleigh_chin,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaFingersChin, 7007)}));

    private static StoryChoiceList ch7SezjaAsBestFriend = new StoryChoiceList(R.drawable.sezja_fingers_carleigh_chin,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaAsBestFriend, 7008)}));

    private static StoryChoiceList ch7SezjaHugsMe = new StoryChoiceList(R.drawable.sezja_hugs_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaHugsMe, 7009)}));

    private static StoryChoiceList ch7WhyIsSezjaHere = new StoryChoiceList(R.drawable.sezja_hugs_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WhyIsSezjaHere, 7010)}));

    private static StoryChoiceList ch7SezjaStaysWithMe = new StoryChoiceList(R.drawable.sezja_hugs_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaStaysWithMe, 7011)}));

    private static StoryChoiceList ch7CanSezjaActNormal = new StoryChoiceList(R.drawable.sezja_hugs_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7CanSezjaActNormal, 7012)}));
    private static StoryChoiceList ch7LostCreditForLoweringSelvesForLiterture = new StoryChoiceList(R.drawable.literature_results,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7LostCreditForLoweringSelvesForLiterture, 7016)}));
    private static StoryChoiceList ch7FullCreditForLiterature = new StoryChoiceList(R.drawable.literature_results,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7FullCreditForLiterature, 7017)}));
    private static StoryChoiceList ch7LostCreditForNotBeingOneselfForLiterature = new StoryChoiceList(R.drawable.literature_results,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7LostCreditForNotBeingOneselfForLiterature, 7016)}));
    private static StoryChoiceList ch7LiteratureTeacherIsDrag = new StoryChoiceList(R.drawable.literature_results,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7LiteratureTeacherIsDrag, 7018)}));
    private static StoryChoiceList ch7CarleighsGroupCheers = new StoryChoiceList(R.drawable.literature_results,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7CarleighsGroupCheers, 7018)}));
    private static StoryChoiceList ch7SezjaIsQuiet = new StoryChoiceList(R.drawable.literature_results,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaIsQuiet, 7019)}));
    private static StoryChoiceList ch7MorningPasses = new StoryChoiceList(R.drawable.elodie_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7MorningPasses, 7020)}));
    private static StoryChoiceList ch7LunchBegins = new StoryChoiceList(R.drawable.elodie_second_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7LunchBegins, 7021)}));
    private static StoryChoiceList ch7IAcceptHangout = new StoryChoiceList(R.drawable.elodie_second_lunch,
            Arrays.asList(new IStoryChoice[]{new IAcceptHangout(), new IDeclineHangout()}));
    private static StoryChoiceList ch7BaqerBurpsAtMe = new StoryChoiceList(R.drawable.hewitt_burps,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerBurpsAtMe, 7023)}));
    private static StoryChoiceList ch7BaqerIsJerk = new StoryChoiceList(R.drawable.elodie_angry,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerIsJerk, 7024)}));
    private static StoryChoiceList ch7HewittActsDifferent = new StoryChoiceList(R.drawable.elodie_leaves_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7HewittActsDifferent, 7025)}));
    private static StoryChoiceList ch7VaNalCallsMe = new StoryChoiceList(R.drawable.elodie_leaves_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalCallsMe, 7026)}));
    private static StoryChoiceList ch7BaqerReturns = new StoryChoiceList(R.drawable.elodie_meets_vanal,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerReturns, 7027)}));
    private static StoryChoiceList ch7BaqerNoticesVaNal = new StoryChoiceList(R.drawable.vanal_berates_baqer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerNoticesVaNal, 7028)}));
    private static StoryChoiceList ch7HewittDoesNotDeserveBaqer = new StoryChoiceList(R.drawable.vanal_berates_baqer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7HewittDoesNotDeserveBaqer, 7029)}));
    private static StoryChoiceList ch7VaNalDaresToWatchBaqer = new StoryChoiceList(R.drawable.vanal_berates_baqer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalDaresToWatchBaqer, 7030)}));
    private static StoryChoiceList ch7BaqerFollowedMe = new StoryChoiceList(R.drawable.vanal_berates_baqer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerFollowedMe, 7031)}));
    private static StoryChoiceList ch7BaqerGrabsMe = new StoryChoiceList(R.drawable.baqer_grabs_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerGrabsMe, 7032)}));
    private static StoryChoiceList ch7VaNalPullsBaqer = new StoryChoiceList(R.drawable.vanal_pulls_baqer_from_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalPullsBaqer, 7033)}));
    private static StoryChoiceList ch7VaNalSeperatesBaqer = new StoryChoiceList(R.drawable.baqer_dispossess_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalSeperatesBaqer, 7034)}));
    private static StoryChoiceList ch7BaqerFlees = new StoryChoiceList(R.drawable.baqer_dispossess_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7BaqerFlees, 7035)}));
    private static StoryChoiceList ch7CanIPossessHewitt = new StoryChoiceList(R.drawable.vanal_consoles_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7CanIPossessHewitt, 7036)}));
    private static StoryChoiceList ch7SureINod = new StoryChoiceList(R.drawable.vanal_consoles_elodie,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SureINod, 7037)}));
    private static StoryChoiceList ch7VaNalPossessesElodie = new StoryChoiceList(R.drawable.kaden_possesses_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalPossessesElodie, 7038)}));
    private static StoryChoiceList ch7WeBuyHam = new StoryChoiceList(R.drawable.hewitt_and_elodie_hold_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WeBuyHam, 7039)}));
    private static StoryChoiceList ch7WeEatHam = new StoryChoiceList(R.drawable.hewitt_second_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WeEatHam, 7040)}));
    private static StoryChoiceList ch7VaNalIntoducesHerself = new StoryChoiceList(R.drawable.hewitt_second_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalIntoducesHerself, 7041)}));
    private static StoryChoiceList ch7WhyWillIGoToRuins = new StoryChoiceList(R.drawable.hewitt_second_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WhyWillIGoToRuins, 7042)}));
    private static StoryChoiceList ch7GoingWillMakeSense = new StoryChoiceList(R.drawable.hewitt_second_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7GoingWillMakeSense, 7043)}));
    private static StoryChoiceList ch7SezjaReturns = new StoryChoiceList(R.drawable.sezja_comes_to_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaReturns, 7044)}));
    private static StoryChoiceList ch7SezjaCallsVaNalBestFriend = new StoryChoiceList(R.drawable.sezja_comes_to_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaCallsVaNalBestFriend, 7045)}));
    private static StoryChoiceList ch7SezjaMistakesVaNal = new StoryChoiceList(R.drawable.sezja_comes_to_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaMistakesVaNal, 7046)}));
    private static StoryChoiceList ch7IAmHere = new StoryChoiceList(R.drawable.sezja_comes_to_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IAmHere, 7047)}));
    private static StoryChoiceList ch7SezjaGreetsMeAgain = new StoryChoiceList(R.drawable.sezja_gasps_at_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaGreetsMeAgain, 7048)}));
    private static StoryChoiceList ch7CanSezjaGetCarleighsTest = new StoryChoiceList(R.drawable.sezja_gasps_at_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7CanSezjaGetCarleighsTest, 7049)}));
    private static StoryChoiceList ch7WhyDoIAskSezja = new StoryChoiceList(R.drawable.sezja_gasps_at_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WhyDoIAskSezja, 7050)}));
    private static StoryChoiceList ch7ITookCarleighsTest = new StoryChoiceList(R.drawable.sezja_gasps_at_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7ITookCarleighsTest, 7051)}));
    private static StoryChoiceList ch7SezjaGetsNervousTalking = new StoryChoiceList(R.drawable.sezja_gasps_at_lunch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7SezjaGetsNervousTalking, 7052)}));
    private static StoryChoiceList ch7IScore10 = new StoryChoiceList(R.drawable.carleigh_gets_math_grade,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IScore10, 7057)}));
    private static StoryChoiceList ch7IScore9 = new StoryChoiceList(R.drawable.carleigh_gets_math_grade,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IScore9, 7057)}));
    private static StoryChoiceList ch7IScore8 = new StoryChoiceList(R.drawable.carleigh_gets_math_grade,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IScore8, 7057)}));
    private static StoryChoiceList ch7IScore7 = new StoryChoiceList(R.drawable.carleigh_gets_math_grade,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IScore7, 7057)}));
    private static StoryChoiceList ch7AfternoonPasses = new StoryChoiceList(R.drawable.hewitt_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7AfternoonPasses, 7058)}));
    private static StoryChoiceList ch7VaNalEntersDorm = new StoryChoiceList(R.drawable.vanal_enters_bedroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalEntersDorm, 7059)}));
    private static StoryChoiceList ch7ElodieIsVaNal = new StoryChoiceList(R.drawable.vanal_enters_bedroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7ElodieIsVaNal, 7060)}));
    private static StoryChoiceList ch7HowDidVaNalEnter = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7HowDidVaNalEnter, 7061)}));
    private static StoryChoiceList ch7VaNalPitiesMe = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalPitiesMe, 7062)}));
    private static StoryChoiceList ch7WhatDoesVaNalMean = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WhatDoesVaNalMean, 7063)}));
    private static StoryChoiceList ch7ISeekCompanionship = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7ISeekCompanionship, 7064)}));
    private static StoryChoiceList ch7VaNalStrokesMe = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalStrokesMe, 7065)}));
    private static StoryChoiceList ch7WhatIsWrong = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WhatIsWrong, 7067)}));
    private static StoryChoiceList ch7WrongAge = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7WrongAge, 7068)}));
    private static StoryChoiceList ch7IAmHewitt = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IAmHewitt, 7069)}));
    private static StoryChoiceList ch7VaNalDisintrestsMe = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalDisintrestsMe, 7070)}));
    private static StoryChoiceList ch7VaNalAdmitsDisrespect = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalAdmitsDisrespect, 7075)}));
    private static StoryChoiceList ch7HeartMustBeCared = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7HeartMustBeCared, 7072)}));
    private static StoryChoiceList ch7OKINod = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7OKINod, 7073)}));
    private static StoryChoiceList ch7VaNalKissesMe = new StoryChoiceList(R.drawable.elodie_kisses_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalKissesMe, 7074)}));
    private static StoryChoiceList ch7VaNalLeavesBed = new StoryChoiceList(R.drawable.elodie_kisses_hewitt,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalLeavesBed, 7075)}));
    private static StoryChoiceList ch7GodsWillDispossess = new StoryChoiceList(R.drawable.vanal_leaves_bedroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7GodsWillDispossess, 7076)}));
    private static StoryChoiceList ch7VaNalLeavesDorm = new StoryChoiceList(R.drawable.vanal_leaves_bedroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7VaNalLeavesDorm, 7077)}));
    private static StoryChoiceList ch7ISleep = new StoryChoiceList(R.drawable.hewitt_sleeps,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7ISleep, 8001)}));

    private static StoryChoiceList ch7IReturnToLiteratureClass() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        LiteratureStoryAnswer answer = flags.getCh5AnsweredLiteratureStory();
        switch (answer) {
            case PlayToStrengths:
                nextState = 7013;
                break;
            case AvoidStupidity:
                nextState = 7015;
                break;
            default:
                nextState = 7014;
                break;
        }
        return new StoryChoiceList(R.drawable.literature_results,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.
                        ch7IReturnToLiteratureClass, nextState)}));
    }

    private static StoryChoiceList ch7IGetCarleighsTest() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        int score = flags.getCh5NumCorrectMathAnswers();
        if (score >= 3) {
            nextState = 7053;
        } else if (score == 2) {
            nextState = 7054;
        } else if (score == 1) {
            nextState = 7055;
        } else {
            nextState = 7056;
        }
        return new StoryChoiceList(R.drawable.carleigh_gets_math_grade,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch7IGetCarleighsTest, nextState)}));
    }

    private static StoryChoiceList ch7KissVaNalDecision() {
        ArrayList<IStoryChoice> nextPages = new ArrayList<>();
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        nextPages.add(new IDoNotKissVaNal());
        if (flags.getStoryRoute() == Route.Phantom) {
            nextPages.add(new IWillKissVaNal());
        }
        StoryChoiceList newList = new StoryChoiceList(R.drawable.elodie_by_hewitt_bed, nextPages);
        return newList;
    }

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 7001:
                return ch7Title;
            case 7002:
                return ch7SleepyHead;
            case 7003:
                return ch7ISnoreAtSezja;
            case 7004:
                return ch7ISnoreAtSezjaPause;
            case 7005:
                return ch7WasSezjaCarleigh;
            case 7006:
                return ch7SezjaFingersChin;
            case 7007:
                return ch7SezjaAsBestFriend;
            case 7008:
                return ch7SezjaHugsMe;
            case 7009:
                return ch7WhyIsSezjaHere;
            case 7010:
                return ch7SezjaStaysWithMe;
            case 7011:
                return ch7CanSezjaActNormal;
            case 7012:
                return ch7IReturnToLiteratureClass();
            case 7013:
                return ch7LostCreditForLoweringSelvesForLiterture;
            case 7014:
                return ch7FullCreditForLiterature;
            case 7015:
                return ch7LostCreditForNotBeingOneselfForLiterature;
            case 7016:
                return ch7LiteratureTeacherIsDrag;
            case 7017:
                return ch7CarleighsGroupCheers;
            case 7018:
                return ch7SezjaIsQuiet;
            case 7019:
                return ch7MorningPasses;
            case 7020:
                return ch7LunchBegins;
            case 7021:
                return ch7IAcceptHangout;
            case 7022:
                return ch7BaqerBurpsAtMe;
            case 7023:
                return ch7BaqerIsJerk;
            case 7024:
                return ch7HewittActsDifferent;
            case 7025:
                return ch7VaNalCallsMe;
            case 7026:
                return ch7BaqerReturns;
            case 7027:
                return ch7BaqerNoticesVaNal;
            case 7028:
                return ch7HewittDoesNotDeserveBaqer;
            case 7029:
                return ch7VaNalDaresToWatchBaqer;
            case 7030:
                return ch7BaqerFollowedMe;
            case 7031:
                return ch7BaqerGrabsMe;
            case 7032:
                return ch7VaNalPullsBaqer;
            case 7033:
                return ch7VaNalSeperatesBaqer;
            case 7034:
                return ch7BaqerFlees;
            case 7035:
                return ch7CanIPossessHewitt;
            case 7036:
                return ch7SureINod;
            case 7037:
                return ch7VaNalPossessesElodie;
            case 7038:
                return ch7WeBuyHam;
            case 7039:
                return ch7WeEatHam;
            case 7040:
                return ch7VaNalIntoducesHerself;
            case 7041:
                return ch7WhyWillIGoToRuins;
            case 7042:
                return ch7GoingWillMakeSense;
            case 7043:
                return ch7SezjaReturns;
            case 7044:
                return ch7SezjaCallsVaNalBestFriend;
            case 7045:
                return ch7SezjaMistakesVaNal;
            case 7046:
                return ch7IAmHere;
            case 7047:
                return ch7SezjaGreetsMeAgain;
            case 7048:
                return ch7CanSezjaGetCarleighsTest;
            case 7049:
                return ch7WhyDoIAskSezja;
            case 7050:
                return ch7ITookCarleighsTest;
            case 7051:
                return ch7SezjaGetsNervousTalking;
            case 7052:
                return ch7IGetCarleighsTest();
            case 7053:
                return ch7IScore10;
            case 7054:
                return ch7IScore9;
            case 7055:
                return ch7IScore8;
            case 7056:
                return ch7IScore7;
            case 7057:
                return ch7AfternoonPasses;
            case 7058:
                return ch7VaNalEntersDorm;
            case 7059:
                return ch7ElodieIsVaNal;
            case 7060:
                return ch7HowDidVaNalEnter;
            case 7061:
                return ch7VaNalPitiesMe;
            case 7062:
                return ch7WhatDoesVaNalMean;
            case 7063:
                return ch7ISeekCompanionship;
            case 7064:
                return ch7VaNalStrokesMe;
            case 7065:
                return ch7KissVaNalDecision();
            case 7066:
                return ch7WhatIsWrong;
            case 7067:
                return ch7WrongAge;
            case 7068:
                return ch7IAmHewitt;
            case 7069:
                return ch7VaNalDisintrestsMe;
            case 7070:
                return ch7VaNalAdmitsDisrespect;
            case 7071:
                return ch7HeartMustBeCared;
            case 7072:
                return ch7OKINod;
            case 7073:
                return ch7VaNalKissesMe;
            case 7074:
                return ch7VaNalLeavesBed;
            case 7075:
                return ch7GodsWillDispossess;
            case 7076:
                return ch7VaNalLeavesDorm;
            case 7077:
                return ch7ISleep;
        }
        return null;
    }
}
