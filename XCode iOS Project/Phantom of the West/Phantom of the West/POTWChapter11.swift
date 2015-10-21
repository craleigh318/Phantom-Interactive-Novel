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
        //observer.goToStoryState(11024)
    }
}

class ch11IPayAsSarah: StoryPage {
    
    let imageName = "Sarah-Talks-to-Receptionist"
    
    let textName = ["ch11IPayAsSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        //observer.goToStoryState()
    }
}