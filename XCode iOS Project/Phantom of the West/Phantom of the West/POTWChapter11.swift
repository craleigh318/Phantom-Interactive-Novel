//
//  POTWChapter11.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/20.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter11: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 11001:
            nextPages = [ch11Title(observer: observer)]
        case 11002:
            nextPages = [ch11BekShtiiWakesMe(observer: observer)]
        case 11003:
            nextPages = [ch11ReunionWillBeTonight(observer: observer)]
        case 11004:
            nextPages = [ch11IGoToLab(observer: observer)]
        case 11005:
            nextPages = [ch11ICallSupervisor(observer: observer)]
        case 11006:
            nextPages = [ch11YukioDrivesDownHighway(observer: observer)]
        case 11007:
            nextPages = [ch11IRollDownWindow(observer: observer)]
        case 11008:
            nextPages = [ch11IFlyToVan(observer: observer)]
        case 11009:
            nextPages = [ch11ILandOnVan(observer: observer)]
        case 11010:
            nextPages = [ch11VanStopsAtLodge(observer: observer)]
        case 11011:
            nextPages = [ch11IPossessSarah(observer: observer)]
        case 11012:
            nextPages = [ch11IExamineSarah(observer: observer)]
        case 11013:
            nextPages = [ch11IGoToCrew(observer: observer)]
        case 11014:
            nextPages = [ch11WeStartInterview(observer: observer)]
        case 11015:
            nextPages = [ch11WePackUpToVan(observer: observer)]
        case 11016:
            nextPages = [ch11VanDrivesToNewFerando(observer: observer)]
        case 11017:
            nextPages = [ch11IExitVan(observer: observer)]
        case 11018:
            nextPages = [ch11IRegroupWithCaitlynAndYukio(observer: observer)]
        case 11019:
            nextPages = [ch11ILeftMyWallet(observer: observer)]
        case 11020:
            nextPages = [ch11YukioGivesMeWallet(observer: observer)]
        case 11021:
            nextPages = [ch11WeEnterHotel(observer: observer)]
        case 11022:
            nextPages = [ch11IGreetReceptionist(observer: observer)]
        case 11023:
            nextPages = [ch11IPayAsMyself(observer: observer), ch11IPayAsSarah(observer: observer)]
        case 11024:
            nextPages = [ch11IGiveMyCardToReceptionist(observer: observer)]
        case 11025:
            nextPages = [ch11IStare(observer: observer)]
        case 11026:
            nextPages = [ch11IdentityTheft(observer: observer)]
        case 11027:
            nextPages = [ch11AmICute(observer: observer)]
        case 11028:
            nextPages = [ch11IGiveSarahsCardToReceptionist(observer: observer)]
        case 11029:
            nextPages = [ch11LovelyFollower(observer: observer)]
        case 11030:
            nextPages = [ch11ReceptionistSwipesSarahsCard(observer: observer)]
        case 11031:
            nextPages = [ch11IGetKeycard(observer: observer)]
        case 11032:
            nextPages = [ch11IGoToEscalator(observer: observer)]
        case 11033:
            nextPages = [ch11IAcceptYukiosApology(observer: observer)]
        case 11034:
            nextPages = [ch11HostGreetsUs(observer: observer)]
        case 11035:
            nextPages = [ch11WeSitAtHabitat(observer: observer)]
        case 11036:
            nextPages = [ch11YukioIsLuckyToBeWithUs(observer: observer)]
        case 11037:
            nextPages = [ch11IEatBurger(observer: observer)]
        case 11038:
            nextPages = [ch11HabitatDims(observer: observer)]
        case 11039:
            nextPages = [ch11HabitatIsLame(observer: observer)]
        case 11040:
            nextPages = [ch11WeGoUpstairs(observer: observer)]
        case 11041:
            nextPages = [ch11IEnterHotelRoom(observer: observer)]
        case 11042:
            nextPages = [ch11IExamineSarahsRoom(observer: observer)]
        case 11043:
            nextPages = [ch11ICheckSarahsCloset(observer: observer)]
        case 11044:
            nextPages = [ch11IChangeIntoAthleticWear(observer: observer)]
        case 11045:
            nextPages = [ch11ITieSarahsHair(observer: observer)]
        case 11046:
            nextPages = [ch11IKnockForCaitlyn(observer: observer)]
        case 11047:
            nextPages = [ch11CaitlynOpensDoor(observer: observer)]
        case 11048:
            nextPages = [ch11IEnterHealthClub(observer: observer)]
        case 11049:
            nextPages = [ch11ILookForTreadmill(observer: observer)]
        case 11050:
            nextPages = [ch11IRunOnTreadmill(observer: observer)]
        case 11051:
            nextPages = [ch11GuestApproachesMe(observer: observer)]
        case 11052:
            nextPages = [ch11AmIGoodOrBad(observer: observer)]
        case 11053:
            nextPages = [ch11ILeaveGuest(observer: observer), ch11IPlayGuest(observer: observer)]
        case 11054:
            nextPages = [ch11IAmGoodGirl(observer: observer)]
        case 11055:
            nextPages = [ch11IPushGuest(observer: observer)]
        case 11056:
            nextPages = [ch11GuestWillNotForget(observer: observer)]
        case 11057:
            nextPages = [ch11IAmNaughtyFemale(observer: observer)]
        case 11058:
            nextPages = [ch11IWrapGuest(observer: observer)]
        case 11059:
            nextPages = [ch11WhatIsMyProblem(observer: observer)]
        case 11060:
            nextPages = [ch11ILeaveHealthClub(observer: observer)]
        case 11061:
            nextPages = [ch11IRelax(observer: observer)]
        case 11062:
            nextPages = ch11EndDecision(observer)
        case 11063:
            nextPages = [ch11IShouldCool(observer: observer)]
        case 11064:
            nextPages = [ch11ILayNewClothes(observer: observer)]
        case 11065:
            nextPages = [ch11IAdjustTemperature(observer: observer)]
        case 11066:
            nextPages = [ch11IShower(observer: observer)]
        case 11067:
            nextPages = [ch11IDry(observer: observer)]
        case 11068:
            nextPages = [ch11NewNewsSegment(observer: observer)]
        case 11069:
            nextPages = [ch11CameraShowsSeawall(observer: observer)]
        case 11070:
            nextPages = [ch11Potholes(observer: observer)]
        case 11071:
            nextPages = [ch11MayorsDefense(observer: observer)]
        case 11072:
            nextPages = [ch11IWearFormalwear(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
    
    func ch11EndDecision(observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages = [StoryPage]()
        if let ef = observer.eventFlags {
            if ef.route == .Phantom {
                nextPages.append(ch11IWillShower(observer: observer))
            }
        }
        nextPages.append(ch11IWatchTV(observer: observer))
        return nextPages
    }
}

class ch11Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch11Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11002)
    }
}

