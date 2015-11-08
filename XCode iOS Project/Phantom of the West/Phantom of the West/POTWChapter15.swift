//
//  POTWChapter15.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/22.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter15: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 15001:
            nextPages = [ch15Title(observer: observer)]
        case 15002:
            nextPages = [ch15IAmInJail(observer: observer)]
        case 15003:
            nextPages = [ch15ISeeViolinist(observer: observer)]
        case 15004:
            nextPages = [ch15ISeeBeggar(observer: observer)]
        case 15005:
            nextPages = [ch15ISeeAddict(observer: observer)]
        case 15006:
            nextPages = [ch15IHaveCivilRights(observer: observer)]
        case 15007:
            nextPages = [ch15BallBreaksMyCell(observer: observer)]
        case 15008:
            nextPages = [ch15ConstructorGreetsMe(observer: observer)]
        case 15009:
            nextPages = [ch15ConstructorIsDispossessed(observer: observer)]
        case 15010:
            nextPages = [ch15ItsSezja(observer: observer)]
        case 15011:
            nextPages = [ch15ILookAround(observer: observer)]
        case 15012:
            nextPages = [ch15BekShtiiAndBaqerFight(observer: observer)]
        case 15013:
            nextPages = [ch15SezjaPaddles(observer: observer)]
        case 15014:
            nextPages = [ch15ILookAtConstructor(observer: observer)]
        case 15015:
            nextPages = [ch15IPossessConstructor(observer: observer)]
        case 15016:
            nextPages = [ch15MyTeethAreBad(observer: observer)]
        case 15017:
            nextPages = [ch15IClimbBuilding(observer: observer)]
        case 15018:
            nextPages = [ch15ISeeRestOfCity(observer: observer)]
        case 15019:
            nextPages = [ch15IFindConstructionSite(observer: observer)]
        case 15020:
            nextPages = [ch15IGetPickaxe(observer: observer)]
        case 15021:
            nextPages = [ch15IJumpBetweenRooftops(observer: observer)]
        case 15022:
            nextPages = [ch15PeopleBelowTrapped(observer: observer)]
        case 15023:
            nextPages = [ch15IFindFireSpirits(observer: observer)]
        case 15024:
            nextPages = [ch15SpiritsSurroundMe(observer: observer)]
        case 15025:
            nextPages = [ch15ISlamSpirits(observer: observer)]
        case 15026:
            nextPages = [ch15IDeathByOverconfidence(observer: observer)]
        case 15027:
            nextPages = [ch15KeptYouWaiting(observer: observer)]
        case 15028:
            nextPages = [ch15IStrikeSpirit(observer: observer)]
        case 15029:
            nextPages = [ch15ILeaveSpirits(observer: observer)]
        case 15030:
            nextPages = [ch15SchoolBusNeedsHelp(observer: observer)]
        case 15031:
            nextPages = [ch15IDispossessConstructor(observer: observer)]
        case 15032:
            nextPages = [ch15IAmHero(observer: observer)]
        case 15033:
            nextPages = [ch15ILiftBus(observer: observer)]
        case 15034:
            nextPages = [ch15StudentsThankMe(observer: observer)]
        case 15035:
            nextPages = [ch15WowStudentsSay(observer: observer)]
        case 15036:
            nextPages = [ch15PhantomGoesToHotel(observer: observer)]
        case 15037:
            nextPages = [ch15ModernSelfishness(observer: observer)]
        case 15038:
            nextPages = [ch15BekShtiiThrowsMe(observer: observer)]
        case 15039:
            nextPages = [ch15IDrift(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch15Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch15Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15002)
    }
}

class ch15IAmInJail: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Jail"
    
    let textName = ["ch15IAmInJail"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15003)
    }
}

class ch15ISeeViolinist: StoryPageVoicedKaden {
    
    let imageName = "Jail-Violinist"
    
    let textName = ["ch15ISeeViolinist"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15004)
    }
}

class ch15ISeeBeggar: StoryPageVoicedKaden {
    
    let imageName = "Jail-Beggar"
    
    let textName = ["ch15ISeeBeggar"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15005)
    }
}

class ch15ISeeAddict: StoryPageVoicedKaden {
    
    let imageName = "Jail-Addict"
    
    let textName = ["ch15ISeeAddict", "ch15AddictTalks", "ch15SoundproofTube", "ch15LittleBuddyCannotTalk"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15006)
    }
}

class ch15IHaveCivilRights: StoryPageVoicedKaden {
    
    let imageName = "Jail-Window"
    
    let textName = ["ch15IHaveCivilRights"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15007)
    }
}

class ch15BallBreaksMyCell: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Jailbreak"
    
    let textName = ["ch15BallBreaksMyCell"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15008)
    }
}

class ch15ConstructorGreetsMe: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Waves"
    
    let textName = ["ch15ConstructorGreetsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15009)
    }
}

class ch15ConstructorIsDispossessed: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Dispossessed"
    
    let textName = ["ch15ConstructorIsDispossessed"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15010)
    }
}

class ch15ItsSezja: StoryPageVoicedKaden {
    
    let imageName = "Sezja-from-Construction-Worker"
    
    let textName = ["ch15ItsSezja", "ch15SezjaIsHappySeeingMe", "ch15HowLongWasIJailed", "ch15ItIsMorning"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15011)
    }
}

class ch15ILookAround: StoryPageVoicedKaden {
    
    let imageName = "Flooded-Roads"
    
    let textName = ["ch15ILookAround", "ch15OhWow", "ch15FloodedRoads"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15012)
    }
}

class ch15BekShtiiAndBaqerFight: StoryPageVoicedKaden {
    
    let imageName = "Kaden-and-Sezja-Backs"
    
