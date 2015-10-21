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
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch11Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch11Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11002)
    }
}

class ch11BekShtiiWakesMe: StoryPage {
    
    let imageName = "Bek'Shtii-with-Flyer"
    
    let textName = ["ch11BekShtiiWakesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11003)
    }
}

class ch11ReunionWillBeTonight: StoryPage {
    
    let imageName = "Kaden-Reads-Flyer"
    
    let textName = ["ch11ReunionWillBeTonight", "ch11ICannotPrepare", "ch11ICouldPossessSarah", "ch11IReallyWantRebecca", "ch11BekShtiiLeaves"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11004)
    }
}

class ch11IGoToLab: StoryPage {
    
    let imageName = "Kaden-Talks-to-Caitlyn-and-Yukio"
    
    let textName = ["ch11IGoToLab", "ch11IWantUsToGoToHotel", "ch11YukioIsNotPaidToGoWithMe", "ch11IWillCallSupervisor", "ch11YukioShrugs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11005)
    }
}

class ch11ICallSupervisor: StoryPage {
    
    let imageName = "Kaden-on-Phone"
    
    let textName = ["ch11ICallSupervisor", "ch11WeDriveOutOfArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11006)
    }
}

class ch11YukioDrivesDownHighway: StoryPage {
    
    let imageName = "Yukio-Drives"
    
    let textName = ["ch11YukioDrivesDownHighway", "ch11KNFNVanPassesUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11007)
    }
}

class ch11IRollDownWindow: StoryPage {
    
    let imageName = "Phantom-Car-Window"
    
    let textName = ["ch11IRollDownWindow"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11008)
    }
}

class ch11IFlyToVan: StoryPage {
    
    let imageName = "Jump-onto-News-Van"
    
    let textName = ["ch11IFlyToVan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11009)
    }
}

class ch11ILandOnVan: StoryPage {
    
    let imageName = "Phantom-Underneath-Van"
    
    let textName = ["ch11ILandOnVan", "ch11VanEntersPark"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11010)
    }
}

class ch11VanStopsAtLodge: StoryPage {
    
    let imageName = "Phantom-Underneath-Van-Grass"
    
    let textName = ["ch11VanStopsAtLodge", "ch11SarahLooksAtMirror"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11011)
    }
}

class ch11IPossessSarah: StoryPage {
    
    let imageName = "Sarah-Possessed"
    
    let textName = ["ch11IPossessSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11012)
    }
}

class ch11IExamineSarah: StoryPage {
    
    let imageName = "Sarah-Hands"
    
    let textName = ["ch11IExamineSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11013)
    }
}

class ch11IGoToCrew: StoryPage {
    
    let imageName = "News-Crew-Preparation"
    
    let textName = ["ch11IGoToCrew", "ch11RangerComes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11014)
    }
}

class ch11WeStartInterview: StoryPage {
    
    let imageName = "Sarah-Interviews-Ranger"
    
    let textName = ["ch11WeStartInterview", "ch11AnchorStarts", "ch11IIntroduceRanger", "ch11RangerSawMe", "ch11WasIAggressive", "ch11RangerWasToDetainMe", "ch11WasIDangerous", "ch11StandardProcedure", "ch11GoOnINod", "ch11ISaidIWasPhantomOfWest", "ch11WhatShouldIKnow", "ch11IShouldTurnIn", "ch11RangerMisunderstoodMe", "ch11ISignOff", "ch11AnchorThanksMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11015)
    }
}

class ch11WePackUpToVan: StoryPage {
    
    let imageName = "Sarah-Return-to-Van"
    
    let textName = ["ch11WePackUpToVan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11016)
    }
}

class ch11VanDrivesToNewFerando: StoryPage {
    
    let imageName = "Van-Drives-to-City"
    
    let textName = ["ch11VanDrivesToNewFerando"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11017)
    }
}

class ch11IExitVan: StoryPage {
    
    let imageName = "Van-Stops-at-Hotel"
    
    let textName = ["ch11IExitVan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11018)
    }
}

class ch11IRegroupWithCaitlynAndYukio: StoryPage {
    
    let imageName = "Sarah-at-Hotel-Entrance"
    
    let textName = ["ch11IRegroupWithCaitlynAndYukio", "ch11SecretFantasy", "ch11YukioFlattersMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11019)
    }
}

class ch11ILeftMyWallet: StoryPage {
    
    let imageName = "Yukio-Withholds-Wallet"
    
