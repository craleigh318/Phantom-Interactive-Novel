package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_17;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.Route;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-24.
 */
public class Chapter17 extends Chapter {
    private static StoryChoiceList ch17Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17Title, 17002)}));

    private static StoryChoiceList ch17IOpenEyes = new StoryChoiceList(R.drawable.main_avenue_present,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IOpenEyes, 17003)}));

    private static StoryChoiceList ch17IAmOnMainAve = new StoryChoiceList(R.drawable.main_avenue_present,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAmOnMainAve, 17004)}));

    private static StoryChoiceList ch17RainStops = new StoryChoiceList(R.drawable.main_avenue_present,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17RainStops, 17005)}));

    private static StoryChoiceList ch17AveIsEmpty() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        Route route = flags.getStoryRoute();
        if (route == Route.VaNal) {
            nextState = 17006;
        } else {
            nextState = 17021;
        }
        return new StoryChoiceList(R.drawable.main_avenue_present,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17AveIsEmpty, nextState)}));
    }

    private static StoryChoiceList ch17DrKaden = new StoryChoiceList(R.drawable.main_avenue_present,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17DrKaden, 17007)}));

    private static StoryChoiceList ch17VaNalIsBehindMe = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17VaNalIsBehindMe, 17008)}));

    private static StoryChoiceList ch17DoITrulyKnowVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17DoITrulyKnowVaNal, 17009)}));

    private static StoryChoiceList ch17IKnowVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IKnowVaNal, 17010)}));

    private static StoryChoiceList ch17INeglectedVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17INeglectedVaNal, 17011)}));

    private static StoryChoiceList ch17IAssumedEmpathyVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAssumedEmpathyVaNal, 17012)}));

    private static StoryChoiceList ch17ILostTrustVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ILostTrustVaNal, 17013)}));

    private static StoryChoiceList ch17IShouldHaveCared = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IShouldHaveCared, 17014)}));

    private static StoryChoiceList ch17VaNalAsksWereYou = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17VaNalAsksWereYou, 17015)}));

    private static StoryChoiceList ch17RebeccaWantsMeToAcceptVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17RebeccaWantsMeToAcceptVaNal, 17016)}));

    private static StoryChoiceList ch17VaNalHoldsHands = new StoryChoiceList(R.drawable.main_avenue_vanal_holds_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17VaNalHoldsHands, 17017)}));

    private static StoryChoiceList ch17ILeanIntoVaNal = new StoryChoiceList(R.drawable.main_avenue_vanal_holds_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ILeanIntoVaNal, 17018)}));

    private static StoryChoiceList ch17VaNalAbsorbsMe = new StoryChoiceList(R.drawable.kaden_possesses_vanal,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17VaNalAbsorbsMe, 17019)}));

    private static StoryChoiceList ch17IMergedWithVaNal = new StoryChoiceList(R.drawable.vanal_hands_green,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IMergedWithVaNal, 17020)}));

    private static StoryChoiceList ch17VaNalsSkinChanges = new StoryChoiceList(R.drawable.vanal_hands_brown,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17VaNalsSkinChanges, 17021)}));

    private static StoryChoiceList ch17IWalkToShop() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        Route route = flags.getStoryRoute();
        switch (route) {
            case VaNal:
                nextState = 17022;
                break;
            case Phantom:
                nextState = 17035;
                break;
            default:
                nextState = 17065;
                break;
        }
        return new StoryChoiceList(R.drawable.shop_storefront,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IWalkToShop, nextState)}));
    }

    private static StoryChoiceList ch17IExamineVaNal = new StoryChoiceList(R.drawable.shop_reflection_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IExamineVaNal, 17023)}));

    private static StoryChoiceList ch17HelicoptersFlyAbove = new StoryChoiceList(R.drawable.helicopter_in_sky,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17HelicoptersFlyAbove, 17024)}));

    private static StoryChoiceList ch17IClimbBuildingAsVaNal = new StoryChoiceList(R.drawable.vanal_kaden_climbs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IClimbBuildingAsVaNal, 17025)}));

    private static StoryChoiceList ch17HelicoptersFlyToCamp = new StoryChoiceList(R.drawable.airport_evacuees,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17HelicoptersFlyToCamp, 17026)}));

    private static StoryChoiceList ch17IOverlookCamp = new StoryChoiceList(R.drawable.airport_evacuees,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IOverlookCamp, 17027)}));

    private static StoryChoiceList ch17SavedCitizensMakesMeHappy = new StoryChoiceList(R.drawable.airport_evacuees,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SavedCitizensMakesMeHappy, 17028)}));

    private static StoryChoiceList ch17ISeemPleasant = new StoryChoiceList(R.drawable.airport_evacuees,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ISeemPleasant, 17029)}));

    private static StoryChoiceList ch17OtherGodsBehindMe = new StoryChoiceList(R.drawable.gods_meet_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17OtherGodsBehindMe, 17030)}));

    private static StoryChoiceList ch17IJoinKinship = new StoryChoiceList(R.drawable.gods_meet_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IJoinKinship, 17031)}));

    private static StoryChoiceList ch17SezjaLovesMe = new StoryChoiceList(R.drawable.gods_meet_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SezjaLovesMe, 17032)}));

    private static StoryChoiceList ch17SezjaHugsMe = new StoryChoiceList(R.drawable.sezja_hugs_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SezjaHugsMe, 17033)}));

    private static StoryChoiceList ch17HeartyFeast = new StoryChoiceList(R.drawable.sezja_hugs_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17HeartyFeast, 17034)}));

    private static StoryChoiceList ch17LetUsEat = new StoryChoiceList(R.drawable.sezja_hugs_vanal_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17LetUsEat, 18001)}));

    private static StoryChoiceList ch17IExamineMyselfAsPhantom = new StoryChoiceList(R.drawable.shop_reflection_phantom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IExamineMyselfAsPhantom, 17036)}));

    private static StoryChoiceList ch17BekShtiiIsBehindMe = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17BekShtiiIsBehindMe, 17037)}));

    private static StoryChoiceList ch17DoITrulyKnowBekShtii = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17DoITrulyKnowBekShtii, 17038)}));

    private static StoryChoiceList ch17IKnowBekShtii = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IKnowBekShtii, 17039)}));

    private static StoryChoiceList ch17IHeldBekShtii = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IHeldBekShtii, 17040)}));

    private static StoryChoiceList ch17IAssumedEmpathyBekShtii = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAssumedEmpathyBekShtii, 17041)}));

    private static StoryChoiceList ch17ILostTrustBekShtii = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ILostTrustBekShtii, 17042)}));

    private static StoryChoiceList ch17IShouldHaveWorriedAboutMyself = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IShouldHaveWorriedAboutMyself, 17043)}));

    private static StoryChoiceList ch17BekShtiiAsksShouldYou = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17BekShtiiAsksShouldYou, 17044)}));

    private static StoryChoiceList ch17RebeccaWantsMeToReleaseBekShtii = new StoryChoiceList(R.drawable.main_avenue_bekshtii_talks,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17RebeccaWantsMeToReleaseBekShtii, 17045)}));

    private static StoryChoiceList ch17BekShtiiGivesMeDagger = new StoryChoiceList(R.drawable.bekshtii_pulls_dagger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17BekShtiiGivesMeDagger, 17046)}));

    private static StoryChoiceList ch17IStabBekShtii = new StoryChoiceList(R.drawable.bekshtii_stabbed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IStabBekShtii, 17047)}));

    private static StoryChoiceList ch17BekShtiiBleeds = new StoryChoiceList(R.drawable.bekshtii_stabbed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17BekShtiiBleeds, 17048)}));

    private static StoryChoiceList ch17IAbsorbBekShtii = new StoryChoiceList(R.drawable.kaden_absorbs_bekshtii,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAbsorbBekShtii, 17049)}));

    private static StoryChoiceList ch17IShake = new StoryChoiceList(R.drawable.super_kaden_shakes_greyscale,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IShake, 17050)}));

    private static StoryChoiceList ch17IKnowWhatToDo = new StoryChoiceList(R.drawable.super_kaden_shakes_color,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IKnowWhatToDo, 17051)}));

    private static StoryChoiceList ch17IShootTentacles = new StoryChoiceList(R.drawable.super_kaden_unleashes_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IShootTentacles, 17052)}));

    private static StoryChoiceList ch17TentaclesRise = new StoryChoiceList(R.drawable.super_kaden_unleashes_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17TentaclesRise, 17053)}));

    private static StoryChoiceList ch17TheyPossessCitizens = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17TheyPossessCitizens, 17121)}));

    private static StoryChoiceList ch17Hundreds = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17Hundreds, 17055)}));

    private static StoryChoiceList ch17Thousands = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17Thousands, 17056)}));

    private static StoryChoiceList ch17TenThousands = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17TenThousands, 17057)}));

    private static StoryChoiceList ch17HundredThousands = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17HundredThousands, 17058)}));

    private static StoryChoiceList ch17IReadEveryone = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IReadEveryone, 17059)}));

    private static StoryChoiceList ch17WeMarchIntoCity = new StoryChoiceList(R.drawable.main_avenue_crowd,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeMarchIntoCity, 17060)}));

    private static StoryChoiceList ch17WeRestoreCity = new StoryChoiceList(R.drawable.main_avenue_crowd,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeRestoreCity, 17061)}));

    private static StoryChoiceList ch17WeExtinguishFire = new StoryChoiceList(R.drawable.crowd_extinguishes_fire,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeExtinguishFire, 17062)}));

    private static StoryChoiceList ch17WeDrainFlood = new StoryChoiceList(R.drawable.crowd_drains_water,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeDrainFlood, 17063)}));

    private static StoryChoiceList ch17WeRepairBuildings = new StoryChoiceList(R.drawable.crowd_repairs_building,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeRepairBuildings, 17064)}));

    private static StoryChoiceList ch17WeCelebrate = new StoryChoiceList(R.drawable.crowd_repairs_building,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeCelebrate, 18001)}));

    private static StoryChoiceList ch17IExamineMyRealSelf = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IExamineMyRealSelf, 17066)}));

    private static StoryChoiceList ch17PhantomFirstDefinition = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17PhantomFirstDefinition, 17067)}));

    private static StoryChoiceList ch17PhantomSecondDefinition = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17PhantomSecondDefinition, 17068)}));

    private static StoryChoiceList ch17IAssumedEmpathySelf = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAssumedEmpathySelf, 17069)}));

    private static StoryChoiceList ch17ILostTrustSelf = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ILostTrustSelf, 17070)}));

    private static StoryChoiceList ch17WhyICreatedTheGods = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WhyICreatedTheGods, 17071)}));

    private static StoryChoiceList ch17ICanStillLove = new StoryChoiceList(R.drawable.shop_reflection_kaden_hooded,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ICanStillLove, 17072)}));

    private static StoryChoiceList ch17IGrabMyHood = new StoryChoiceList(R.drawable.dr_kaden_pulls_hood,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IGrabMyHood, 17073)}));

    private static StoryChoiceList ch17ILowerMyHood = new StoryChoiceList(R.drawable.dr_kaden_pulls_hood,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ILowerMyHood, 17074)}));

    private static StoryChoiceList ch17ThisIsRealMe = new StoryChoiceList(R.drawable.shop_reflection_kaden_hoodless,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ThisIsRealMe, 17075)}));

    private static StoryChoiceList ch17IClimbToSeeHotel = new StoryChoiceList(R.drawable.hoodless_kaden_climbs,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IClimbToSeeHotel, 17076)}));

    private static StoryChoiceList ch17IGoToHotel = new StoryChoiceList(R.drawable.flooded_hotel_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IGoToHotel, 17077)}));

    private static StoryChoiceList ch17HotelFloods = new StoryChoiceList(R.drawable.flooded_hotel_entrance_evacuated,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17HotelFloods, 17078)}));

    private static StoryChoiceList ch17ManShovesLady() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        Route route = flags.getStoryRoute();
        if (route == Route.Sarah) {
            nextState = 17087;
        } else {
            nextState = 17079;
        }
        return new StoryChoiceList(R.drawable.flooded_hotel_entrance_evacuated,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ManShovesLady, nextState)}));
    }

    private static StoryChoiceList ch17CaitlynKneels = new StoryChoiceList(R.drawable.caitlyn_falls_in_flood,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17CaitlynKneels, 17080)}));

    private static StoryChoiceList ch17IGoToCaitlyn = new StoryChoiceList(R.drawable.caitlyn_falls_in_flood_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IGoToCaitlyn, 17081)}));

    private static StoryChoiceList ch17YukioComes = new StoryChoiceList(R.drawable.caitlyn_falls_in_flood_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17YukioComes, 17082)}));

    private static StoryChoiceList ch17TideApproachesCaitlyn = new StoryChoiceList(R.drawable.caitlyn_falls_in_flood_with_kaden_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17TideApproachesCaitlyn, 17083)}));

    private static StoryChoiceList ch17ISaveCaitlyn = new StoryChoiceList(R.drawable.caitlyn_falls_in_flood_with_kaden_yukio_and_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ISaveCaitlyn, 17084)}));

    private static StoryChoiceList ch17CaitlynAsksAboutFlood = new StoryChoiceList(R.drawable.hoodless_kaden_carries_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17CaitlynAsksAboutFlood, 17085)}));

    private static StoryChoiceList ch17ComplicatedCaitlyn = new StoryChoiceList(R.drawable.hoodless_kaden_carries_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ComplicatedCaitlyn, 17086)}));

    private static StoryChoiceList ch17YukioSurprised = new StoryChoiceList(R.drawable.hoodless_kaden_carries_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17YukioSurprised, 17096)}));

    private static StoryChoiceList ch17SarahKneels = new StoryChoiceList(R.drawable.sarah_falls_in_flood,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SarahKneels, 17088)}));

    private static StoryChoiceList ch17IGoToSarah = new StoryChoiceList(R.drawable.sarah_falls_in_flood_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IGoToSarah, 17089)}));

    private static StoryChoiceList ch17TideApproachesSarah = new StoryChoiceList(R.drawable.sarah_falls_in_flood_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17TideApproachesSarah, 17090)}));

    private static StoryChoiceList ch17ISaveSarah = new StoryChoiceList(R.drawable.sarah_falls_in_flood_with_tentacles,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ISaveSarah, 17091)}));

    private static StoryChoiceList ch17SarahAsksAboutMe = new StoryChoiceList(R.drawable.hoodless_kaden_carries_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SarahAsksAboutMe, 17092)}));

    private static StoryChoiceList ch17ComplicatedSarah = new StoryChoiceList(R.drawable.hoodless_kaden_carries_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ComplicatedSarah, 17093)}));

    private static StoryChoiceList ch17SarahAsksWhy = new StoryChoiceList(R.drawable.hoodless_kaden_carries_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SarahAsksWhy, 17094)}));

    private static StoryChoiceList ch17IAmPhantom = new StoryChoiceList(R.drawable.hoodless_kaden_carries_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAmPhantom, 17095)}));

    private static StoryChoiceList ch17LotToTakeIn = new StoryChoiceList(R.drawable.hoodless_kaden_carries_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17LotToTakeIn, 17096)}));

    private static StoryChoiceList ch17WeReachCamp() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        Route route = flags.getStoryRoute();
        if (route == Route.Sarah) {
            nextState = 17106;
        } else {
            nextState = 17097;
        }
        return new StoryChoiceList(R.drawable.airport_evacuees,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeReachCamp, nextState)}));
    }

    private static StoryChoiceList ch17CaitlynPullsMe = new StoryChoiceList(R.drawable.airport_kaden_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17CaitlynPullsMe, 17098)}));

    private static StoryChoiceList ch17WhyDidCaitlynPullMe = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WhyDidCaitlynPullMe, 17099)}));

    private static StoryChoiceList ch17WhatIsItCaitlyn = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WhatIsItCaitlyn, 17100)}));

    private static StoryChoiceList ch17CaitlynKnowsMeForYears = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17CaitlynKnowsMeForYears, 17101)}));

    private static StoryChoiceList ch17IKnowCaitlynLeadsMe = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IKnowCaitlynLeadsMe, 17102)}));

    private static StoryChoiceList ch17CaitlynWantsToBeClose = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17CaitlynWantsToBeClose, 17103)}));

    private static StoryChoiceList ch17NoObjectionCaitlyn = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17NoObjectionCaitlyn, 17104)}));

    private static StoryChoiceList ch17CaitlynStaresAtMe = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17CaitlynStaresAtMe, 17105)}));

    private static StoryChoiceList ch17WeKiss = new StoryChoiceList(R.drawable.airport_kaden_and_caitlyn_kiss,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WeKiss, 18001)}));

    private static StoryChoiceList ch17IPullSarah = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IPullSarah, 17107)}));

    private static StoryChoiceList ch17IExplainToSarah = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IExplainToSarah, 17108)}));

    private static StoryChoiceList ch17DidIPossessSarah = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17DidIPossessSarah, 17109)}));

    private static StoryChoiceList ch17ThatIsCorrect = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ThatIsCorrect, 17110)}));

    private static StoryChoiceList ch17WhyDidIPossessSarah = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17WhyDidIPossessSarah, 17111)}));

    private static StoryChoiceList ch17IWantedSarahToUnderstand = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IWantedSarahToUnderstand, 17112)}));

    private static StoryChoiceList ch17MyPowersAreNew = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17MyPowersAreNew, 17113)}));

    private static StoryChoiceList ch17SarahUnsure = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SarahUnsure, 17114)}));

    private static StoryChoiceList ch17DidSarahAttendReunion = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17DidSarahAttendReunion, 17115)}));

    private static StoryChoiceList ch17YeahSarahDid = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17YeahSarahDid, 17116)}));

    private static StoryChoiceList ch17ThatIsGood = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ThatIsGood, 17117)}));

    private static StoryChoiceList ch17IAmNotBad = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IAmNotBad, 17118)}));

    private static StoryChoiceList ch17ThanksEmbarrassed = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17ThanksEmbarrassed, 17119)}));

    private static StoryChoiceList ch17SarahAndIWillRoom = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17SarahAndIWillRoom, 17120)}));

    private static StoryChoiceList ch17IdLoveTo = new StoryChoiceList(R.drawable.airport_kaden_and_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17IdLoveTo, 18001)}));

    private static StoryChoiceList ch17Dozens = new StoryChoiceList(R.drawable.airport_evacuees_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch17Dozens, 17054)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 17001:
                return ch17Title;
            case 17002:
                return ch17IOpenEyes;
            case 17003:
                return ch17IAmOnMainAve;
            case 17004:
                return ch17RainStops;
            case 17005:
                return ch17AveIsEmpty();
            case 17006:
                return ch17DrKaden;
            case 17007:
                return ch17VaNalIsBehindMe;
            case 17008:
                return ch17DoITrulyKnowVaNal;
            case 17009:
                return ch17IKnowVaNal;
            case 17010:
                return ch17INeglectedVaNal;
            case 17011:
                return ch17IAssumedEmpathyVaNal;
            case 17012:
                return ch17ILostTrustVaNal;
            case 17013:
                return ch17IShouldHaveCared;
            case 17014:
                return ch17VaNalAsksWereYou;
            case 17015:
                return ch17RebeccaWantsMeToAcceptVaNal;
            case 17016:
                return ch17VaNalHoldsHands;
            case 17017:
                return ch17ILeanIntoVaNal;
            case 17018:
                return ch17VaNalAbsorbsMe;
            case 17019:
                return ch17IMergedWithVaNal;
            case 17020:
                return ch17VaNalsSkinChanges;
            case 17021:
                return ch17IWalkToShop();
            case 17022:
                return ch17IExamineVaNal;
            case 17023:
                return ch17HelicoptersFlyAbove;
            case 17024:
                return ch17IClimbBuildingAsVaNal;
            case 17025:
                return ch17HelicoptersFlyToCamp;
            case 17026:
                return ch17IOverlookCamp;
            case 17027:
                return ch17SavedCitizensMakesMeHappy;
            case 17028:
                return ch17ISeemPleasant;
            case 17029:
                return ch17OtherGodsBehindMe;
            case 17030:
                return ch17IJoinKinship;
            case 17031:
                return ch17SezjaLovesMe;
            case 17032:
                return ch17SezjaHugsMe;
            case 17033:
                return ch17HeartyFeast;
            case 17034:
                return ch17LetUsEat;
            case 17035:
                return ch17IExamineMyselfAsPhantom;
            case 17036:
                return ch17BekShtiiIsBehindMe;
            case 17037:
                return ch17DoITrulyKnowBekShtii;
            case 17038:
                return ch17IKnowBekShtii;
            case 17039:
                return ch17IHeldBekShtii;
            case 17040:
                return ch17IAssumedEmpathyBekShtii;
            case 17041:
                return ch17ILostTrustBekShtii;
            case 17042:
                return ch17IShouldHaveWorriedAboutMyself;
            case 17043:
                return ch17BekShtiiAsksShouldYou;
            case 17044:
                return ch17RebeccaWantsMeToReleaseBekShtii;
            case 17045:
                return ch17BekShtiiGivesMeDagger;
            case 17046:
                return ch17IStabBekShtii;
            case 17047:
                return ch17BekShtiiBleeds;
            case 17048:
                return ch17IAbsorbBekShtii;
            case 17049:
                return ch17IShake;
            case 17050:
                return ch17IKnowWhatToDo;
            case 17051:
                return ch17IShootTentacles;
            case 17052:
                return ch17TentaclesRise;
            case 17053:
                return ch17TheyPossessCitizens;
            case 17054:
                return ch17Hundreds;
            case 17055:
                return ch17Thousands;
            case 17056:
                return ch17TenThousands;
            case 17057:
                return ch17HundredThousands;
            case 17058:
                return ch17IReadEveryone;
            case 17059:
                return ch17WeMarchIntoCity;
            case 17060:
                return ch17WeRestoreCity;
            case 17061:
                return ch17WeExtinguishFire;
            case 17062:
                return ch17WeDrainFlood;
            case 17063:
                return ch17WeRepairBuildings;
            case 17064:
                return ch17WeCelebrate;
            case 17065:
                return ch17IExamineMyRealSelf;
            case 17066:
                return ch17PhantomFirstDefinition;
            case 17067:
                return ch17PhantomSecondDefinition;
            case 17068:
                return ch17IAssumedEmpathySelf;
            case 17069:
                return ch17ILostTrustSelf;
            case 17070:
                return ch17WhyICreatedTheGods;
            case 17071:
                return ch17ICanStillLove;
            case 17072:
                return ch17IGrabMyHood;
            case 17073:
                return ch17ILowerMyHood;
            case 17074:
                return ch17ThisIsRealMe;
            case 17075:
                return ch17IClimbToSeeHotel;
            case 17076:
                return ch17IGoToHotel;
            case 17077:
                return ch17HotelFloods;
            case 17078:
                return ch17ManShovesLady();
            case 17079:
                return ch17CaitlynKneels;
            case 17080:
                return ch17IGoToCaitlyn;
            case 17081:
                return ch17YukioComes;
            case 17082:
                return ch17TideApproachesCaitlyn;
            case 17083:
                return ch17ISaveCaitlyn;
            case 17084:
                return ch17CaitlynAsksAboutFlood;
            case 17085:
                return ch17ComplicatedCaitlyn;
            case 17086:
                return ch17YukioSurprised;
            case 17087:
                return ch17SarahKneels;
            case 17088:
                return ch17IGoToSarah;
            case 17089:
                return ch17TideApproachesSarah;
            case 17090:
                return ch17ISaveSarah;
            case 17091:
                return ch17SarahAsksAboutMe;
            case 17092:
                return ch17ComplicatedSarah;
            case 17093:
                return ch17SarahAsksWhy;
            case 17094:
                return ch17IAmPhantom;
            case 17095:
                return ch17LotToTakeIn;
            case 17096:
                return ch17WeReachCamp();
            case 17097:
                return ch17CaitlynPullsMe;
            case 17098:
                return ch17WhyDidCaitlynPullMe;
            case 17099:
                return ch17WhatIsItCaitlyn;
            case 17100:
                return ch17CaitlynKnowsMeForYears;
            case 17101:
                return ch17IKnowCaitlynLeadsMe;
            case 17102:
                return ch17CaitlynWantsToBeClose;
            case 17103:
                return ch17NoObjectionCaitlyn;
            case 17104:
                return ch17CaitlynStaresAtMe;
            case 17105:
                return ch17WeKiss;
            case 17106:
                return ch17IPullSarah;
            case 17107:
                return ch17IExplainToSarah;
            case 17108:
                return ch17DidIPossessSarah;
            case 17109:
                return ch17ThatIsCorrect;
            case 17110:
                return ch17WhyDidIPossessSarah;
            case 17111:
                return ch17IWantedSarahToUnderstand;
            case 17112:
                return ch17MyPowersAreNew;
            case 17113:
                return ch17SarahUnsure;
            case 17114:
                return ch17DidSarahAttendReunion;
            case 17115:
                return ch17YeahSarahDid;
            case 17116:
                return ch17ThatIsGood;
            case 17117:
                return ch17IAmNotBad;
            case 17118:
                return ch17ThanksEmbarrassed;
            case 17119:
                return ch17SarahAndIWillRoom;
            case 17120:
                return ch17IdLoveTo;
            case 17121:
                return ch17Dozens;
        }
        return null;
    }
}