class ch11BekShtiiWakesMe: StoryPageVoicedKaden {
    
    let imageName = "Bek'Shtii-with-Flyer"
    
    let textName = ["ch11BekShtiiWakesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11003)
    }
}

class ch11ReunionWillBeTonight: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Reads-Flyer"
    
    let textName = ["ch11ReunionWillBeTonight", "ch11ICannotPrepare", "ch11ICouldPossessSarah", "ch11IReallyWantRebecca", "ch11BekShtiiLeaves"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11004)
    }
}

class ch11IGoToLab: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn-and-Yukio"
    
    let textName = ["ch11IGoToLab", "ch11IWantUsToGoToHotel", "ch11YukioIsNotPaidToGoWithMe", "ch11IWillCallSupervisor", "ch11YukioShrugs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11005)
    }
}

class ch11ICallSupervisor: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Phone"
    
    let textName = ["ch11ICallSupervisor", "ch11WeDriveOutOfArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11006)
    }
}

class ch11YukioDrivesDownHighway: StoryPageVoicedKaden {
    
    let imageName = "Yukio-Drives"
    
    let textName = ["ch11YukioDrivesDownHighway", "ch11KNFNVanPassesUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11007)
    }
}

class ch11IRollDownWindow: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Car-Window"
    
    let textName = ["ch11IRollDownWindow"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11008)
    }
}

class ch11IFlyToVan: StoryPageVoicedKaden {
    
    let imageName = "Jump-onto-News-Van"
    
    let textName = ["ch11IFlyToVan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11009)
    }
}

class ch11ILandOnVan: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Underneath-Van"
    
    let textName = ["ch11ILandOnVan", "ch11VanEntersPark"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11010)
    }
}