    let textName = ["ch11ILeftMyWallet", "ch11YukioPullsBackWallet", "ch11WhatDoesYukioWant", "ch11WillIBookYukioARoom", "ch11SarahAlreadyBooked", "ch11YukioNeedsSeparateRoom", "ch11YukiItsFine"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11020)
    }
}

class ch11YukioGivesMeWallet: StoryPage {
    
    let imageName = "Yukio-Gives-Sarah-Wallet"
    
    let textName = ["ch11YukioGivesMeWallet"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11021)
    }
}

class ch11WeEnterHotel: StoryPage {
    
    let imageName = "Sarah-in-Lobby"
    
    let textName = ["ch11WeEnterHotel", "ch11YukioWaitsByEscalator"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11022)
    }
}

class ch11IGreetReceptionist: StoryPage {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IGreetReceptionist", "ch11ReceptionistBooksRoom", "ch11HowDoIPay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11023)
    }
}

class ch11IPayAsMyself: StoryPage {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IPayAsMyself"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11PayedForHotelRoom = .KadenMoney
        }
        observer.goToStoryState(11024)
    }
}

class ch11IPayAsSarah: StoryPage {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IPayAsSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11PayedForHotelRoom = .SarahMoney
        }
        observer.goToStoryState(11028)
    }
}

class ch11IGiveMyCardToReceptionist: StoryPage {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11IGiveMyCardToReceptionist", "ch11IAmMyBoyfriend", "ch11ProveIt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11025)
    }
}

class ch11IStare: StoryPage {
    
    let imageName = "Sarah-Stares"
    
    let textName = ["ch11IStare"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11026)
    }
}

class ch11IdentityTheft: StoryPage {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11IdentityTheft"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11027)
    }
}

class ch11AmICute: StoryPage {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11AmICute", "ch11YeahIBlush"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11031)
    }
}

class ch11IGiveSarahsCardToReceptionist: StoryPage {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11IGiveSarahsCardToReceptionist", "ch11ReceptionistKnowsMeAsSarah", "ch11YeahINod", "ch11ReceptionistIsFanOfSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11029)
    }
}

class ch11LovelyFollower: StoryPage {
    
    let imageName = "Sarah-Autographs-Receptionist"
    
    let textName = ["ch11LovelyFollower"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11030)
    }
}

class ch11ReceptionistSwipesSarahsCard: StoryPage {
    
    let imageName = "Receptionist-Examines-Card"
    
    let textName = ["ch11ReceptionistSwipesSarahsCard"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11031)
    }
}

class ch11IGetKeycard: StoryPage {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IGetKeycard"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11032)
    }
}

class ch11IGoToEscalator: StoryPage {
    
    let imageName = "Sarah-Gives-Yukio-Card"
    
    let textName = ["ch11IGoToEscalator", "ch11IGiveYukioKeycard", "ch11WhereDoWeEat", "ch11WeGoToHabitat"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11033)
    }
}

class ch11IAcceptYukiosApology: StoryPage {
    
    let imageName = "Sarah-Walks-by-Yukio"
    
    let textName = ["ch11IAcceptYukiosApology"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11034)
    }
}

class ch11HostGreetsUs: StoryPage {
    
    let imageName = "Habitat-Entrance"
    
    let textName = ["ch11HostGreetsUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11035)
    }
}

class ch11WeSitAtHabitat: StoryPage {
    
    let imageName = "Habitat-Menu"
    
    let textName = ["ch11WeSitAtHabitat", "ch11INeedToWatchSarahsWeight", "ch11SarahWillBeFine"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11036)
    }
}

class ch11YukioIsLuckyToBeWithUs: StoryPage {
    
    let imageName = "Habitat-Server"
    
    let textName = ["ch11YukioIsLuckyToBeWithUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11037)
    }
}

class ch11IEatBurger: StoryPage {
    
    let imageName = "Sarah-Burger"
    
    let textName = ["ch11IEatBurger"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11038)
    }
}

class ch11HabitatDims: StoryPage {
    
    let imageName = "Sarah-Burger-Dark"
    
    let textName = ["ch11HabitatDims", "ch11FakeThunder", "ch11FakeMonkey"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11039)
    }
}

class ch11HabitatIsLame: StoryPage {
    
    let imageName = "Sarah-Burger"
    
    let textName = ["ch11HabitatIsLame", "ch11IFinishEating"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11040)
    }
}

class ch11WeGoUpstairs: StoryPage {
    
    let imageName = "Sarah-Caitlyn-Yukio-Elevator"
    