    let textName = ["ch15BekShtiiAndBaqerFight", "ch15CanBaqerTurnIntoFireSpirits", "ch15DoIDislikeHistory", "ch15DidSezjaEnjoySchool", "ch15ThereIsCamp", "ch15SezjaHugs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15013)
    }
}

class ch15SezjaPaddles: StoryPageVoicedKaden {
    
    let imageName = "Sezja-Raft"
    
    let textName = ["ch15SezjaPaddles", "ch15MeAndCity"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15014)
    }
}

class ch15ILookAtConstructor: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Dazed"
    
    let textName = ["ch15ILookAtConstructor"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15015)
    }
}

class ch15IPossessConstructor: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Possesses-Construction-Worker"
    
    let textName = ["ch15IPossessConstructor"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15016)
    }
}

class ch15MyTeethAreBad: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Teeth"
    
    let textName = ["ch15MyTeethAreBad"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15017)
    }
}

class ch15IClimbBuilding: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Climbs"
    
    let textName = ["ch15IClimbBuilding"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15018)
    }
}

class ch15ISeeRestOfCity: StoryPageVoicedKaden {
    
    let imageName = "Whole-City-Flooded"
    
    let textName = ["ch15ISeeRestOfCity"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15019)
    }
}

class ch15IFindConstructionSite: StoryPageVoicedKaden {
    
    let imageName = "Construction-Site"
    
    let textName = ["ch15IFindConstructionSite", "ch15IJumpToConstructionSite"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15020)
    }
}

class ch15IGetPickaxe: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Pickaxe"
    
    let textName = ["ch15IGetPickaxe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15021)
    }
}

class ch15IJumpBetweenRooftops: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Leaps"
    
    let textName = ["ch15IJumpBetweenRooftops"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15022)
    }
}

class ch15PeopleBelowTrapped: StoryPageVoicedKaden {
    
    let imageName = "Flooded-City-Below"
    
    let textName = ["ch15PeopleBelowTrapped"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15023)
    }
}

class ch15IFindFireSpirits: StoryPageVoicedKaden {
    
    let imageName = "Fire-Spirits-Below"
    
    let textName = ["ch15IFindFireSpirits"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15024)
    }
}

class ch15SpiritsSurroundMe: StoryPageVoicedKaden {
    
    let imageName = "Fire-Spirits-Surround-Worker"
    
    let textName = ["ch15SpiritsSurroundMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15025)
    }
}

class ch15ISlamSpirits: StoryPageVoicedKaden {
    
    let imageName = "Worker-Axes-Fire-Spirits"
    
    let textName = ["ch15ISlamSpirits"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 15027
        if let ef = observer.eventFlags {
            if ef.ch5AnsweredCoach == .Disarm {
                nextState = 15026
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch15IDeathByOverconfidence: StoryPageVoicedKaden {
    
    let imageName = "Worker-Leans-over-Fire-Spirit"
    
    let textName = ["ch15IDeathByOverconfidence"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15028)
    }
}

class ch15KeptYouWaiting: StoryPageVoicedKaden {
    
    let imageName = "Worker-Leans-over-Fire-Spirit"
    
    let textName = ["ch15KeptYouWaiting"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15028)
    }
}

class ch15IStrikeSpirit: StoryPageVoicedKaden {
    
    let imageName = "Worker-Kills-Fire-Spirit"
    
    let textName = ["ch15IStrikeSpirit"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15029)
    }
}

class ch15ILeaveSpirits: StoryPageVoicedKaden {
    
    let imageName = "Construction-Worker-Climbs-with-Pickaxe"
    
    let textName = ["ch15ILeaveSpirits"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15030)
    }
}

class ch15SchoolBusNeedsHelp: StoryPageVoicedKaden {
    
    let imageName = "Flooded-School-Bus-Below"
    
    let textName = ["ch15SchoolBusNeedsHelp"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15031)
    }
}

class ch15IDispossessConstructor: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Dispossesses-Construction-Worker"
    
    let textName = ["ch15IDispossessConstructor"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15032)
    }
}

class ch15IAmHero: StoryPageVoicedKaden {
    
    let imageName = "School-Bus-Passengers-See-Kaden"
    
    let textName = ["ch15IAmHero"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15033)
    }
}

class ch15ILiftBus: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Lifts-Bus"
    
    let textName = ["ch15ILiftBus"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15034)
    }
}

class ch15StudentsThankMe: StoryPageVoicedKaden {
    
    let imageName = "Students-Thank-Kaden"
    
    let textName = ["ch15StudentsThankMe", "ch15IKnowElodie", "ch15KeepFriendsClose", "ch15ICanSayEllie", "ch15KeepStudentsSafe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15035)
    }
}

class ch15WowStudentsSay: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Flies-from-Bus"
    
    let textName = ["ch15WowStudentsSay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15036)
    }
}

class ch15PhantomGoesToHotel: StoryPageVoicedKaden {
    
    let imageName = "Bek'Shtii-Phantom-in-Distance"
    
    let textName = ["ch15PhantomGoesToHotel", "ch15IsThatBekShtii", "ch15WhatIsBekShtiiDoing"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15037)
    }
}

class ch15ModernSelfishness: StoryPageVoicedKaden {
    
    let imageName = "Bek'Shtii-Phantom-in-City"
    
    let textName = ["ch15ModernSelfishness", "ch15IHoldBekShtiiBack"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15038)
    }
}

class ch15BekShtiiThrowsMe: StoryPageVoicedKaden {
    
    let imageName = "Bek'Shtii-Phantom-Grabs-Kaden"
    
    let textName = ["ch15BekShtiiThrowsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(15039)
    }
}

class ch15IDrift: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Floats-on-River"
    
    let textName = ["ch15IDrift", "ch15IShouldHaveBeenAtReunion", "ch15IWillBeRescued"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16001)
    }
}