class ch11VanStopsAtLodge: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Underneath-Van-Grass"
    
    let textName = ["ch11VanStopsAtLodge", "ch11SarahLooksAtMirror"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11011)
    }
}

class ch11IPossessSarah: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Possessed"
    
    let textName = ["ch11IPossessSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11012)
    }
}

class ch11IExamineSarah: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Hands"
    
    let textName = ["ch11IExamineSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11013)
    }
}

class ch11IGoToCrew: StoryPageVoicedKaden {
    
    let imageName = "News-Crew-Preparation"
    
    let textName = ["ch11IGoToCrew", "ch11RangerComes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11014)
    }
}

class ch11WeStartInterview: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Interviews-Ranger"
    
    let textName = ["ch11WeStartInterview", "ch11AnchorStarts", "ch11IIntroduceRanger", "ch11RangerSawMe", "ch11WasIAggressive", "ch11RangerWasToDetainMe", "ch11WasIDangerous", "ch11StandardProcedure", "ch11GoOnINod", "ch11ISaidIWasPhantomOfWest", "ch11WhatShouldIKnow", "ch11IShouldTurnIn", "ch11RangerMisunderstoodMe", "ch11ISignOff", "ch11AnchorThanksMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11015)
    }
}

class ch11WePackUpToVan: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Return-to-Van"
    
    let textName = ["ch11WePackUpToVan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11016)
    }
}

class ch11VanDrivesToNewFerando: StoryPageVoicedKaden {
    
    let imageName = "Van-Drives-to-City"
    
    let textName = ["ch11VanDrivesToNewFerando"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11017)
    }
}

class ch11IExitVan: StoryPageVoicedKaden {
    
    let imageName = "Van-Stops-at-Hotel"
    
    let textName = ["ch11IExitVan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11018)
    }
}

class ch11IRegroupWithCaitlynAndYukio: StoryPageVoicedKaden {
    
    let imageName = "Sarah-at-Hotel-Entrance"
    
    let textName = ["ch11IRegroupWithCaitlynAndYukio", "ch11SecretFantasy", "ch11YukioFlattersMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11019)
    }
}

class ch11ILeftMyWallet: StoryPageVoicedKaden {
    
    let imageName = "Yukio-Withholds-Wallet"
    
    let textName = ["ch11ILeftMyWallet", "ch11YukioPullsBackWallet", "ch11WhatDoesYukioWant", "ch11WillIBookYukioARoom", "ch11SarahAlreadyBooked", "ch11YukioNeedsSeparateRoom", "ch11YukiItsFine"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11020)
    }
}

class ch11YukioGivesMeWallet: StoryPageVoicedKaden {
    
    let imageName = "Yukio-Gives-Sarah-Wallet"
    
    let textName = ["ch11YukioGivesMeWallet"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11021)
    }
}

class ch11WeEnterHotel: StoryPageVoicedKaden {
    
    let imageName = "Sarah-in-Lobby"
    
    let textName = ["ch11WeEnterHotel", "ch11YukioWaitsByEscalator"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11022)
    }
}

class ch11IGreetReceptionist: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IGreetReceptionist", "ch11ReceptionistBooksRoom", "ch11HowDoIPay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11023)
    }
}

class ch11IPayAsMyself: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IPayAsMyself"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11024)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11PayedForHotelRoom = .KadenMoney
        }
        super.continueStory()
    }
}

class ch11IPayAsSarah: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IPayAsSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11028)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11PayedForHotelRoom = .SarahMoney
        }
        super.continueStory()
    }
}

class ch11IGiveMyCardToReceptionist: StoryPageVoicedKaden {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11IGiveMyCardToReceptionist", "ch11IAmMyBoyfriend", "ch11ProveIt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11025)
    }
}

class ch11IStare: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Stares"
    
    let textName = ["ch11IStare"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11026)
    }
}

class ch11IdentityTheft: StoryPageVoicedKaden {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11IdentityTheft"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11027)
    }
}

class ch11AmICute: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11AmICute", "ch11YeahIBlush"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11031)
    }
}

class ch11IGiveSarahsCardToReceptionist: StoryPageVoicedKaden {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11IGiveSarahsCardToReceptionist", "ch11ReceptionistKnowsMeAsSarah", "ch11YeahINod", "ch11ReceptionistIsFanOfSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11029)
    }
}