    let textName = ["ch11WeGoUpstairs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11041)
    }
}

class ch11IEnterHotelRoom: StoryPage {
    
    let imageName = "Sarah-Caitlyn-Yukio-to-Hotel-Rooms"
    
    let textName = ["ch11IEnterHotelRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11042)
    }
}

class ch11IExamineSarahsRoom: StoryPage {
    
    let imageName = "Sarah-Hotel-Room"
    
    let textName = ["ch11IExamineSarahsRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11043)
    }
}

class ch11ICheckSarahsCloset: StoryPage {
    
    let imageName = "Sarah-Closet"
    
    let textName = ["ch11ICheckSarahsCloset", "ch11IWillExcercise"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11044)
    }
}

class ch11IChangeIntoAthleticWear: StoryPage {
    
    let imageName = "Sarah-Athletic"
    
    let textName = ["ch11IChangeIntoAthleticWear", "ch11ILookAtHotelMirror", "ch11IWorePonytailAsAnanya"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11045)
    }
}

class ch11ITieSarahsHair: StoryPage {
    
    let imageName = "Sarah-Athletic-Ponytail"
    
    let textName = ["ch11ITieSarahsHair"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11046)
    }
}

class ch11IKnockForCaitlyn: StoryPage {
    
    let imageName = "Athletic-Sarah-Knock-Door"
    
    let textName = ["ch11IKnockForCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11047)
    }
}

class ch11CaitlynOpensDoor: StoryPage {
    
    let imageName = "Caitlyn-Greets-Athletic-Sarah"
    
    let textName = ["ch11CaitlynOpensDoor", "ch11WillCaitlynExcerciseWithMe", "ch11CaitlynDoesNotExcerciseWithMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11048)
    }
}

class ch11IEnterHealthClub: StoryPage {
    
    let imageName = "Health-Club-Entrance"
    
    let textName = ["ch11IEnterHealthClub"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11049)
    }
}

class ch11ILookForTreadmill: StoryPage {
    
    let imageName = "Sarah-Sees-Treadmill"
    
    let textName = ["ch11ILookForTreadmill"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11050)
    }
}

class ch11IRunOnTreadmill: StoryPage {
    
    let imageName = "Sarah-Runs-Treadmill"
    
    let textName = ["ch11IRunOnTreadmill", "ch11IGetOffTreadmill"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11051)
    }
}

class ch11GuestApproachesMe: StoryPage {
    
    let imageName = "Sarah-Encounters-Guest"
    
    let textName = ["ch11GuestApproachesMe", "ch11GuestFlirts"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11052)
    }
}

class ch11AmIGoodOrBad: StoryPage {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11AmIGoodOrBad", "ch11GuestWastesMyTime"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11053)
    }
}

class ch11ILeaveGuest: StoryPage {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11ILeaveGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11HarassedAfterWorkout = .Left
        }
        observer.goToStoryState(11054)
    }
}

class ch11IPlayGuest: StoryPage {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11IPlayGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch11HarassedAfterWorkout = .PlayedAlong
        }
        observer.goToStoryState(11057)
    }
}

class ch11IAmGoodGirl: StoryPage {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11IAmGoodGirl"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11055)
    }
}

class ch11IPushGuest: StoryPage {
    
    let imageName = "Sarah-Pushes-Guest"
    
    let textName = ["ch11IPushGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11056)
    }
}

class ch11GuestWillNotForget: StoryPage {
    
    let imageName = "Guest-Falls"
    
    let textName = ["ch11GuestWillNotForget"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11060)
    }
}

class ch11IAmNaughtyFemale: StoryPage {
    
    let imageName = "Guest-Traps-Sarah"
    
    let textName = ["ch11IAmNaughtyFemale", "ch11GladToHearIt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11058)
    }
}

class ch11IWrapGuest: StoryPage {
    
    let imageName = "Sarah-Wraps-Guest"
    
    let textName = ["ch11IWrapGuest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11059)
    }
}

class ch11WhatIsMyProblem: StoryPage {
    
    let imageName = "Guest-Falls"
    
    let textName = ["ch11WhatIsMyProblem", "ch11GuestAskedForIt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11060)
    }
}

class ch11ILeaveHealthClub: StoryPage {
    
    let imageName = "Fitness-Crowd"
    
    let textName = ["ch11ILeaveHealthClub"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11061)
    }
}

class ch11IRelax: StoryPage {
    
    let imageName = "Athletic-Sarah-on-Bed"
    
    let textName = ["ch11IRelax"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11062)
    }
}