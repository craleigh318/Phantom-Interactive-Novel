package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_9;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.CheerleaderSpar;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.PhysicalEducationAnswer;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TalkWithCaitlyn;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.VaNalKiss;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-21.
 */
public class Chapter9 extends Chapter {
    private static StoryChoiceList ch9Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9Title, 9002)}));

    private static StoryChoiceList ch9IAwaken = new StoryChoiceList(R.drawable.hewitt_dresses_casually,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IAwaken, 9003)}));

    private static StoryChoiceList ch9IWaitForBus = new StoryChoiceList(R.drawable.bus_wait,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IWaitForBus, 9004)}));

    private static StoryChoiceList ch9CarleighLikesHewittSleeping = new StoryChoiceList(R.drawable.bus_wait,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CarleighLikesHewittSleeping, 9005)}));

    private static StoryChoiceList ch9ElodieWouldMissHewitt = new StoryChoiceList(R.drawable.bus_wait,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ElodieWouldMissHewitt, 9006)}));

    private static StoryChoiceList ch9IBoardBus = new StoryChoiceList(R.drawable.bus_wait,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IBoardBus, 9007)}));
    private static StoryChoiceList ch9CarleighScored10 = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CarleighScored10, 9012)}));
    private static StoryChoiceList ch9CarleighScored9 = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CarleighScored9, 9012)}));
    private static StoryChoiceList ch9CarleighScored8 = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CarleighScored8, 9012)}));
    private static StoryChoiceList ch9CarleighScored7 = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CarleighScored7, 9012)}));
    private static StoryChoiceList ch9OhElodieSays = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9OhElodieSays, 9013)}));
    private static StoryChoiceList ch9BusExitsHighway = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BusExitsHighway, 9014)}));
    private static StoryChoiceList ch9BusPassesCheckpoint = new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BusPassesCheckpoint, 9015)}));
    private static StoryChoiceList ch9IExitBus = new StoryChoiceList(R.drawable.bus_outside_lodge,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IExitBus, 9016)}));
    private static StoryChoiceList ch9GuideAnnounces = new StoryChoiceList(R.drawable.tour_guide_announcement,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9GuideAnnounces, 9017)}));
    private static StoryChoiceList ch9MuchBuildup = new StoryChoiceList(R.drawable.tour_guide_announcement,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9MuchBuildup, 9018)}));
    private static StoryChoiceList ch9IEnterLodge = new StoryChoiceList(R.drawable.tv_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IEnterLodge, 9019)}));
    private static StoryChoiceList ch9SarahStartsInterview = new StoryChoiceList(R.drawable.tv_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9SarahStartsInterview, 9020)}));
    private static StoryChoiceList ch9OfficerTalks = new StoryChoiceList(R.drawable.tv_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9OfficerTalks, 9021)}));
    private static StoryChoiceList ch9ISeeMySketch = new StoryChoiceList(R.drawable.tv_phantom_sketch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ISeeMySketch, 9022)}));
    private static StoryChoiceList ch9SarahSignsOut = new StoryChoiceList(R.drawable.tv_sarah_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9SarahSignsOut, 9023)}));
    private static StoryChoiceList ch9PublicKnowsMe = new StoryChoiceList(R.drawable.tv_sarah_at_desk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9PublicKnowsMe, 9024)}));
    private static StoryChoiceList ch9WeStartWalk = new StoryChoiceList(R.drawable.nature_walk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9WeStartWalk, 9025)}));
    private static StoryChoiceList ch9WeFindIvy = new StoryChoiceList(R.drawable.poison_ivy,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9WeFindIvy, 9026)}));
    private static StoryChoiceList ch9WeFindPolecats = new StoryChoiceList(R.drawable.polecat,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9WeFindPolecats, 9027)}));
    private static StoryChoiceList ch9WeFindSnakes = new StoryChoiceList(R.drawable.snake,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9WeFindSnakes, 9028)}));
    private static StoryChoiceList ch9WeSeeRuins = new StoryChoiceList(R.drawable.ancient_city_distant,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9WeSeeRuins, 9029)}));
    private static StoryChoiceList ch9ShouldIRun = new StoryChoiceList(R.drawable.ancient_city_distant,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ShouldIRun, 9030)}));
    private static StoryChoiceList ch9IDispossessHewitt = new StoryChoiceList(R.drawable.hewitt_dispossessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IDispossessHewitt, 9031)}));
    private static StoryChoiceList ch9GuideSeesBlackBear = new StoryChoiceList(R.drawable.ranger_sees_black_bear,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9GuideSeesBlackBear, 9032)}));
    private static StoryChoiceList ch9IEnterRuins = new StoryChoiceList(R.drawable.kaden_to_pyramid_top,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IEnterRuins, 9033)}));
    private static StoryChoiceList ch9BaqerGreetsMe = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BaqerGreetsMe, 9034)}));
    private static StoryChoiceList ch9ICanRedeem = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ICanRedeem, 9035)}));
    private static StoryChoiceList ch9BaqerCannotTrustMe = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BaqerCannotTrustMe, 9036)}));
    private static StoryChoiceList ch9BekShtiiAndBaqerYell = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiiAndBaqerYell, 9037)}));
    private static StoryChoiceList ch9VaNalsKissIsRuined = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9VaNalsKissIsRuined, 9040)}));
    private static StoryChoiceList ch9GodsAreInappropriate = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9GodsAreInappropriate, 9040)}));
    private static StoryChoiceList ch9BekShtiisNewPlan = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiisNewPlan, 9041)}));
    private static StoryChoiceList ch9YesIAdmit = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9YesIAdmit, 9042)}));
    private static StoryChoiceList ch9HowDidBekShtiiKnow = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9HowDidBekShtiiKnow, 9043)}));
    private static StoryChoiceList ch9BekShtiiWillEmpower = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiiWillEmpower, 9044)}));
    private static StoryChoiceList ch9BekShtiiChants = new StoryChoiceList(R.drawable.pyramid_meeting,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiiChants, 9045)}));
    private static StoryChoiceList ch9BeckShtiiFinishesChant = new StoryChoiceList(R.drawable.kaden_ill_with_bekshtii,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BeckShtiiFinishesChant, 9046)}));
    private static StoryChoiceList ch9ISolidify = new StoryChoiceList(R.drawable.kaden_feels_old_face,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ISolidify, 9047)}));
    private static StoryChoiceList ch9BekShtiiExplainsAbilities = new StoryChoiceList(R.drawable.kaden_feels_old_face,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiiExplainsAbilities, 9048)}));
    private static StoryChoiceList ch9IExtendTentacles = new StoryChoiceList(R.drawable.kaden_first_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IExtendTentacles, 9049)}));
    private static StoryChoiceList ch9BekShtiiThoughtAhead = new StoryChoiceList(R.drawable.kaden_first_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiiThoughtAhead, 9050)}));
    private static StoryChoiceList ch9BekShtiiDismissesMe = new StoryChoiceList(R.drawable.kaden_first_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BekShtiiDismissesMe, 9051)}));
    private static StoryChoiceList ch9SezjaDismissesMe = new StoryChoiceList(R.drawable.kaden_first_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9SezjaDismissesMe, 9052)}));
    private static StoryChoiceList ch9VaNalDissmissesMe = new StoryChoiceList(R.drawable.kaden_first_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9VaNalDissmissesMe, 9053)}));
    private static StoryChoiceList ch9BaqerDissmissesMe = new StoryChoiceList(R.drawable.kaden_first_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9BaqerDissmissesMe, 9054)}));
    private static StoryChoiceList ch9ILeaveRuins = new StoryChoiceList(R.drawable.kaden_leaves_ancient_city,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ILeaveRuins, 9055)}));
    private static StoryChoiceList ch9IEncounterRanger = new StoryChoiceList(R.drawable.kaden_encounters_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IEncounterRanger, 9056)}));
    private static StoryChoiceList ch9IAmLeaving = new StoryChoiceList(R.drawable.kaden_encounters_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IAmLeaving, 9057)}));
    private static StoryChoiceList ch9HowDidIEnterPark = new StoryChoiceList(R.drawable.kaden_encounters_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9HowDidIEnterPark, 9058)}));
    private static StoryChoiceList ch9ISneakedOntoBus = new StoryChoiceList(R.drawable.kaden_encounters_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ISneakedOntoBus, 9059)}));
    private static StoryChoiceList ch9RangerMustDetainMe = new StoryChoiceList(R.drawable.kaden_encounters_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9RangerMustDetainMe, 9060)}));
    private static StoryChoiceList ch9DoNotRunSaysRanger = new StoryChoiceList(R.drawable.kaden_encounters_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9DoNotRunSaysRanger, 9063)}));
    private static StoryChoiceList ch9IFalselySurrender = new StoryChoiceList(R.drawable.ranger_handcuffs_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IFalselySurrender, 9063)}));
    private static StoryChoiceList ch9IStealRangersGun = new StoryChoiceList(R.drawable.kaden_tentacles_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IStealRangersGun, 9064)}));
    private static StoryChoiceList ch9ICrushMagazine = new StoryChoiceList(R.drawable.kaden_tentacles_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ICrushMagazine, 9065)}));
    private static StoryChoiceList ch9IReturnGun = new StoryChoiceList(R.drawable.kaden_returns_rifle,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IReturnGun, 9066)}));
    private static StoryChoiceList ch9WhoAmI = new StoryChoiceList(R.drawable.kaden_returns_rifle,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9WhoAmI, 9067)}));
    private static StoryChoiceList ch9RangerKnowsMeOnTV = new StoryChoiceList(R.drawable.i_am_the_phantom_of_the_west,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9RangerKnowsMeOnTV, 9068)}));
    private static StoryChoiceList ch9IWantToBeLeft = new StoryChoiceList(R.drawable.i_am_the_phantom_of_the_west,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IWantToBeLeft, 9069)}));
    private static StoryChoiceList ch9IAmPhantomOfWest = new StoryChoiceList(R.drawable.i_am_the_phantom_of_the_west,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IAmPhantomOfWest, 9070)}));
    private static StoryChoiceList ch9IFlyAboveContinent = new StoryChoiceList(R.drawable.phantom_above_continent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IFlyAboveContinent, 9071)}));
    private static StoryChoiceList ch9IOverlookNewFerando = new StoryChoiceList(R.drawable.phantom_above_continent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IOverlookNewFerando, 9072)}));
    private static StoryChoiceList ch9IOverlookPark = new StoryChoiceList(R.drawable.phantom_above_continent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IOverlookPark, 9073)}));
    private static StoryChoiceList ch9IOverlookArcticon = new StoryChoiceList(R.drawable.phantom_above_continent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IOverlookArcticon, 9074)}));
    private static StoryChoiceList ch9IOverlookHighway = new StoryChoiceList(R.drawable.phantom_above_continent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IOverlookHighway, 9075)}));
    private static StoryChoiceList ch9IEnterArcticon = new StoryChoiceList(R.drawable.kaden_flies_into_vent,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IEnterArcticon, 9076)}));
    private static StoryChoiceList ch9IReachMyRoom = new StoryChoiceList(R.drawable.kaden_on_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IReachMyRoom, 9077)}));
    private static StoryChoiceList ch9IGoToLounge = new StoryChoiceList(R.drawable.kaden_lab_alone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IGoToLounge, 9078)}));
    private static StoryChoiceList ch9CaitlynAndYukioCome = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CaitlynAndYukioCome, 9079)}));
    private static StoryChoiceList ch9ThereIAm = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ThereIAm, 9080)}));
    private static StoryChoiceList ch9CaitlynAndYukioWorried = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CaitlynAndYukioWorried, 9081)}));
    private static StoryChoiceList ch9YukioSawMeOnTV = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9YukioSawMeOnTV, 9082)}));
    private static StoryChoiceList ch9DoesCaitlynRemember = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9DoesCaitlynRemember, 9083)}));
    private static StoryChoiceList ch9CaitlynRemembersOfficer = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CaitlynRemembersOfficer, 9084)}));
    private static StoryChoiceList ch9IMayReappearOnTV = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IMayReappearOnTV, 9085)}));
    private static StoryChoiceList ch9ISummarizeToYukio = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ISummarizeToYukio, 9086)}));
    private static StoryChoiceList ch9YukioSimplifiesMySummary = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9YukioSimplifiesMySummary, 9087)}));
    private static StoryChoiceList ch9YeahBasically = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9YeahBasically, 9088)}));
    private static StoryChoiceList ch9IAlreadyMetFoxtrot = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IAlreadyMetFoxtrot, 9091)}));
    private static StoryChoiceList ch9IDidNotMeetFoxtrot = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IDidNotMeetFoxtrot, 9091)}));
    private static StoryChoiceList ch9FoxtrotToCheerMeUp = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9FoxtrotToCheerMeUp, 9092)}));
    private static StoryChoiceList ch9FoxtrotStares = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9FoxtrotStares, 9093)}));
    private static StoryChoiceList ch9CaitlynShouldPutFoxtrotBack = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CaitlynShouldPutFoxtrotBack, 9099)}));
    private static StoryChoiceList ch9FoxtrotHisses = new StoryChoiceList(R.drawable.foxtrot_hiss,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9FoxtrotHisses, 9099)}));
    private static StoryChoiceList ch9FoxtrotAllowsPet = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9FoxtrotAllowsPet, 9097)}));
    private static StoryChoiceList ch9IRubFoxtrot = new StoryChoiceList(R.drawable.foxtrot_petted,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IRubFoxtrot, 9098)}));
    private static StoryChoiceList ch9FoxtrotLicksMe = new StoryChoiceList(R.drawable.foxtrot_licks_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9FoxtrotLicksMe, 9100)}));
    private static StoryChoiceList ch9CaitlynFrownsAtFoxtrot = new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9CaitlynFrownsAtFoxtrot, 9100)}));
    private static StoryChoiceList ch9IReturnHome = new StoryChoiceList(R.drawable.kaden_on_tram,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IReturnHome, 9101)}));
    private static StoryChoiceList ch9ISleep = new StoryChoiceList(R.drawable.kaden_sleeps,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9ISleep, 10001)}));

    private static StoryChoiceList ch9ILeaveFoxtrot() {
        boolean kickedCheerleader =
                (PotWVN.getMainVN().getEventFlags().getCh5SparredWithCheerleader() == CheerleaderSpar.Kicked);
        return new StoryChoiceList(R.drawable.caitlyn_brings_foxtrot,
                Arrays.asList(new IStoryChoice[]{new ILeaveFoxtrot(), IWillPetFoxtrot.Create(kickedCheerleader)}));
    }

    private static StoryChoiceList ch9DidCarleighTalkAboutMathTest() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        int score = flags.getCh5NumCorrectMathAnswers();
        if (score >= 3) {
            nextState = 9008;
        } else if (score == 2) {
            nextState = 9009;
        } else if (score == 1) {
            nextState = 9010;
        } else {
            nextState = 9011;
        }
        return new StoryChoiceList(R.drawable.hewitt_and_co_on_bus,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.
                        ch9DidCarleighTalkAboutMathTest, nextState)}));
    }

    private static StoryChoiceList ch9GodsAreFlawed() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        VaNalKiss didKiss = flags.getCh7KissedVaNal();
        if (didKiss == VaNalKiss.Kissed) {
            nextState = 9038;
        } else {
            nextState = 9039;
        }
        return new StoryChoiceList(R.drawable.pyramid_meeting,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9GodsAreFlawed, nextState)}));
    }

    private static StoryChoiceList ch9IRemember() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        PhysicalEducationAnswer answer = flags.getCh5AnsweredCoach();
        switch (answer) {
            case Run:
                nextState = 9061;
                break;
            case Disarm:
                nextState = 9063;
                break;
            default:
                nextState = 9062;
                break;
        }
        return new StoryChoiceList(R.drawable.kaden_encounters_ranger,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IRemember, nextState)}));
    }

    private static StoryChoiceList ch9IWaitForFoxtrot() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        boolean metFoxtrot = (flags.getCh3TalkedWithCaitlyn() != TalkWithCaitlyn.HasNotTalked);
        if (metFoxtrot) {
            nextState = 9089;
        } else {
            nextState = 9090;
        }
        return new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch9IWaitForFoxtrot, nextState)}));
    }

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 9001:
                return ch9Title;
            case 9002:
                return ch9IAwaken;
            case 9003:
                return ch9IWaitForBus;
            case 9004:
                return ch9CarleighLikesHewittSleeping;
            case 9005:
                return ch9ElodieWouldMissHewitt;
            case 9006:
                return ch9IBoardBus;
            case 9007:
                return ch9DidCarleighTalkAboutMathTest();
            case 9008:
                return ch9CarleighScored10;
            case 9009:
                return ch9CarleighScored9;
            case 9010:
                return ch9CarleighScored8;
            case 9011:
                return ch9CarleighScored7;
            case 9012:
                return ch9OhElodieSays;
            case 9013:
                return ch9BusExitsHighway;
            case 9014:
                return ch9BusPassesCheckpoint;
            case 9015:
                return ch9IExitBus;
            case 9016:
                return ch9GuideAnnounces;
            case 9017:
                return ch9MuchBuildup;
            case 9018:
                return ch9IEnterLodge;
            case 9019:
                return ch9SarahStartsInterview;
            case 9020:
                return ch9OfficerTalks;
            case 9021:
                return ch9ISeeMySketch;
            case 9022:
                return ch9SarahSignsOut;
            case 9023:
                return ch9PublicKnowsMe;
            case 9024:
                return ch9WeStartWalk;
            case 9025:
                return ch9WeFindIvy;
            case 9026:
                return ch9WeFindPolecats;
            case 9027:
                return ch9WeFindSnakes;
            case 9028:
                return ch9WeSeeRuins;
            case 9029:
                return ch9ShouldIRun;
            case 9030:
                return ch9IDispossessHewitt;
            case 9031:
                return ch9GuideSeesBlackBear;
            case 9032:
                return ch9IEnterRuins;
            case 9033:
                return ch9BaqerGreetsMe;
            case 9034:
                return ch9ICanRedeem;
            case 9035:
                return ch9BaqerCannotTrustMe;
            case 9036:
                return ch9BekShtiiAndBaqerYell;
            case 9037:
                return ch9GodsAreFlawed();
            case 9038:
                return ch9VaNalsKissIsRuined;
            case 9039:
                return ch9GodsAreInappropriate;
            case 9040:
                return ch9BekShtiisNewPlan;
            case 9041:
                return ch9YesIAdmit;
            case 9042:
                return ch9HowDidBekShtiiKnow;
            case 9043:
                return ch9BekShtiiWillEmpower;
            case 9044:
                return ch9BekShtiiChants;
            case 9045:
                return ch9BeckShtiiFinishesChant;
            case 9046:
                return ch9ISolidify;
            case 9047:
                return ch9BekShtiiExplainsAbilities;
            case 9048:
                return ch9IExtendTentacles;
            case 9049:
                return ch9BekShtiiThoughtAhead;
            case 9050:
                return ch9BekShtiiDismissesMe;
            case 9051:
                return ch9SezjaDismissesMe;
            case 9052:
                return ch9VaNalDissmissesMe;
            case 9053:
                return ch9BaqerDissmissesMe;
            case 9054:
                return ch9ILeaveRuins;
            case 9055:
                return ch9IEncounterRanger;
            case 9056:
                return ch9IAmLeaving;
            case 9057:
                return ch9HowDidIEnterPark;
            case 9058:
                return ch9ISneakedOntoBus;
            case 9059:
                return ch9RangerMustDetainMe;
            case 9060:
                return ch9IRemember();
            case 9061:
                return ch9DoNotRunSaysRanger;
            case 9062:
                return ch9IFalselySurrender;
            case 9063:
                return ch9IStealRangersGun;
            case 9064:
                return ch9ICrushMagazine;
            case 9065:
                return ch9IReturnGun;
            case 9066:
                return ch9WhoAmI;
            case 9067:
                return ch9RangerKnowsMeOnTV;
            case 9068:
                return ch9IWantToBeLeft;
            case 9069:
                return ch9IAmPhantomOfWest;
            case 9070:
                return ch9IFlyAboveContinent;
            case 9071:
                return ch9IOverlookNewFerando;
            case 9072:
                return ch9IOverlookPark;
            case 9073:
                return ch9IOverlookArcticon;
            case 9074:
                return ch9IOverlookHighway;
            case 9075:
                return ch9IEnterArcticon;
            case 9076:
                return ch9IReachMyRoom;
            case 9077:
                return ch9IGoToLounge;
            case 9078:
                return ch9CaitlynAndYukioCome;
            case 9079:
                return ch9ThereIAm;
            case 9080:
                return ch9CaitlynAndYukioWorried;
            case 9081:
                return ch9YukioSawMeOnTV;
            case 9082:
                return ch9DoesCaitlynRemember;
            case 9083:
                return ch9CaitlynRemembersOfficer;
            case 9084:
                return ch9IMayReappearOnTV;
            case 9085:
                return ch9ISummarizeToYukio;
            case 9086:
                return ch9YukioSimplifiesMySummary;
            case 9087:
                return ch9YeahBasically;
            case 9088:
                return ch9IWaitForFoxtrot();
            case 9089:
                return ch9IAlreadyMetFoxtrot;
            case 9090:
                return ch9IDidNotMeetFoxtrot;
            case 9091:
                return ch9FoxtrotToCheerMeUp;
            case 9092:
                return ch9FoxtrotStares;
            case 9093:
                return ch9ILeaveFoxtrot();
            case 9094:
                return ch9CaitlynShouldPutFoxtrotBack;
            case 9095:
                return ch9FoxtrotHisses;
            case 9096:
                return ch9FoxtrotAllowsPet;
            case 9097:
                return ch9IRubFoxtrot;
            case 9098:
                return ch9FoxtrotLicksMe;
            case 9099:
                return ch9CaitlynFrownsAtFoxtrot;
            case 9100:
                return ch9IReturnHome;
            case 9101:
                return ch9ISleep;
        }
        return null;
    }
}
