package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_15;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.PhysicalEducationAnswer;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-23.
 */
public class Chapter15 extends Chapter {
    private static StoryChoiceList ch15Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15Title, 15002)}));

    private static StoryChoiceList ch15IAmInJail = new StoryChoiceList(R.drawable.phantom_jail,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IAmInJail, 15003)}));

    private static StoryChoiceList ch15ISeeViolinist = new StoryChoiceList(R.drawable.jail_violinist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ISeeViolinist, 15004)}));

    private static StoryChoiceList ch15ISeeBeggar = new StoryChoiceList(R.drawable.jail_beggar,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ISeeBeggar, 15005)}));

    private static StoryChoiceList ch15ISeeAddict = new StoryChoiceList(R.drawable.jail_addict,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ISeeAddict, 15006)}));

    private static StoryChoiceList ch15AddictTalks = new StoryChoiceList(R.drawable.jail_addict,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15AddictTalks, 15007)}));

    private static StoryChoiceList ch15SoundproofTube = new StoryChoiceList(R.drawable.jail_addict,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15SoundproofTube, 15008)}));

    private static StoryChoiceList ch15LittleBuddyCannotTalk = new StoryChoiceList(R.drawable.jail_addict,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15LittleBuddyCannotTalk, 15009)}));

    private static StoryChoiceList ch15IHaveCivilRights = new StoryChoiceList(R.drawable.jail_window,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IHaveCivilRights, 15010)}));

    private static StoryChoiceList ch15BallBreaksMyCell = new StoryChoiceList(R.drawable.phantom_jailbreak,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15BallBreaksMyCell, 15011)}));

    private static StoryChoiceList ch15ConstructorGreetsMe = new StoryChoiceList(R.drawable.construction_worker_waves,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ConstructorGreetsMe, 15012)}));

    private static StoryChoiceList ch15ConstructorIsDispossessed = new StoryChoiceList(R.drawable.construction_worker_dispossessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ConstructorIsDispossessed, 15013)}));

    private static StoryChoiceList ch15ItsSezja = new StoryChoiceList(R.drawable.sezja_from_construction_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ItsSezja, 15014)}));

    private static StoryChoiceList ch15SezjaIsHappySeeingMe = new StoryChoiceList(R.drawable.sezja_from_construction_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15SezjaIsHappySeeingMe, 15015)}));

    private static StoryChoiceList ch15HowLongWasIJailed = new StoryChoiceList(R.drawable.sezja_from_construction_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15HowLongWasIJailed, 15016)}));

    private static StoryChoiceList ch15ItIsMorning = new StoryChoiceList(R.drawable.sezja_from_construction_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ItIsMorning, 15017)}));

    private static StoryChoiceList ch15ILookAround = new StoryChoiceList(R.drawable.flooded_roads,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ILookAround, 15018)}));

    private static StoryChoiceList ch15OhWow = new StoryChoiceList(R.drawable.flooded_roads,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15OhWow, 15019)}));

    private static StoryChoiceList ch15FloodedRoads = new StoryChoiceList(R.drawable.flooded_roads,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15FloodedRoads, 15020)}));

    private static StoryChoiceList ch15BekShtiiAndBaqerFight = new StoryChoiceList(R.drawable.kaden_and_sezja_backs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15BekShtiiAndBaqerFight, 15021)}));

    private static StoryChoiceList ch15CanBaqerTurnIntoFireSpirits = new StoryChoiceList(R.drawable.kaden_and_sezja_backs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15CanBaqerTurnIntoFireSpirits, 15022)}));

    private static StoryChoiceList ch15DoIDislikeHistory = new StoryChoiceList(R.drawable.kaden_and_sezja_backs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15DoIDislikeHistory, 15023)}));

    private static StoryChoiceList ch15DidSezjaEnjoySchool = new StoryChoiceList(R.drawable.kaden_and_sezja_backs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15DidSezjaEnjoySchool, 15024)}));

    private static StoryChoiceList ch15ThereIsCamp = new StoryChoiceList(R.drawable.kaden_and_sezja_backs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ThereIsCamp, 15025)}));

    private static StoryChoiceList ch15SezjaHugs = new StoryChoiceList(R.drawable.kaden_and_sezja_backs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15SezjaHugs, 15026)}));

    private static StoryChoiceList ch15SezjaPaddles = new StoryChoiceList(R.drawable.sezja_raft,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15SezjaPaddles, 15027)}));

    private static StoryChoiceList ch15MeAndCity = new StoryChoiceList(R.drawable.sezja_raft,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15MeAndCity, 15028)}));

    private static StoryChoiceList ch15ILookAtConstructor = new StoryChoiceList(R.drawable.construction_worker_dazed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ILookAtConstructor, 15029)}));

    private static StoryChoiceList ch15IPossessConstructor = new StoryChoiceList(R.drawable.kaden_possesses_construction_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IPossessConstructor, 15030)}));

    private static StoryChoiceList ch15MyTeethAreBad = new StoryChoiceList(R.drawable.construction_worker_teeth,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15MyTeethAreBad, 15031)}));

    private static StoryChoiceList ch15IClimbBuilding = new StoryChoiceList(R.drawable.construction_worker_climbs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IClimbBuilding, 15032)}));

    private static StoryChoiceList ch15ISeeRestOfCity = new StoryChoiceList(R.drawable.whole_city_flooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ISeeRestOfCity, 15033)}));

    private static StoryChoiceList ch15IFindConstructionSite = new StoryChoiceList(R.drawable.construction_site,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IFindConstructionSite, 15034)}));

    private static StoryChoiceList ch15IJumpToConstructionSite = new StoryChoiceList(R.drawable.construction_site,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IJumpToConstructionSite, 15035)}));

    private static StoryChoiceList ch15IGetPickaxe = new StoryChoiceList(R.drawable.construction_worker_pickaxe,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IGetPickaxe, 15036)}));

    private static StoryChoiceList ch15IJumpBetweenRooftops = new StoryChoiceList(R.drawable.construction_worker_leaps,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IJumpBetweenRooftops, 15037)}));

    private static StoryChoiceList ch15PeopleBelowTrapped = new StoryChoiceList(R.drawable.flooded_city_below,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15PeopleBelowTrapped, 15038)}));

    private static StoryChoiceList ch15IFindFireSpirits = new StoryChoiceList(R.drawable.fire_spirits_below,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IFindFireSpirits, 15039)}));

    private static StoryChoiceList ch15SpiritsSurroundMe = new StoryChoiceList(R.drawable.fire_spirits_surround_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15SpiritsSurroundMe, 15040)}));

    private static StoryChoiceList ch15ISlamSpirits() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        boolean saidDisarm = (flags.getCh5AnsweredCoach() == PhysicalEducationAnswer.Disarm);
        if (saidDisarm) {
            nextState = 15041;
        } else {
            nextState = 15042;
        }
        return new StoryChoiceList(R.drawable.worker_axes_fire_spirits,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ISlamSpirits, nextState)}));
    }

    private static StoryChoiceList ch15IDeathByOverconfidence = new StoryChoiceList(R.drawable.worker_leans_over_fire_spirit,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IDeathByOverconfidence, 15043)}));

    private static StoryChoiceList ch15KeptYouWaiting = new StoryChoiceList(R.drawable.worker_leans_over_fire_spirit,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15KeptYouWaiting, 15043)}));

    private static StoryChoiceList ch15IStrikeSpirit = new StoryChoiceList(R.drawable.worker_kills_fire_spirit,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IStrikeSpirit, 15044)}));

    private static StoryChoiceList ch15ILeaveSpirits = new StoryChoiceList(R.drawable.construction_worker_climbs_with_pickaxe,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ILeaveSpirits, 15045)}));

    private static StoryChoiceList ch15SchoolBusNeedsHelp = new StoryChoiceList(R.drawable.flooded_school_bus_below,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15SchoolBusNeedsHelp, 15046)}));

    private static StoryChoiceList ch15IDispossessConstructor = new StoryChoiceList(R.drawable.kaden_dispossesses_construction_worker,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IDispossessConstructor, 15047)}));

    private static StoryChoiceList ch15IAmHero = new StoryChoiceList(R.drawable.school_bus_passengers_see_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IAmHero, 15048)}));

    private static StoryChoiceList ch15ILiftBus = new StoryChoiceList(R.drawable.kaden_lifts_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ILiftBus, 15049)}));

    private static StoryChoiceList ch15StudentsThankMe = new StoryChoiceList(R.drawable.students_thank_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15StudentsThankMe, 15050)}));

    private static StoryChoiceList ch15IKnowElodie = new StoryChoiceList(R.drawable.students_thank_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IKnowElodie, 15051)}));

    private static StoryChoiceList ch15KeepFriendsClose = new StoryChoiceList(R.drawable.students_thank_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15KeepFriendsClose, 15052)}));

    private static StoryChoiceList ch15ICanSayEllie = new StoryChoiceList(R.drawable.students_thank_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ICanSayEllie, 15053)}));

    private static StoryChoiceList ch15KeepStudentsSafe = new StoryChoiceList(R.drawable.students_thank_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15KeepStudentsSafe, 15054)}));

    private static StoryChoiceList ch15WowStudentsSay = new StoryChoiceList(R.drawable.kaden_flies_from_bus,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15WowStudentsSay, 15055)}));

    private static StoryChoiceList ch15PhantomGoesToHotel = new StoryChoiceList(R.drawable.bekshtii_phantom_in_distance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15PhantomGoesToHotel, 15056)}));

    private static StoryChoiceList ch15IsThatBekShtii = new StoryChoiceList(R.drawable.bekshtii_phantom_in_distance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IsThatBekShtii, 15057)}));

    private static StoryChoiceList ch15WhatIsBekShtiiDoing = new StoryChoiceList(R.drawable.bekshtii_phantom_in_distance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15WhatIsBekShtiiDoing, 15058)}));

    private static StoryChoiceList ch15ModernSelfishness = new StoryChoiceList(R.drawable.bekshtii_phantom_in_city,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15ModernSelfishness, 15059)}));

    private static StoryChoiceList ch15IHoldBekShtiiBack = new StoryChoiceList(R.drawable.bekshtii_phantom_in_city,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IHoldBekShtiiBack, 15060)}));

    private static StoryChoiceList ch15BekShtiiThrowsMe = new StoryChoiceList(R.drawable.bekshtii_phantom_grabs_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15BekShtiiThrowsMe, 15061)}));

    private static StoryChoiceList ch15IDrift = new StoryChoiceList(R.drawable.kaden_floats_on_river,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IDrift, 15062)}));

    private static StoryChoiceList ch15IShouldHaveBeenAtReunion = new StoryChoiceList(R.drawable.kaden_floats_on_river,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IShouldHaveBeenAtReunion, 15063)}));

    private static StoryChoiceList ch15IWillBeRescued = new StoryChoiceList(R.drawable.kaden_floats_on_river,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch15IWillBeRescued, 16001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 15001:
                return ch15Title;
            case 15002:
                return ch15IAmInJail;
            case 15003:
                return ch15ISeeViolinist;
            case 15004:
                return ch15ISeeBeggar;
            case 15005:
                return ch15ISeeAddict;
            case 15006:
                return ch15AddictTalks;
            case 15007:
                return ch15SoundproofTube;
            case 15008:
                return ch15LittleBuddyCannotTalk;
            case 15009:
                return ch15IHaveCivilRights;
            case 15010:
                return ch15BallBreaksMyCell;
            case 15011:
                return ch15ConstructorGreetsMe;
            case 15012:
                return ch15ConstructorIsDispossessed;
            case 15013:
                return ch15ItsSezja;
            case 15014:
                return ch15SezjaIsHappySeeingMe;
            case 15015:
                return ch15HowLongWasIJailed;
            case 15016:
                return ch15ItIsMorning;
            case 15017:
                return ch15ILookAround;
            case 15018:
                return ch15OhWow;
            case 15019:
                return ch15FloodedRoads;
            case 15020:
                return ch15BekShtiiAndBaqerFight;
            case 15021:
                return ch15CanBaqerTurnIntoFireSpirits;
            case 15022:
                return ch15DoIDislikeHistory;
            case 15023:
                return ch15DidSezjaEnjoySchool;
            case 15024:
                return ch15ThereIsCamp;
            case 15025:
                return ch15SezjaHugs;
            case 15026:
                return ch15SezjaPaddles;
            case 15027:
                return ch15MeAndCity;
            case 15028:
                return ch15ILookAtConstructor;
            case 15029:
                return ch15IPossessConstructor;
            case 15030:
                return ch15MyTeethAreBad;
            case 15031:
                return ch15IClimbBuilding;
            case 15032:
                return ch15ISeeRestOfCity;
            case 15033:
                return ch15IFindConstructionSite;
            case 15034:
                return ch15IJumpToConstructionSite;
            case 15035:
                return ch15IGetPickaxe;
            case 15036:
                return ch15IJumpBetweenRooftops;
            case 15037:
                return ch15PeopleBelowTrapped;
            case 15038:
                return ch15IFindFireSpirits;
            case 15039:
                return ch15SpiritsSurroundMe;
            case 15040:
                return ch15ISlamSpirits();
            case 15041:
                return ch15IDeathByOverconfidence;
            case 15042:
                return ch15KeptYouWaiting;
            case 15043:
                return ch15IStrikeSpirit;
            case 15044:
                return ch15ILeaveSpirits;
            case 15045:
                return ch15SchoolBusNeedsHelp;
            case 15046:
                return ch15IDispossessConstructor;
            case 15047:
                return ch15IAmHero;
            case 15048:
                return ch15ILiftBus;
            case 15049:
                return ch15StudentsThankMe;
            case 15050:
                return ch15IKnowElodie;
            case 15051:
                return ch15KeepFriendsClose;
            case 15052:
                return ch15ICanSayEllie;
            case 15053:
                return ch15KeepStudentsSafe;
            case 15054:
                return ch15WowStudentsSay;
            case 15055:
                return ch15PhantomGoesToHotel;
            case 15056:
                return ch15IsThatBekShtii;
            case 15057:
                return ch15WhatIsBekShtiiDoing;
            case 15058:
                return ch15ModernSelfishness;
            case 15059:
                return ch15IHoldBekShtiiBack;
            case 15060:
                return ch15BekShtiiThrowsMe;
            case 15061:
                return ch15IDrift;
            case 15062:
                return ch15IShouldHaveBeenAtReunion;
            case 15063:
                return ch15IWillBeRescued;
        }
        return null;
    }
}