class ch11LovelyFollower: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Autographs-Receptionist"
    
    let textName = ["ch11LovelyFollower"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11030)
    }
}

class ch11ReceptionistSwipesSarahsCard: StoryPageVoicedKaden {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11ReceptionistSwipesSarahsCard"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11031)
    }
}

class ch11IGetKeycard: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IGetKeycard"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11032)
    }
}

class ch11IGoToEscalator: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Gives-Yukio-Card"
    
    let textName = ["ch11IGoToEscalator", "ch11IGiveYukioKeycard", "ch11WhereDoWeEat", "ch11WeGoToHabitat"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11033)
    }
}

class ch11IAcceptYukiosApology: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Walks-by-Yukio"
    
    let textName = ["ch11IAcceptYukiosApology"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11034)
    }
}

class ch11HostGreetsUs: StoryPageVoicedKaden {
    
    let imageName = "Habitat-Entrance"
    
    let textName = ["ch11HostGreetsUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11035)
    }
}

class ch11WeSitAtHabitat: StoryPageVoicedKaden {
    
    let imageName = "Habitat-Menu"
    
    let textName = ["ch11WeSitAtHabitat", "ch11INeedToWatchSarahsWeight", "ch11SarahWillBeFine"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11036)
    }
}

class ch11YukioIsLuckyToBeWithUs: StoryPageVoicedKaden {
    
    let imageName = "Habitat-Server"
    
    let textName = ["ch11YukioIsLuckyToBeWithUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11037)
    }
}

class ch11IEatBurger: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Burger"
    
    let textName = ["ch11IEatBurger"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11038)
    }
}

class ch11HabitatDims: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Burger-Dark"
    
    let textName = ["ch11HabitatDims", "ch11FakeThunder", "ch11FakeMonkey"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11039)
    }
}

class ch11HabitatIsLame: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Burger"
    
    let textName = ["ch11HabitatIsLame", "ch11IFinishEating"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11040)
    }
}

class ch11WeGoUpstairs: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Caitlyn-Yukio-Elevator"
    
    let textName = ["ch11WeGoUpstairs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11041)
    }
}

class ch11IEnterHotelRoom: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Caitlyn-Yukio-to-Hotel-Rooms"
    
    let textName = ["ch11IEnterHotelRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11042)
    }
}

class ch11IExamineSarahsRoom: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Hotel-Room"
    
    let textName = ["ch11IExamineSarahsRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11043)
    }
}

class ch11ICheckSarahsCloset: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Closet"
    
    let textName = ["ch11ICheckSarahsCloset", "ch11IWillExcercise"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11044)
    }
}

class ch11IChangeIntoAthleticWear: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Athletic"
    
    let textName = ["ch11IChangeIntoAthleticWear", "ch11ILookAtHotelMirror", "ch11IWorePonytailAsAnanya"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11045)
    }
}

class ch11ITieSarahsHair: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Athletic-Ponytail"
    
    let textName = ["ch11ITieSarahsHair"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11046)
    }
}

class ch11IKnockForCaitlyn: StoryPageVoicedKaden {
    
    let imageName = "Athletic-Sarah-Knock-Door"
    
    let textName = ["ch11IKnockForCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11047)
    }
}

class ch11CaitlynOpensDoor: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Greets-Athletic-Sarah"
    
    let textName = ["ch11CaitlynOpensDoor", "ch11WillCaitlynExcerciseWithMe", "ch11CaitlynDoesNotExcerciseWithMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11048)
    }
}

class ch11IEnterHealthClub: StoryPageVoicedKaden {
    
    let imageName = "Health-Club-Entrance"
    
    let textName = ["ch11IEnterHealthClub"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11049)
    }
}

class ch11ILookForTreadmill: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Sees-Treadmill"
    
    let textName = ["ch11ILookForTreadmill"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11050)
    }
}

class ch11IRunOnTreadmill: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Runs-Treadmill"
    
    let textName = ["ch11IRunOnTreadmill", "ch11IGetOffTreadmill"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11051)
    }
}

class ch11GuestApproachesMe: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Encounters-Guest"
    
    let textName = ["ch11GuestApproachesMe", "ch11GuestFlirts"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11052)
    }
}

