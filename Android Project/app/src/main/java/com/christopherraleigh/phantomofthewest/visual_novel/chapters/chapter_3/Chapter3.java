package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.DriveWithCaitlyn;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TalkWithCaitlyn;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-12.
 */
public class Chapter3 extends Chapter {
    private static StoryChoiceList ch3Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3Title, 3002)}));

    private static StoryChoiceList ch3IAwaken = new StoryChoiceList(R.drawable.officer_awakens,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IAwaken, 3003)}));

    private static StoryChoiceList ch3SezjaGreetsMe = new StoryChoiceList(R.drawable.officer_lies_with_sezja,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3SezjaGreetsMe, 3004)}));

    private static StoryChoiceList ch3SezjaGreetsMePause = new StoryChoiceList(R.drawable.officer_lies_with_sezja,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ellipsis, 3005)}));

    private static StoryChoiceList ch3SezjaStartlesMe = new StoryChoiceList(R.drawable.officer_falls_from_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3SezjaStartlesMe, 3006)}));

    private static StoryChoiceList ch3SezjaAnswers = new StoryChoiceList(R.drawable.officer_falls_from_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3SezjaAnswers, 3007)}));

    private static StoryChoiceList ch3SezjaLeaves = new StoryChoiceList(R.drawable.officer_leans_over_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3SezjaLeaves, 3008)}));

    private static StoryChoiceList ch3IHaveToSignOut = new StoryChoiceList(R.drawable.officer_leans_over_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IHaveToSignOut, 3009)}));

    private static StoryChoiceList ch3PoliceWillBeSuspicious = new StoryChoiceList(R.drawable.officer_leans_over_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3PoliceWillBeSuspicious, 3010)}));

    private static StoryChoiceList ch3IHaveToReturnToArcticon = new StoryChoiceList(R.drawable.officer_leans_over_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IHaveToReturnToArcticon, 3011)}));

    private static StoryChoiceList ch3MyWorkIsCutOut = new StoryChoiceList(R.drawable.officer_leans_over_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3MyWorkIsCutOut, 3012)}));

    private static StoryChoiceList ch3ICallCaitlyn = new StoryChoiceList(R.drawable.officer_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ICallCaitlyn, 3013)}));

    private static StoryChoiceList ch3CaitlynDoesNotRecognizeMe = new StoryChoiceList(R.drawable.officer_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynDoesNotRecognizeMe, 3014)}));

    private static StoryChoiceList ch3ITellCaitlynIDrankElixir = new StoryChoiceList(R.drawable.officer_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ITellCaitlynIDrankElixir, 3015)}));

    private static StoryChoiceList ch3CaitlynBelievesMe = new StoryChoiceList(R.drawable.officer_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynBelievesMe, 3016)}));

    private static StoryChoiceList ch3IAskCaitlynToCome = new StoryChoiceList(R.drawable.officer_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IAskCaitlynToCome, 3017)}));

    private static StoryChoiceList ch3CaitlynAgreesToCome = new StoryChoiceList(R.drawable.officer_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynAgreesToCome, 3018)}));

    private static StoryChoiceList ch3CaitlynComes = new StoryChoiceList(R.drawable.caitlyn_drives_to_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynComes, 3019)}));

    private static StoryChoiceList ch3CaitlynNoticesMeAsOfficer = new StoryChoiceList(R.drawable.caitlyn_drives_to_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynNoticesMeAsOfficer, 3020)}));

    private static StoryChoiceList ch3IAskToPossessCaitlyn = new StoryChoiceList(R.drawable.caitlyn_drives_to_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IAskToPossessCaitlyn, 3021)}));

    private static StoryChoiceList ch3CaitlynHesitatesPossession = new StoryChoiceList(R.drawable.caitlyn_drives_to_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynHesitatesPossession, 3022)}));

    private static StoryChoiceList ch3IJustifyPossession = new StoryChoiceList(R.drawable.caitlyn_drives_to_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IJustifyPossession, 3023)}));

    private static StoryChoiceList ch3CaitlynAsksMeToDisguiseAsInfant = new StoryChoiceList(R.drawable.towel_in_car,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynAsksMeToDisguiseAsInfant, 3024)}));

    private static StoryChoiceList ch3IDiguiseAsInfant = new StoryChoiceList(R.drawable.
            towel_in_car, Arrays.asList(new IStoryChoice[]{new IDiguiseAsInfant(), new IRefuseToDiguiseAsInfant()}));

    private static StoryChoiceList ch3CaitlynBringsMeToHotel = new StoryChoiceList(R.drawable.infant_in_car,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynBringsMeToHotel, 3026)}));

    private static StoryChoiceList ch3IEnterHotelRoomFromBlanket = new StoryChoiceList(R.drawable.infant_crawls_under_door,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IEnterHotelRoomFromBlanket, 3027)}));

    private static StoryChoiceList ch3CaitlynChecksOut = new StoryChoiceList(R.drawable.caitlyn_with_infant_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynChecksOut, 3028)}));

    private static StoryChoiceList ch3CaitlynTriesToShowReceptionistMe = new StoryChoiceList(R.drawable.infant_shown_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynTriesToShowReceptionistMe, 3029)}));

    private static StoryChoiceList ch3ReceptionistLikesKatie = new StoryChoiceList(R.drawable.infant_shown_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ReceptionistLikesKatie, 3030)}));

    private static StoryChoiceList ch3CaitlynLeavesHotel = new StoryChoiceList(R.drawable.infant_shown_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynLeavesHotel, 3031)}));

    private static StoryChoiceList ch3CaitlynCannotBreastFeed = new StoryChoiceList(R.drawable.caitlyn_drives_on_highway,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynCannotBreastFeed, 3032)}));

    private static StoryChoiceList ch3CaitlynDrivesOnHighway = new StoryChoiceList(R.drawable.caitlyn_drives_on_highway,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynDrivesOnHighway, 3033)}));

    private static StoryChoiceList ch3CaitlynEntersArcticon = new StoryChoiceList(R.drawable.caitlyn_drives_to_arcticon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynEntersArcticon, 3034)}));

    private static StoryChoiceList ch3ILeaveBlanket = new StoryChoiceList(R.drawable.kaden_first_arrival_to_arcticon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ILeaveBlanket, 3045)}));

    private static StoryChoiceList ch3IWillOweCaitlynAFavor = new StoryChoiceList(R.drawable.towel_in_car,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IWillOweCaitlynAFavor, 3036)}));

    private static StoryChoiceList ch3IGoToHotel = new StoryChoiceList(R.drawable.caitlyn_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IGoToHotel, 3037)}));

    private static StoryChoiceList ch3IEnterHotelRoomFromCaitlyn = new StoryChoiceList(R.drawable.caitlyn_crawls_under_door,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IEnterHotelRoomFromCaitlyn, 3038)}));

    private static StoryChoiceList ch3ICheckOut = new StoryChoiceList(R.drawable.caitlyn_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ICheckOut, 3039)}));

    private static StoryChoiceList ch3IClaimToBeMyWife = new StoryChoiceList(R.drawable.caitlyn_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IClaimToBeMyWife, 3040)}));

    private static StoryChoiceList ch3ReceptionistDoubtsMe = new StoryChoiceList(R.drawable.caitlyn_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ReceptionistDoubtsMe, 3041)}));

    private static StoryChoiceList ch3IInsultReceptionist = new StoryChoiceList(R.drawable.caitlyn_tosses_key,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IInsultReceptionist, 3042)}));

    private static StoryChoiceList ch3IDriveOnHighway = new StoryChoiceList(R.drawable.caitlyn_drives_on_highway,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IDriveOnHighway, 3043)}));

    private static StoryChoiceList ch3IEnterArcticon = new StoryChoiceList(R.drawable.caitlyn_drives_to_arcticon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IEnterArcticon, 3044)}));

    private static StoryChoiceList ch3IDispossessCaitlyn = new StoryChoiceList(R.drawable.kaden_first_arrival_to_arcticon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IDispossessCaitlyn, 3045)}));

    private static StoryChoiceList ch3IConjureClothes = new StoryChoiceList(R.drawable.kaden_first_arrival_to_arcticon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IConjureClothes, 3046)}));

    private static StoryChoiceList ch3CaitlynDragsMyHand = new StoryChoiceList(R.drawable.kaden_first_arrival_to_arcticon,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynDragsMyHand, 3047)}));

    private static StoryChoiceList ch3YukioGreetsMe = new StoryChoiceList(R.drawable.yukio_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3YukioGreetsMe, 3048)}));

    private static StoryChoiceList ch3CaitlynExplainsMyGhostliness = new StoryChoiceList(R.drawable.yukio_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynExplainsMyGhostliness, 3049)}));

    private static StoryChoiceList ch3YukioIsAwed = new StoryChoiceList(R.drawable.yukio_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3YukioIsAwed, 3050)}));

    private static StoryChoiceList ch3CaitlynWantsToHelp = new StoryChoiceList(R.drawable.yukio_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynWantsToHelp, 3051)}));

    private static StoryChoiceList ch3ILeaveCaitlynAndYukio = new StoryChoiceList(R.drawable.yukio_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ILeaveCaitlynAndYukio, 3052)}));

    private static StoryChoiceList ch3IGoHome = new StoryChoiceList(R.drawable.kaden_on_tram,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IGoHome, 3053)}));

    private static StoryChoiceList ch3IRelax = new StoryChoiceList(R.drawable.kaden_on_tram,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IRelax, 3054)}));

    private static StoryChoiceList ch3BekShtiiGreetsMe = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3BekShtiiGreetsMe, 3055)}));

    private static StoryChoiceList ch3IKnowBekShtii = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IKnowBekShtii, 3056)}));

    private static StoryChoiceList ch3BekShtiiAsksMeToVisit = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3BekShtiiAsksMeToVisit, 3057)}));

    private static StoryChoiceList ch3IsItWesternContinentalPark = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IsItWesternContinentalPark, 3058)}));

    private static StoryChoiceList ch3BekShtiiAsksMeToStay = new StoryChoiceList(R.drawable.bekshtii_first_meets_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3BekShtiiAsksMeToStay, 3059)}));

    private static StoryChoiceList ch3BekShtiiLeaves = new StoryChoiceList(R.drawable.kaden_on_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3BekShtiiLeaves, 3060)}));
    private static StoryChoiceList ch3CaitlynPlaysWithFoxtrot = new StoryChoiceList(R.drawable.foxtrot_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynPlaysWithFoxtrot, 3062)}));
    private static StoryChoiceList ch3CaitlynAsksIfIWasEmbarrassed = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynAsksIfIWasEmbarrassed, 3064)}));
    private static StoryChoiceList ch3IAdmitEmbarrassment = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IAdmitEmbarrassment, 3065)}));
    private static StoryChoiceList ch3CaitlynHugsMe = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynHugsMe, 3066)}));
    private static StoryChoiceList ch3CanCaitlynAskPersonally = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CanCaitlynAskPersonally, 3067)}));
    private static StoryChoiceList ch3IReplyOK = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IReplyOK, 3068)}));
    private static StoryChoiceList ch3WouldCaitlynBeGoodMother = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3WouldCaitlynBeGoodMother, 3069)}));
    private static StoryChoiceList ch3IThink = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IThink, 3070)}));
    private static StoryChoiceList ch3CaitlynWouldBeGoodMother = new StoryChoiceList(R.drawable
            .kaden_talks_to_caitlyn, Arrays.asList(new IStoryChoice[]{new CaitlynWouldBeGoodMother(), new CaitlynMightBeGoodMother()}));
    private static StoryChoiceList ch3CaitlynThanksMe = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynThanksMe, 3073)}));
    private static StoryChoiceList ch3CaitlynAdmitsGoodIdea = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynAdmitsGoodIdea, 3073)}));
    private static StoryChoiceList ch3CaitlynJustifiesMotherhood = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynJustifiesMotherhood, 3085)}));
    private static StoryChoiceList ch3HowDidCaitlynFeelPossession = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3HowDidCaitlynFeelPossession, 3075)}));
    private static StoryChoiceList ch3CaitlynFeltLightheaded = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynFeltLightheaded, 3076)}));
    private static StoryChoiceList ch3IAscertainCaitlynsUnconciousness = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IAscertainCaitlynsUnconciousness, 3077)}));
    private static StoryChoiceList ch3CaitlynOnlySlept = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynOnlySlept, 3078)}));
    private static StoryChoiceList ch3IThankCaitlyn = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IThankCaitlyn, 3079)}));
    private static StoryChoiceList ch3CaitlynAcceptsThanks = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynAcceptsThanks, 3080)}));
    private static StoryChoiceList ch3HowDidIFeelDuringPossession = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3HowDidIFeelDuringPossession, 3081)}));
    private static StoryChoiceList ch3IEnjoyedPossession = new StoryChoiceList(R.drawable.
            kaden_talks_to_caitlyn, Arrays.asList(new IStoryChoice[]{new IEnjoyedPossession(), new PossessionFeltWeird()}));
    private static StoryChoiceList ch3CaitlynLikesBeingClose = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynLikesBeingClose, 3084)}));
    private static StoryChoiceList ch3CaitlynFeltWeird = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3CaitlynFeltWeird, 3084)}));
    private static StoryChoiceList ch3WasCaitlynsQuestionWeird = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3WasCaitlynsQuestionWeird, 3085)}));
    private static StoryChoiceList ch3ILikeTalkingWithCaitlyn = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ILikeTalkingWithCaitlyn, 3060)}));
    private static StoryChoiceList ch3YukioWorks = new StoryChoiceList(R.drawable.kaden_talks_to_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3YukioWorks, 3087)}));
    private static StoryChoiceList ch3IsYukioUnimpressed = new StoryChoiceList(R.drawable.kaden_talks_to_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3IsYukioUnimpressed, 3088)}));
    private static StoryChoiceList ch3YukioLecturesMe = new StoryChoiceList(R.drawable.kaden_talks_to_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3YukioLecturesMe, 3089)}));
    private static StoryChoiceList ch3ITakeCharge = new StoryChoiceList(R.drawable.kaden_talks_to_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch3ITakeCharge, 3060)}));

    private static StoryChoiceList ch3EndDecision() {
        ArrayList<IStoryChoice> nextPages = new ArrayList<>();
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        if (flags.getCh3TalkedWithCaitlyn() == TalkWithCaitlyn.HasNotTalked) {
            nextPages.add(new StoryChoice(R.string.ch3IVisitCaitlyn, 3061));
        }
        if (!flags.getCh3TalkedWithYukio()) {
            nextPages.add(new IVisitYukio());
        }
        nextPages.add(new StoryChoice(R.string.ch3ISleep, 4001));
        StoryChoiceList newList = new StoryChoiceList(R.drawable.kaden_on_bed, nextPages);
        return newList;
    }

    private static StoryChoiceList ch3IAmAllRight() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        if (flags.getCh3DroveWithCaitlyn() == DriveWithCaitlyn.PossessedCaitlyn) {
            nextState = 3074;
        } else {
            nextState = 3063;
        }
        return new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn, Arrays.asList(new
                IStoryChoice[]{new StoryChoice(R.string.ch3IAmAllRight, nextState)}));
    }

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 3001:
                return ch3Title;
            case 3002:
                return ch3IAwaken;
            case 3003:
                return ch3SezjaGreetsMe;
            case 3004:
                return ch3SezjaGreetsMePause;
            case 3005:
                return ch3SezjaStartlesMe;
            case 3006:
                return ch3SezjaAnswers;
            case 3007:
                return ch3SezjaLeaves;
            case 3008:
                return ch3IHaveToSignOut;
            case 3009:
                return ch3PoliceWillBeSuspicious;
            case 3010:
                return ch3IHaveToReturnToArcticon;
            case 3011:
                return ch3MyWorkIsCutOut;
            case 3012:
                return ch3ICallCaitlyn;
            case 3013:
                return ch3CaitlynDoesNotRecognizeMe;
            case 3014:
                return ch3ITellCaitlynIDrankElixir;
            case 3015:
                return ch3CaitlynBelievesMe;
            case 3016:
                return ch3IAskCaitlynToCome;
            case 3017:
                return ch3CaitlynAgreesToCome;
            case 3018:
                return ch3CaitlynComes;
            case 3019:
                return ch3CaitlynNoticesMeAsOfficer;
            case 3020:
                return ch3IAskToPossessCaitlyn;
            case 3021:
                return ch3CaitlynHesitatesPossession;
            case 3022:
                return ch3IJustifyPossession;
            case 3023:
                return ch3CaitlynAsksMeToDisguiseAsInfant;
            case 3024:
                return ch3IDiguiseAsInfant;
            case 3025:
                return ch3CaitlynBringsMeToHotel;
            case 3026:
                return ch3IEnterHotelRoomFromBlanket;
            case 3027:
                return ch3CaitlynChecksOut;
            case 3028:
                return ch3CaitlynTriesToShowReceptionistMe;
            case 3029:
                return ch3ReceptionistLikesKatie;
            case 3030:
                return ch3CaitlynLeavesHotel;
            case 3031:
                return ch3CaitlynCannotBreastFeed;
            case 3032:
                return ch3CaitlynDrivesOnHighway;
            case 3033:
                return ch3CaitlynEntersArcticon;
            case 3034:
                return ch3ILeaveBlanket;
            case 3035:
                return ch3IWillOweCaitlynAFavor;
            case 3036:
                return ch3IGoToHotel;
            case 3037:
                return ch3IEnterHotelRoomFromCaitlyn;
            case 3038:
                return ch3ICheckOut;
            case 3039:
                return ch3IClaimToBeMyWife;
            case 3040:
                return ch3ReceptionistDoubtsMe;
            case 3041:
                return ch3IInsultReceptionist;
            case 3042:
                return ch3IDriveOnHighway;
            case 3043:
                return ch3IEnterArcticon;
            case 3044:
                return ch3IDispossessCaitlyn;
            case 3045:
                return ch3IConjureClothes;
            case 3046:
                return ch3CaitlynDragsMyHand;
            case 3047:
                return ch3YukioGreetsMe;
            case 3048:
                return ch3CaitlynExplainsMyGhostliness;
            case 3049:
                return ch3YukioIsAwed;
            case 3050:
                return ch3CaitlynWantsToHelp;
            case 3051:
                return ch3ILeaveCaitlynAndYukio;
            case 3052:
                return ch3IGoHome;
            case 3053:
                return ch3IRelax;
            case 3054:
                return ch3BekShtiiGreetsMe;
            case 3055:
                return ch3IKnowBekShtii;
            case 3056:
                return ch3BekShtiiAsksMeToVisit;
            case 3057:
                return ch3IsItWesternContinentalPark;
            case 3058:
                return ch3BekShtiiAsksMeToStay;
            case 3059:
                return ch3BekShtiiLeaves;
            case 3060:
                return ch3EndDecision();
            case 3061:
                return ch3CaitlynPlaysWithFoxtrot;
            case 3062:
                return ch3IAmAllRight();
            case 3063:
                return ch3CaitlynAsksIfIWasEmbarrassed;
            case 3064:
                return ch3IAdmitEmbarrassment;
            case 3065:
                return ch3CaitlynHugsMe;
            case 3066:
                return ch3CanCaitlynAskPersonally;
            case 3067:
                return ch3IReplyOK;
            case 3068:
                return ch3WouldCaitlynBeGoodMother;
            case 3069:
                return ch3IThink;
            case 3070:
                return ch3CaitlynWouldBeGoodMother;
            case 3071:
                return ch3CaitlynThanksMe;
            case 3072:
                return ch3CaitlynAdmitsGoodIdea;
            case 3073:
                return ch3CaitlynJustifiesMotherhood;
            case 3074:
                return ch3HowDidCaitlynFeelPossession;
            case 3075:
                return ch3CaitlynFeltLightheaded;
            case 3076:
                return ch3IAscertainCaitlynsUnconciousness;
            case 3077:
                return ch3CaitlynOnlySlept;
            case 3078:
                return ch3IThankCaitlyn;
            case 3079:
                return ch3CaitlynAcceptsThanks;
            case 3080:
                return ch3HowDidIFeelDuringPossession;
            case 3081:
                return ch3IEnjoyedPossession;
            case 3082:
                return ch3CaitlynLikesBeingClose;
            case 3083:
                return ch3CaitlynFeltWeird;
            case 3084:
                return ch3WasCaitlynsQuestionWeird;
            case 3085:
                return ch3ILikeTalkingWithCaitlyn;
            case 3086:
                return ch3YukioWorks;
            case 3087:
                return ch3IsYukioUnimpressed;
            case 3088:
                return ch3YukioLecturesMe;
            case 3089:
                return ch3ITakeCharge;
        }
        return null;
    }
}
