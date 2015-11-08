//
//  POTWChapter13.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/21.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter13: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 13001:
            nextPages = [ch13Title(observer: observer)]
        case 13002:
            nextPages = [ch13IAwaken(observer: observer)]
        case 13003:
            nextPages = [ch13IPace(observer: observer)]
        case 13004:
            nextPages = [ch13IConcentrate(observer: observer)]
        case 13005:
            nextPages = [ch13RebeccaAppears(observer: observer)]
        case 13006:
            nextPages = [ch13RebeccaVanishes(observer: observer)]
        case 13007:
            nextPages = [ch13IWashMyFace(observer: observer)]
        case 13008:
            nextPages = [ch13IGetCaitlynAndYukio(observer: observer)]
        case 13009:
            nextPages = [ch13WeWalkToBallroom(observer: observer)]
        case 13010:
            nextPages = [ch13ILeanOnWall(observer: observer)]
        case 13011:
            nextPages = [ch13AnxietyAttack(observer: observer)]
        case 13012:
            nextPages = [ch13IGoToBalcony(observer: observer)]
        case 13013:
            nextPages = [ch13IWasNeverTheProblem(observer: observer)]
        case 13014:
            nextPages = [ch13WeKnowRealProblem(observer: observer)]
        case 13015:
            nextPages = [ch13BaqerIsGloomy(observer: observer)]
        case 13016:
            nextPages = [ch13ICanBeAnyoneIWant(observer: observer)]
        case 13017:
            nextPages = [ch13GodsGaveInput(observer: observer)]
        case 13018:
            nextPages = [ch13IEncounterOfficer(observer: observer)]
        case 13019:
            nextPages = [ch13OfficerIsAboutToShockMe(observer: observer)]
        case 13020:
            nextPages = [ch13ICounterOfficer(observer: observer)]
        case 13021:
            nextPages = [ch13IAmVacuumed(observer: observer)]
        case 13022:
            nextPages = [ch13ItIsDark(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch13Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch13Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13002)
    }
}

class ch13IAwaken: StoryPageVoicedKaden {
    
    let imageName = "Formal-Sarah-on-Bed"
    
    let textName = ["ch13IAwaken"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13003)
    }
}

class ch13IPace: StoryPageVoicedKaden {
    
    let imageName = "Formal-Sarah-Daydreams"
    
    let textName = ["ch13IPace"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13004)
    }
}

class ch13IConcentrate: StoryPageVoicedKaden {
    
    let imageName = "Formal-Sarah-Headache"
    
    let textName = ["ch13IConcentrate", "ch13IClearMyMind"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13005)
    }
}

class ch13RebeccaAppears: StoryPageVoicedKaden {
    
    let imageName = "Rebecca-Hallucination-Talks"
    
    let textName = ["ch13RebeccaAppears", "ch13IsRebeccaVaNal", "ch13RebeccaHasNoPlaceForMe", "ch13StopItRebecca"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13006)
    }
}

class ch13RebeccaVanishes: StoryPageVoicedKaden {
    
    let imageName = "Rebecca-Hallucination-Vanishes"
    
    let textName = ["ch13RebeccaVanishes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13007)
    }
}

class ch13IWashMyFace: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Splashes-Face"
    
    let textName = ["ch13IWashMyFace"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13008)
    }
}

class ch13IGetCaitlynAndYukio: StoryPageVoicedKaden {
    
    let imageName = "Formal-Sarah-Knock-Door"
    
    let textName = ["ch13IGetCaitlynAndYukio"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13009)
    }
}

class ch13WeWalkToBallroom: StoryPageVoicedKaden {
    
    let imageName = "Formal-Sarah-Walkway"
    
    let textName = ["ch13WeWalkToBallroom", "ch13IFeelLightheaded"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13010)
    }
}

class ch13ILeanOnWall: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Leans-Wall"
    
    let textName = ["ch13ILeanOnWall"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13011)
    }
}

class ch13AnxietyAttack: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Leans-Wall-with-Tentacles"
    
    let textName = ["ch13AnxietyAttack", "ch13IAmAMonster", "ch13IShouldNotGo", "ch13IHaveToGo", "ch13YukioIsRight"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13012)
    }
}

class ch13IGoToBalcony: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Balcony-Alone"
    
    let textName = ["ch13IGoToBalcony", "ch13AmIUpset"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13013)
    }
}

class ch13IWasNeverTheProblem: StoryPageVoicedKaden {
    
    let imageName = "Baqer-Balcony-Behind"
    
    let textName = ["ch13IWasNeverTheProblem"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13014)
    }
}

class ch13WeKnowRealProblem: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Balcony-with-Baqer"
    
    let textName = ["ch13WeKnowRealProblem", "ch13RebeccaMadeMeBad", "ch13TooLateForRebecca", "ch13RebeccaWasNotThere"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13015)
    }
}

class ch13BaqerIsGloomy: StoryPageVoicedKaden {
    
    let imageName = "Balcony-Sezja"
    
    let textName = ["ch13BaqerIsGloomy"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13016)
    }
}

class ch13ICanBeAnyoneIWant: StoryPageVoicedKaden {
    
    let imageName = "Balcony-Sezja-Sees-Sarah"
    
    let textName = ["ch13ICanBeAnyoneIWant", "ch13ILookWonderful", "ch13BeWhomRebeccaWants"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13017)
    }
}

class ch13GodsGaveInput: StoryPageVoicedKaden {
    
    let imageName = "Balcony-Bek'Shtii"
    
    let textName = ["ch13GodsGaveInput", "ch13CoworkersWillDoubt", "ch13BekShtiiIsDoubted", "ch13YeahYeahOKISay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13018)
    }
}

class ch13IEncounterOfficer: StoryPageVoicedKaden {
    
    let imageName = "Officer-Talks-to-Sarah"
    
    let textName = ["ch13IEncounterOfficer", "ch13PoliceReceivedComplaint", "ch13OhReallyIAsk", "ch13DidIDealWithScientists", "ch13HotScoop", "ch13HotScoopInJail"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13019)
    }
}

class ch13OfficerIsAboutToShockMe: StoryPageVoicedKaden {
    
    let imageName = "Officer-Gun-to-Sarah"
    
    let textName = ["ch13OfficerIsAboutToShockMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13020)
    }
}

class ch13ICounterOfficer: StoryPageVoicedKaden {
    
    let imageName = "Sarah-Disarms-Officer"
    
    let textName = ["ch13ICounterOfficer", "ch13OfficerSummonsAgent"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13021)
    }
}

class ch13IAmVacuumed: StoryPageVoicedKaden {
    
    let imageName = "Ghost-Hunter"
    
    let textName = ["ch13IAmVacuumed"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13022)
    }
}

class ch13ItIsDark: StoryPageVoicedKaden {
    
    let imageName = "Black"
    
    let textName = ["ch13ItIsDark", "ch13TheyTakeMeAway", "ch13DoNotRevealMyRealName", "ch13KatieIsEmbarrassing", "ch13KatieFoolsThem", "ch13LaughingFades"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(14001)
    }
}