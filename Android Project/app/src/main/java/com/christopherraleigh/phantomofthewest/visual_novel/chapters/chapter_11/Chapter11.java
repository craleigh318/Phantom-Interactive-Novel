package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_11;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.Route;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-22.
 */
public class Chapter11 extends Chapter {
    private static StoryChoiceList ch11Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11Title, 11002)}));

    private static StoryChoiceList ch11BekShtiiWakesMe = new StoryChoiceList(R.drawable.bekshtii_with_flyer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11BekShtiiWakesMe, 11003)}));

    private static StoryChoiceList ch11ReunionWillBeTonight = new StoryChoiceList(R.drawable.kaden_reads_flyer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ReunionWillBeTonight, 11004)}));

    private static StoryChoiceList ch11ICannotPrepare = new StoryChoiceList(R.drawable.kaden_reads_flyer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ICannotPrepare, 11005)}));

    private static StoryChoiceList ch11ICouldPossessSarah = new StoryChoiceList(R.drawable.kaden_reads_flyer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ICouldPossessSarah, 11006)}));

    private static StoryChoiceList ch11IReallyWantRebecca = new StoryChoiceList(R.drawable.kaden_reads_flyer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IReallyWantRebecca, 11007)}));

    private static StoryChoiceList ch11BekShtiiLeaves = new StoryChoiceList(R.drawable.kaden_reads_flyer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11BekShtiiLeaves, 11008)}));

    private static StoryChoiceList ch11IGoToLab = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGoToLab, 11009)}));

    private static StoryChoiceList ch11IWantUsToGoToHotel = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IWantUsToGoToHotel, 11010)}));

    private static StoryChoiceList ch11YukioIsNotPaidToGoWithMe = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioIsNotPaidToGoWithMe, 11011)}));

    private static StoryChoiceList ch11IWillCallSupervisor = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IWillCallSupervisor, 11012)}));

    private static StoryChoiceList ch11YukioShrugs = new StoryChoiceList(R.drawable.kaden_talks_to_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioShrugs, 11013)}));

    private static StoryChoiceList ch11ICallSupervisor = new StoryChoiceList(R.drawable.kaden_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ICallSupervisor, 11014)}));

    private static StoryChoiceList ch11WeDriveOutOfArcticon = new StoryChoiceList(R.drawable.kaden_on_phone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WeDriveOutOfArcticon, 11015)}));

    private static StoryChoiceList ch11YukioDrivesDownHighway = new StoryChoiceList(R.drawable.yukio_drives,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioDrivesDownHighway, 11016)}));

    private static StoryChoiceList ch11KNFNVanPassesUs = new StoryChoiceList(R.drawable.yukio_drives,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11KNFNVanPassesUs, 11017)}));

    private static StoryChoiceList ch11IRollDownWindow = new StoryChoiceList(R.drawable.phantom_car_window,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IRollDownWindow, 11018)}));

    private static StoryChoiceList ch11IFlyToVan = new StoryChoiceList(R.drawable.jump_onto_news_van,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IFlyToVan, 11019)}));

    private static StoryChoiceList ch11ILandOnVan = new StoryChoiceList(R.drawable.phantom_underneath_van,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ILandOnVan, 11020)}));

    private static StoryChoiceList ch11VanEntersPark = new StoryChoiceList(R.drawable.phantom_underneath_van,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11VanEntersPark, 11021)}));

    private static StoryChoiceList ch11VanStopsAtLodge = new StoryChoiceList(R.drawable.phantom_underneath_van_grass,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11VanStopsAtLodge, 11022)}));

    private static StoryChoiceList ch11SarahLooksAtMirror = new StoryChoiceList(R.drawable.phantom_underneath_van_grass,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11SarahLooksAtMirror, 11023)}));

    private static StoryChoiceList ch11IPossessSarah = new StoryChoiceList(R.drawable.sarah_possessed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IPossessSarah, 11024)}));

    private static StoryChoiceList ch11IExamineSarah = new StoryChoiceList(R.drawable.sarah_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IExamineSarah, 11025)}));

    private static StoryChoiceList ch11IGoToCrew = new StoryChoiceList(R.drawable.news_crew_preparation,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGoToCrew, 11026)}));

    private static StoryChoiceList ch11RangerComes = new StoryChoiceList(R.drawable.news_crew_preparation,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11RangerComes, 11027)}));

    private static StoryChoiceList ch11WeStartInterview = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WeStartInterview, 11028)}));

    private static StoryChoiceList ch11AnchorStarts = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11AnchorStarts, 11029)}));

    private static StoryChoiceList ch11IIntroduceRanger = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IIntroduceRanger, 11030)}));

    private static StoryChoiceList ch11RangerSawMe = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11RangerSawMe, 11031)}));

    private static StoryChoiceList ch11WasIAggressive = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WasIAggressive, 11032)}));

    private static StoryChoiceList ch11RangerWasToDetainMe = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11RangerWasToDetainMe, 11033)}));

    private static StoryChoiceList ch11WasIDangerous = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WasIDangerous, 11034)}));

    private static StoryChoiceList ch11StandardProcedure = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11StandardProcedure, 11035)}));

    private static StoryChoiceList ch11GoOnINod = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GoOnINod, 11036)}));

    private static StoryChoiceList ch11ISaidIWasPhantomOfWest = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ISaidIWasPhantomOfWest, 11037)}));

    private static StoryChoiceList ch11WhatShouldIKnow = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WhatShouldIKnow, 11038)}));

    private static StoryChoiceList ch11IShouldTurnIn = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IShouldTurnIn, 11039)}));

    private static StoryChoiceList ch11RangerMisunderstoodMe = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11RangerMisunderstoodMe, 11040)}));

    private static StoryChoiceList ch11ISignOff = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ISignOff, 11041)}));

    private static StoryChoiceList ch11AnchorThanksMe = new StoryChoiceList(R.drawable.sarah_interviews_ranger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11AnchorThanksMe, 11042)}));

    private static StoryChoiceList ch11WePackUpToVan = new StoryChoiceList(R.drawable.sarah_return_to_van,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WePackUpToVan, 11043)}));

    private static StoryChoiceList ch11VanDrivesToNewFerando = new StoryChoiceList(R.drawable.van_drives_to_city,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11VanDrivesToNewFerando, 11044)}));

    private static StoryChoiceList ch11IExitVan = new StoryChoiceList(R.drawable.van_stops_at_hotel,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IExitVan, 11045)}));

    private static StoryChoiceList ch11IRegroupWithCaitlynAndYukio = new StoryChoiceList(R.drawable.sarah_at_hotel_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IRegroupWithCaitlynAndYukio, 11046)}));

    private static StoryChoiceList ch11SecretFantasy = new StoryChoiceList(R.drawable.sarah_at_hotel_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11SecretFantasy, 11047)}));

    private static StoryChoiceList ch11YukioFlattersMe = new StoryChoiceList(R.drawable.sarah_at_hotel_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioFlattersMe, 11048)}));

    private static StoryChoiceList ch11ILeftMyWallet = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ILeftMyWallet, 11049)}));

    private static StoryChoiceList ch11YukioPullsBackWallet = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioPullsBackWallet, 11050)}));

    private static StoryChoiceList ch11WhatDoesYukioWant = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WhatDoesYukioWant, 11051)}));

    private static StoryChoiceList ch11WillIBookYukioARoom = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WillIBookYukioARoom, 11052)}));

    private static StoryChoiceList ch11SarahAlreadyBooked = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11SarahAlreadyBooked, 11053)}));

    private static StoryChoiceList ch11YukioNeedsSeparateRoom = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioNeedsSeparateRoom, 11054)}));

    private static StoryChoiceList ch11YukiItsFine = new StoryChoiceList(R.drawable.yukio_withholds_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukiItsFine, 11055)}));

    private static StoryChoiceList ch11YukioGivesMeWallet = new StoryChoiceList(R.drawable.yukio_gives_sarah_wallet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioGivesMeWallet, 11056)}));

    private static StoryChoiceList ch11WeEnterHotel = new StoryChoiceList(R.drawable.sarah_in_lobby,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WeEnterHotel, 11057)}));

    private static StoryChoiceList ch11YukioWaitsByEscalator = new StoryChoiceList(R.drawable.sarah_in_lobby,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioWaitsByEscalator, 11058)}));

    private static StoryChoiceList ch11IGreetReceptionist = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGreetReceptionist, 11059)}));

    private static StoryChoiceList ch11ReceptionistBooksRoom = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ReceptionistBooksRoom, 11060)}));

    private static StoryChoiceList ch11HowDoIPay = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11HowDoIPay, 11061)}));

    private static StoryChoiceList ch11IPayAsMyself = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new IPayAsMyself(), new IPayAsSarah()}));

    private static StoryChoiceList ch11IGiveMyCardToReceptionist = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGiveMyCardToReceptionist, 11063)}));

    private static StoryChoiceList ch11IAmMyBoyfriend = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IAmMyBoyfriend, 11064)}));

    private static StoryChoiceList ch11ProveIt = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ProveIt, 11065)}));

    private static StoryChoiceList ch11IStare = new StoryChoiceList(R.drawable.sarah_stares,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IStare, 11066)}));

    private static StoryChoiceList ch11IdentityTheft = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IdentityTheft, 11067)}));

    private static StoryChoiceList ch11AmICute = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11AmICute, 11068)}));

    private static StoryChoiceList ch11YeahIBlush = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YeahIBlush, 11075)}));

    private static StoryChoiceList ch11IGiveSarahsCardToReceptionist = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGiveSarahsCardToReceptionist, 11070)}));

    private static StoryChoiceList ch11ReceptionistKnowsMeAsSarah = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ReceptionistKnowsMeAsSarah, 11071)}));

    private static StoryChoiceList ch11YeahINod = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YeahINod, 11072)}));

    private static StoryChoiceList ch11ReceptionistIsFanOfSarah = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ReceptionistIsFanOfSarah, 11073)}));

    private static StoryChoiceList ch11LovelyFollower = new StoryChoiceList(R.drawable.sarah_autographs_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11LovelyFollower, 11074)}));

    private static StoryChoiceList ch11ReceptionistSwipesSarahsCard = new StoryChoiceList(R.drawable.receptionist_examines_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ReceptionistSwipesSarahsCard, 11075)}));

    private static StoryChoiceList ch11IGetKeycard = new StoryChoiceList(R.drawable.sarah_talks_to_receptionist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGetKeycard, 11076)}));

    private static StoryChoiceList ch11IGoToEscalator = new StoryChoiceList(R.drawable.sarah_gives_yukio_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGoToEscalator, 11077)}));

    private static StoryChoiceList ch11IGiveYukioKeycard = new StoryChoiceList(R.drawable.sarah_gives_yukio_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGiveYukioKeycard, 11078)}));

    private static StoryChoiceList ch11WhereDoWeEat = new StoryChoiceList(R.drawable.sarah_gives_yukio_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WhereDoWeEat, 11079)}));

    private static StoryChoiceList ch11WeGoToHabitat = new StoryChoiceList(R.drawable.sarah_gives_yukio_card,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WeGoToHabitat, 11080)}));

    private static StoryChoiceList ch11IAcceptYukiosApology = new StoryChoiceList(R.drawable.sarah_walks_by_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IAcceptYukiosApology, 11081)}));

    private static StoryChoiceList ch11HostGreetsUs = new StoryChoiceList(R.drawable.habitat_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11HostGreetsUs, 11082)}));

    private static StoryChoiceList ch11WeSitAtHabitat = new StoryChoiceList(R.drawable.habitat_menu,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WeSitAtHabitat, 11083)}));

    private static StoryChoiceList ch11INeedToWatchSarahsWeight = new StoryChoiceList(R.drawable.habitat_menu,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11INeedToWatchSarahsWeight, 11084)}));

    private static StoryChoiceList ch11SarahWillBeFine = new StoryChoiceList(R.drawable.habitat_menu,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11SarahWillBeFine, 11085)}));

    private static StoryChoiceList ch11YukioIsLuckyToBeWithUs = new StoryChoiceList(R.drawable.habitat_server,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11YukioIsLuckyToBeWithUs, 11086)}));

    private static StoryChoiceList ch11IEatBurger = new StoryChoiceList(R.drawable.sarah_burger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IEatBurger, 11087)}));

    private static StoryChoiceList ch11HabitatDims = new StoryChoiceList(R.drawable.sarah_burger_dark,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11HabitatDims, 11088)}));

    private static StoryChoiceList ch11FakeThunder = new StoryChoiceList(R.drawable.sarah_burger_dark,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11FakeThunder, 11089)}));

    private static StoryChoiceList ch11FakeMonkey = new StoryChoiceList(R.drawable.sarah_burger_dark,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11FakeMonkey, 11090)}));

    private static StoryChoiceList ch11HabitatIsLame = new StoryChoiceList(R.drawable.sarah_burger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11HabitatIsLame, 11091)}));

    private static StoryChoiceList ch11IFinishEating = new StoryChoiceList(R.drawable.sarah_burger,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IFinishEating, 11092)}));

    private static StoryChoiceList ch11WeGoUpstairs = new StoryChoiceList(R.drawable.sarah_caitlyn_yukio_elevator,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WeGoUpstairs, 11093)}));

    private static StoryChoiceList ch11IEnterHotelRoom = new StoryChoiceList(R.drawable.sarah_caitlyn_yukio_to_hotel_rooms,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IEnterHotelRoom, 11094)}));

    private static StoryChoiceList ch11IExamineSarahsRoom = new StoryChoiceList(R.drawable.sarah_hotel_room,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IExamineSarahsRoom, 11095)}));

    private static StoryChoiceList ch11ICheckSarahsCloset = new StoryChoiceList(R.drawable.sarah_closet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ICheckSarahsCloset, 11096)}));

    private static StoryChoiceList ch11IWillExcercise = new StoryChoiceList(R.drawable.sarah_closet,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IWillExcercise, 11097)}));

    private static StoryChoiceList ch11IChangeIntoAthleticWear = new StoryChoiceList(R.drawable.sarah_athletic,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IChangeIntoAthleticWear, 11098)}));

    private static StoryChoiceList ch11ILookAtHotelMirror = new StoryChoiceList(R.drawable.sarah_athletic,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ILookAtHotelMirror, 11099)}));

    private static StoryChoiceList ch11IWorePonytailAsAnanya = new StoryChoiceList(R.drawable.sarah_athletic,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IWorePonytailAsAnanya, 11100)}));

    private static StoryChoiceList ch11ITieSarahsHair = new StoryChoiceList(R.drawable.sarah_athletic_ponytail,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ITieSarahsHair, 11101)}));

    private static StoryChoiceList ch11IKnockForCaitlyn = new StoryChoiceList(R.drawable.athletic_sarah_knock_door,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IKnockForCaitlyn, 11102)}));

    private static StoryChoiceList ch11CaitlynOpensDoor = new StoryChoiceList(R.drawable.caitlyn_greets_athletic_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11CaitlynOpensDoor, 11103)}));

    private static StoryChoiceList ch11WillCaitlynExcerciseWithMe = new StoryChoiceList(R.drawable.caitlyn_greets_athletic_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WillCaitlynExcerciseWithMe, 11104)}));

    private static StoryChoiceList ch11CaitlynDoesNotExcerciseWithMe = new StoryChoiceList(R.drawable.caitlyn_greets_athletic_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11CaitlynDoesNotExcerciseWithMe, 11105)}));

    private static StoryChoiceList ch11IEnterHealthClub = new StoryChoiceList(R.drawable.health_club_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IEnterHealthClub, 11106)}));

    private static StoryChoiceList ch11ILookForTreadmill = new StoryChoiceList(R.drawable.sarah_sees_treadmill,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ILookForTreadmill, 11107)}));

    private static StoryChoiceList ch11IRunOnTreadmill = new StoryChoiceList(R.drawable.sarah_runs_treadmill,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IRunOnTreadmill, 11108)}));

    private static StoryChoiceList ch11IGetOffTreadmill = new StoryChoiceList(R.drawable.sarah_runs_treadmill,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGetOffTreadmill, 11109)}));

    private static StoryChoiceList ch11GuestApproachesMe = new StoryChoiceList(R.drawable.sarah_encounters_guest,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GuestApproachesMe, 11110)}));

    private static StoryChoiceList ch11GuestFlirts = new StoryChoiceList(R.drawable.sarah_encounters_guest,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GuestFlirts, 11111)}));

    private static StoryChoiceList ch11AmIGoodOrBad = new StoryChoiceList(R.drawable.guest_traps_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11AmIGoodOrBad, 11112)}));

    private static StoryChoiceList ch11GuestWastesMyTime = new StoryChoiceList(R.drawable.guest_traps_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GuestWastesMyTime, 11113)}));

    private static StoryChoiceList ch11ILeaveGuest = new StoryChoiceList(R.drawable.guest_traps_sarah,
            Arrays.asList(new IStoryChoice[]{new ILeaveGuest(), new IPlayGuest()}));

    private static StoryChoiceList ch11IAmGoodGirl = new StoryChoiceList(R.drawable.guest_traps_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IAmGoodGirl, 11115)}));

    private static StoryChoiceList ch11IPushGuest = new StoryChoiceList(R.drawable.sarah_pushes_guest,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IPushGuest, 11116)}));

    private static StoryChoiceList ch11GuestWillNotForget = new StoryChoiceList(R.drawable.guest_falls,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GuestWillNotForget, 11122)}));

    private static StoryChoiceList ch11IAmNaughtyFemale = new StoryChoiceList(R.drawable.guest_traps_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IAmNaughtyFemale, 11118)}));

    private static StoryChoiceList ch11GladToHearIt = new StoryChoiceList(R.drawable.guest_traps_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GladToHearIt, 11119)}));

    private static StoryChoiceList ch11IWrapGuest = new StoryChoiceList(R.drawable.sarah_wraps_guest,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IWrapGuest, 11120)}));

    private static StoryChoiceList ch11WhatIsMyProblem = new StoryChoiceList(R.drawable.guest_falls,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11WhatIsMyProblem, 11121)}));

    private static StoryChoiceList ch11GuestAskedForIt = new StoryChoiceList(R.drawable.guest_falls,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11GuestAskedForIt, 11122)}));

    private static StoryChoiceList ch11ILeaveHealthClub = new StoryChoiceList(R.drawable.fitness_crowd,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ILeaveHealthClub, 11123)}));

    private static StoryChoiceList ch11IRelax = new StoryChoiceList(R.drawable.athletic_sarah_on_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IRelax, 11124)}));

    private static StoryChoiceList ch11IWillShower() {
        ArrayList<IStoryChoice> nextPages = new ArrayList<>();
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        if (flags.getStoryRoute() == Route.Phantom) {
            nextPages.add(new IWillShower());
        }
        nextPages.add(new IWatchTV());
        StoryChoiceList newList = new StoryChoiceList(R.drawable.athletic_sarah_on_bed, nextPages);
        return newList;
    }

    private static StoryChoiceList ch11IShouldCool = new StoryChoiceList(R.drawable.athletic_sarah_on_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IShouldCool, 11126)}));

    private static StoryChoiceList ch11ILayNewClothes = new StoryChoiceList(R.drawable.sarah_gets_towel,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ILayNewClothes, 11127)}));

    private static StoryChoiceList ch11IGetTowel = new StoryChoiceList(R.drawable.sarah_gets_towel,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IGetTowel, 11128)}));

    private static StoryChoiceList ch11IAdjustTemperature = new StoryChoiceList(R.drawable.sarah_starts_shower,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IAdjustTemperature, 11129)}));

    private static StoryChoiceList ch11IShower = new StoryChoiceList(R.drawable.sarah_in_shower,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IShower, 11130)}));

    private static StoryChoiceList ch11IFeelGood = new StoryChoiceList(R.drawable.sarah_in_shower,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IFeelGood, 11131)}));

    private static StoryChoiceList ch11IDry = new StoryChoiceList(R.drawable.sarah_wears_towel,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IDry, 11139)}));

    private static StoryChoiceList ch11NewNewsSegment = new StoryChoiceList(R.drawable.tv_seawall_top,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11NewNewsSegment, 11133)}));

    private static StoryChoiceList ch11SeawallIntroduced = new StoryChoiceList(R.drawable.tv_seawall_top,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11SeawallIntroduced, 11134)}));

    private static StoryChoiceList ch11CameraShowsSeawall = new StoryChoiceList(R.drawable.tv_seawall_bottom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11CameraShowsSeawall, 11135)}));

    private static StoryChoiceList ch11MayorIsCriticized = new StoryChoiceList(R.drawable.tv_seawall_bottom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11MayorIsCriticized, 11136)}));

    private static StoryChoiceList ch11Potholes = new StoryChoiceList(R.drawable.tv_cars,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11Potholes, 11137)}));

    private static StoryChoiceList ch11MayorsDefense = new StoryChoiceList(R.drawable.tv_mayor,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11MayorsDefense, 11138)}));

    private static StoryChoiceList ch11ITurnOffTV = new StoryChoiceList(R.drawable.tv_mayor,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11ITurnOffTV, 11139)}));

    private static StoryChoiceList ch11IWearFormalwear = new StoryChoiceList(R.drawable.sarah_formal,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch11IWearFormalwear, 12001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 11001:
                return ch11Title;
            case 11002:
                return ch11BekShtiiWakesMe;
            case 11003:
                return ch11ReunionWillBeTonight;
            case 11004:
                return ch11ICannotPrepare;
            case 11005:
                return ch11ICouldPossessSarah;
            case 11006:
                return ch11IReallyWantRebecca;
            case 11007:
                return ch11BekShtiiLeaves;
            case 11008:
                return ch11IGoToLab;
            case 11009:
                return ch11IWantUsToGoToHotel;
            case 11010:
                return ch11YukioIsNotPaidToGoWithMe;
            case 11011:
                return ch11IWillCallSupervisor;
            case 11012:
                return ch11YukioShrugs;
            case 11013:
                return ch11ICallSupervisor;
            case 11014:
                return ch11WeDriveOutOfArcticon;
            case 11015:
                return ch11YukioDrivesDownHighway;
            case 11016:
                return ch11KNFNVanPassesUs;
            case 11017:
                return ch11IRollDownWindow;
            case 11018:
                return ch11IFlyToVan;
            case 11019:
                return ch11ILandOnVan;
            case 11020:
                return ch11VanEntersPark;
            case 11021:
                return ch11VanStopsAtLodge;
            case 11022:
                return ch11SarahLooksAtMirror;
            case 11023:
                return ch11IPossessSarah;
            case 11024:
                return ch11IExamineSarah;
            case 11025:
                return ch11IGoToCrew;
            case 11026:
                return ch11RangerComes;
            case 11027:
                return ch11WeStartInterview;
            case 11028:
                return ch11AnchorStarts;
            case 11029:
                return ch11IIntroduceRanger;
            case 11030:
                return ch11RangerSawMe;
            case 11031:
                return ch11WasIAggressive;
            case 11032:
                return ch11RangerWasToDetainMe;
            case 11033:
                return ch11WasIDangerous;
            case 11034:
                return ch11StandardProcedure;
            case 11035:
                return ch11GoOnINod;
            case 11036:
                return ch11ISaidIWasPhantomOfWest;
            case 11037:
                return ch11WhatShouldIKnow;
            case 11038:
                return ch11IShouldTurnIn;
            case 11039:
                return ch11RangerMisunderstoodMe;
            case 11040:
                return ch11ISignOff;
            case 11041:
                return ch11AnchorThanksMe;
            case 11042:
                return ch11WePackUpToVan;
            case 11043:
                return ch11VanDrivesToNewFerando;
            case 11044:
                return ch11IExitVan;
            case 11045:
                return ch11IRegroupWithCaitlynAndYukio;
            case 11046:
                return ch11SecretFantasy;
            case 11047:
                return ch11YukioFlattersMe;
            case 11048:
                return ch11ILeftMyWallet;
            case 11049:
                return ch11YukioPullsBackWallet;
            case 11050:
                return ch11WhatDoesYukioWant;
            case 11051:
                return ch11WillIBookYukioARoom;
            case 11052:
                return ch11SarahAlreadyBooked;
            case 11053:
                return ch11YukioNeedsSeparateRoom;
            case 11054:
                return ch11YukiItsFine;
            case 11055:
                return ch11YukioGivesMeWallet;
            case 11056:
                return ch11WeEnterHotel;
            case 11057:
                return ch11YukioWaitsByEscalator;
            case 11058:
                return ch11IGreetReceptionist;
            case 11059:
                return ch11ReceptionistBooksRoom;
            case 11060:
                return ch11HowDoIPay;
            case 11061:
                return ch11IPayAsMyself;
            case 11062:
                return ch11IGiveMyCardToReceptionist;
            case 11063:
                return ch11IAmMyBoyfriend;
            case 11064:
                return ch11ProveIt;
            case 11065:
                return ch11IStare;
            case 11066:
                return ch11IdentityTheft;
            case 11067:
                return ch11AmICute;
            case 11068:
                return ch11YeahIBlush;
            case 11069:
                return ch11IGiveSarahsCardToReceptionist;
            case 11070:
                return ch11ReceptionistKnowsMeAsSarah;
            case 11071:
                return ch11YeahINod;
            case 11072:
                return ch11ReceptionistIsFanOfSarah;
            case 11073:
                return ch11LovelyFollower;
            case 11074:
                return ch11ReceptionistSwipesSarahsCard;
            case 11075:
                return ch11IGetKeycard;
            case 11076:
                return ch11IGoToEscalator;
            case 11077:
                return ch11IGiveYukioKeycard;
            case 11078:
                return ch11WhereDoWeEat;
            case 11079:
                return ch11WeGoToHabitat;
            case 11080:
                return ch11IAcceptYukiosApology;
            case 11081:
                return ch11HostGreetsUs;
            case 11082:
                return ch11WeSitAtHabitat;
            case 11083:
                return ch11INeedToWatchSarahsWeight;
            case 11084:
                return ch11SarahWillBeFine;
            case 11085:
                return ch11YukioIsLuckyToBeWithUs;
            case 11086:
                return ch11IEatBurger;
            case 11087:
                return ch11HabitatDims;
            case 11088:
                return ch11FakeThunder;
            case 11089:
                return ch11FakeMonkey;
            case 11090:
                return ch11HabitatIsLame;
            case 11091:
                return ch11IFinishEating;
            case 11092:
                return ch11WeGoUpstairs;
            case 11093:
                return ch11IEnterHotelRoom;
            case 11094:
                return ch11IExamineSarahsRoom;
            case 11095:
                return ch11ICheckSarahsCloset;
            case 11096:
                return ch11IWillExcercise;
            case 11097:
                return ch11IChangeIntoAthleticWear;
            case 11098:
                return ch11ILookAtHotelMirror;
            case 11099:
                return ch11IWorePonytailAsAnanya;
            case 11100:
                return ch11ITieSarahsHair;
            case 11101:
                return ch11IKnockForCaitlyn;
            case 11102:
                return ch11CaitlynOpensDoor;
            case 11103:
                return ch11WillCaitlynExcerciseWithMe;
            case 11104:
                return ch11CaitlynDoesNotExcerciseWithMe;
            case 11105:
                return ch11IEnterHealthClub;
            case 11106:
                return ch11ILookForTreadmill;
            case 11107:
                return ch11IRunOnTreadmill;
            case 11108:
                return ch11IGetOffTreadmill;
            case 11109:
                return ch11GuestApproachesMe;
            case 11110:
                return ch11GuestFlirts;
            case 11111:
                return ch11AmIGoodOrBad;
            case 11112:
                return ch11GuestWastesMyTime;
            case 11113:
                return ch11ILeaveGuest;
            case 11114:
                return ch11IAmGoodGirl;
            case 11115:
                return ch11IPushGuest;
            case 11116:
                return ch11GuestWillNotForget;
            case 11117:
                return ch11IAmNaughtyFemale;
            case 11118:
                return ch11GladToHearIt;
            case 11119:
                return ch11IWrapGuest;
            case 11120:
                return ch11WhatIsMyProblem;
            case 11121:
                return ch11GuestAskedForIt;
            case 11122:
                return ch11ILeaveHealthClub;
            case 11123:
                return ch11IRelax;
            case 11124:
                return ch11IWillShower();
            case 11125:
                return ch11IShouldCool;
            case 11126:
                return ch11ILayNewClothes;
            case 11127:
                return ch11IGetTowel;
            case 11128:
                return ch11IAdjustTemperature;
            case 11129:
                return ch11IShower;
            case 11130:
                return ch11IFeelGood;
            case 11131:
                return ch11IDry;
            case 11132:
                return ch11NewNewsSegment;
            case 11133:
                return ch11SeawallIntroduced;
            case 11134:
                return ch11CameraShowsSeawall;
            case 11135:
                return ch11MayorIsCriticized;
            case 11136:
                return ch11Potholes;
            case 11137:
                return ch11MayorsDefense;
            case 11138:
                return ch11ITurnOffTV;
            case 11139:
                return ch11IWearFormalwear;
        }
        return null;
    }
}