class ch11AmIGoodOrBad: StoryPageVoicedKaden {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11AmIGoodOrBad", "ch11GuestWastesMyTime"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11053)
    }
}

class ch11ILeaveGuest: StoryPageVoicedKaden {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11ILeaveGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11054)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11HarassedAfterWorkout = .Left
        }
        super.continueStory()
    }
}

class ch11IPlayGuest: StoryPageVoicedKaden {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11IPlayGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11057)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11HarassedAfterWorkout = .PlayedAlong
        }
        super.continueStory()
    }
}

class ch11IAmGoodGirl: StoryPageVoicedKaden {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11IAmGoodGirl"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11055)
    }
}

class ch11IPushGuest: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Pushes-Guest"
    
    let textName = ["ch11IPushGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11056)
    }
}

class ch11GuestWillNotForget: StoryPageVoicedKaden {
    
    let imageName = "Guest-Falls"
    
    let textName = ["ch11GuestWillNotForget"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11060)
    }
}

class ch11IAmNaughtyFemale: StoryPageVoicedKaden {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11IAmNaughtyFemale", "ch11GladToHearIt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11058)
    }
}

class ch11IWrapGuest: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Wraps-Guest"
    
    let textName = ["ch11IWrapGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11059)
    }
}

class ch11WhatIsMyProblem: StoryPageVoicedKaden {
    
    let imageName = "Guest-Falls"
    
    let textName = ["ch11WhatIsMyProblem", "ch11GuestAskedForIt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11060)
    }
}

class ch11ILeaveHealthClub: StoryPageVoicedKaden {
    
    let imageName = "Fitness-Crowd"
    
    let textName = ["ch11ILeaveHealthClub"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11061)
    }
}

class ch11IRelax: StoryPageVoicedKaden {
    
    let imageName = "Athletic-Sarah-on-Bed"
    
    let textName = ["ch11IRelax"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11062)
    }
}

class ch11IWillShower: StoryPageVoicedKaden {
    
    let imageName = "Athletic-Sarah-on-Bed"
    
    let textName = ["ch11IWillShower"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11063)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11ActedInSarahRoom = .Showered
        }
        super.continueStory()
    }
}

class ch11IWatchTV: StoryPageVoicedKaden {
    
    let imageName = "Athletic-Sarah-on-Bed"
    
    let textName = ["ch11IWatchTV"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11068)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11ActedInSarahRoom = .WatchedTV
        }
        super.continueStory()
    }
}

class ch11IShouldCool: StoryPageVoicedKaden {
    
    let imageName = "Athletic-Sarah-on-Bed"
    
    let textName = ["ch11IShouldCool"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11064)
    }
}

class ch11ILayNewClothes: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Gets-Towel"
    
    let textName = ["ch11ILayNewClothes", "ch11IGetTowel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11065)
    }
}

class ch11IAdjustTemperature: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Starts-Shower"
    
    let textName = ["ch11IAdjustTemperature"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11066)
    }
}

class ch11IShower: StoryPageVoicedKaden {
    
    let imageName = "Sarah-in-Shower"
    
    let textName = ["ch11IShower", "ch11IFeelGood"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11067)
    }
}

class ch11IDry: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Wears-Towel"
    
    let textName = ["ch11IDry"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11072)
    }
}

class ch11NewNewsSegment: StoryPageVoicedKaden {
    
    let imageName = "TV-Seawall-Top"
    
    let textName = ["ch11NewNewsSegment", "ch11SeawallIntroduced"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11069)
    }
}

class ch11CameraShowsSeawall: StoryPageVoicedKaden {
    
    let imageName = "TV-Seawall-Bottom"
    
    let textName = ["ch11CameraShowsSeawall", "ch11MayorIsCriticized"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11070)
    }
}

class ch11Potholes: StoryPageVoicedKaden {
    
    let imageName = "TV-Cars"
    
    let textName = ["ch11Potholes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11071)
    }
}

class ch11MayorsDefense: StoryPageVoicedKaden {
    
    let imageName = "TV-Mayor"
    
    let textName = ["ch11MayorsDefense", "ch11ITurnOffTV"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 11072)
    }
}

class ch11IWearFormalwear: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Formal"
    
    let textName = ["ch11IWearFormalwear"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 12001)
    }
}