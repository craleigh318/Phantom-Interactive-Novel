//
//  POTWChapter3.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/14.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter3: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 301:
            nextPages = [ch3Title(observer: observer)]
        case 302:
            nextPages = [ch3IAwaken(observer: observer)]
        case 303:
            nextPages = [ch3SezjaGreetsMe(observer: observer)]
        case 304:
            nextPages = [ch3SezjaGreetsMePause(observer: observer)]
        case 305:
            nextPages = [ch3SezjaStartlesMe(observer: observer)]
        case 306:
            nextPages = [ch3SezjaLeaves(observer: observer)]
        case 307:
            nextPages = [ch3ICallCaitlyn(observer: observer)]
        case 308:
            nextPages = [ch3CaitlynComes(observer: observer)]
        case 309:
            nextPages = [ch3CaitlynAsksMeToDisguiseAsInfant(observer: observer)]
        case 310:
            nextPages = [ch3IDiguiseAsInfant(observer: observer), ch3IRefuseToDiguiseAsInfant(observer: observer)]
        case 311:
            nextPages = [ch3CaitlynBringsMeToHotel(observer: observer)]
        case 312:
            nextPages = [ch3IEnterHotelRoomFromBlanket(observer: observer)]
        case 313:
            nextPages = [ch3CaitlynChecksOut(observer: observer)]
        case 314:
            nextPages = [ch3CaitlynTriesToShowReceptionistMe(observer: observer)]
        case 315:
            nextPages = [ch3CaitlynCannotBreastFeed(observer: observer)]
        case 316:
            nextPages = [ch3CaitlynEntersArcticon(observer: observer)]
        case 317:
            nextPages = [ch3ILeaveBlanket(observer: observer)]
        case 318:
            nextPages = [ch3IWillOweCaitlynAFavor(observer: observer)]
        case 319:
            nextPages = [ch3IGoToHotel(observer: observer)]
        case 320:
            nextPages = [ch3IEnterHotelRoomFromCaitlyn(observer: observer)]
        case 321:
            nextPages = [ch3ICheckOut(observer: observer)]
        case 322:
            nextPages = [ch3IInsultReceptionist(observer: observer)]
        case 323:
            nextPages = [ch3IDriveOnHighway(observer: observer)]
        case 324:
            nextPages = [ch3IEnterArcticon(observer: observer)]
        case 325:
            nextPages = [ch3IDispossessCaitlyn(observer: observer)]
        case 326:
            nextPages = [ch3IConjureClothes(observer: observer)]
        case 327:
            nextPages = [ch3YukioGreetsMe(observer: observer)]
        case 328:
            nextPages = [ch3IGoHome(observer: observer)]
        case 329:
            nextPages = [ch3IRelax(observer: observer)]
        case 330:
            nextPages = [ch3BekShtiiGreetsMe(observer: observer)]
        case 331:
            nextPages = [ch3BekShtiiLeaves(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch3Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch3Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(302)
    }
}

class ch3IAwaken: StoryPage {
    
    let imageName = "Officer-Awakens"
    
    let textName = ["ch3IAwaken"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(303)
    }
}

class ch3SezjaGreetsMe: StoryPage {
    
    let imageName = "Officer-Lies-with-Sezja"
    
    let textName = ["ch3SezjaGreetsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(304)
    }
}

class ch3SezjaGreetsMePause: StoryPage {
    
    let imageName = "Officer-Lies-with-Sezja"
    
    let textName = ["ellipsis"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(305)
    }
}

class ch3SezjaStartlesMe: StoryPage {
    
    let imageName = "Officer-Falls-from-Bed"
    
    let textName = ["ch3SezjaStartlesMe", "ch3SezjaAnswers"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(306)
    }
}

class ch3SezjaLeaves: StoryPage {
    
    let imageName = "Officer-Leans-over-Bed"
    
    let textName = ["ch3SezjaLeaves", "ch3IHaveToSignOut", "ch3PoliceWillBeSuspicious", "ch3IHaveToReturnToArcticon", "ch3MyWorkIsCutOut"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(307)
    }
}

class ch3ICallCaitlyn: StoryPage {
    
    let imageName = "Officer-on-Phone"
    
    let textName = ["ch3ICallCaitlyn", "ch3CaitlynDoesNotRecognizeMe", "ch3ITellCaitlynIDrankElixir", "ch3CaitlynBelievesMe", "ch3IAskCaitlynToCome", "ch3CaitlynAgreesToCome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(308)
    }
}

class ch3CaitlynComes: StoryPage {
    
    let imageName = "Caitlyn-Drives-to-Officer"
    
    let textName = ["ch3CaitlynComes", "ch3CaitlynNoticesMeAsOfficer", "ch3IAskToPossessCaitlyn", "ch3CaitlynHesitatesPossession", "ch3IJustifyPossession"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(309)
    }
}

class ch3CaitlynAsksMeToDisguiseAsInfant: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3CaitlynAsksMeToDisguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(310)
    }
}


class ch3IDiguiseAsInfant: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IDiguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3DroveWithCaitlyn = .DisguisedAsInfant
        }
        observer.goToStoryState(311)
    }
}

class ch3IRefuseToDiguiseAsInfant: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IRefuseToDiguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3DroveWithCaitlyn = .PossessedCaitlyn
        }
        observer.goToStoryState(318)
    }
}

class ch3CaitlynBringsMeToHotel: StoryPage {
    
    let imageName = "Infant-in-Car"
    
    let textName = ["ch3CaitlynBringsMeToHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(312)
    }
}

class ch3IEnterHotelRoomFromBlanket: StoryPage {
    
    let imageName = "Infant-Crawls-Under-Door"
    
    let textName = ["ch3IEnterHotelRoomFromBlanket"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(313)
    }
}

class ch3CaitlynChecksOut: StoryPage {
    
    let imageName = "Caitlyn-with-Infant-Talks-to-Receptionist"
    
    let textName = ["ch3CaitlynChecksOut"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(314)
    }
}

class ch3CaitlynTriesToShowReceptionistMe: StoryPage {
    
    let imageName = "Infant-Shown-to-Receptionist"
    
    let textName = ["ch3CaitlynTriesToShowReceptionistMe", "ch3ReceptionistLikesKatie", "ch3CaitlynLeavesHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(315)
    }
}

class ch3CaitlynCannotBreastFeed: StoryPage {
    
    let imageName = "Caitlyn-Drives-on-Highway"
    
    let textName = ["ch3CaitlynCannotBreastFeed", "ch3CaitlynDrivesOnHighway"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(316)
    }
}

class ch3CaitlynEntersArcticon: StoryPage {
    
    let imageName = "Caitlyn-Drives-to-Arcticon"
    
    let textName = ["ch3CaitlynEntersArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(317)
    }
}

class ch3ILeaveBlanket: StoryPage {
    
    let imageName = "Kaden-First-Arrival-to-Arcticon"
    
    let textName = ["ch3ILeaveBlanket"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(326)
    }
}

class ch3IWillOweCaitlynAFavor: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IWillOweCaitlynAFavor"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(319)
    }
}

class ch3IGoToHotel: StoryPage {
    
    let imageName = "Caitlyn-Possessed"
    
    let textName = ["ch3IGoToHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(320)
    }
}

class ch3IEnterHotelRoomFromCaitlyn: StoryPage {
    
    let imageName = "Caitlyn-Crawls-Under-Door"
    
    let textName = ["ch3IEnterHotelRoomFromCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(321)
    }
}

class ch3ICheckOut: StoryPage {
    
    let imageName = "Caitlyn-Talks-to-Receptionist"
    
    let textName = ["ch3ICheckOut", "ch3IClaimToBeMyWife", "ch3ReceptionistDoubtsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(322)
    }
}

class ch3IInsultReceptionist: StoryPage {
    
    let imageName = "Caitlyn-Tosses-Key"
    
    let textName = ["ch3IInsultReceptionist"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(323)
    }
}

class ch3IDriveOnHighway: StoryPage {
    
    let imageName = "Caitlyn-Drives-on-Highway"
    
    let textName = ["ch3IDriveOnHighway"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(324)
    }
}

class ch3IEnterArcticon: StoryPage {
    
    let imageName = "Caitlyn-Drives-to-Arcticon"
    
    let textName = ["ch3IEnterArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(325)
    }
}

class ch3IDispossessCaitlyn: StoryPage {
    
    let imageName = "Kaden-First-Arrival-to-Arcticon"
    
    let textName = ["ch3IDispossessCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(326)
    }
}

class ch3IConjureClothes: StoryPage {
    
    let imageName = "Kaden-First-Arrival-to-Arcticon"
    
    let textName = ["ch3IConjureClothes", "ch3CaitlynDragsMyHand"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(327)
    }
}

class ch3YukioGreetsMe: StoryPage {
    
    let imageName = "Yukio-Intro"
    
    let textName = ["ch3YukioGreetsMe", "ch3CaitlynExplainsMyGhostliness", "ch3YukioIsAwed", "ch3CaitlynWantsToHelp", "ch3ILeaveCaitlynAndYukio"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(328)
    }
}

class ch3IGoHome: StoryPage {
    
    let imageName = "Kaden-on-Tram"
    
    let textName = ["ch3IGoHome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(329)
    }
}

class ch3IRelax: StoryPage {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3IRelax"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(330)
    }
}

class ch3BekShtiiGreetsMe: StoryPage {
    
    let imageName = "Bek'Shtii-First-Meets-Kaden"
    
    let textName = ["ch3BekShtiiGreetsMe", "ch3IKnowBekShtii", "ch3BekShtiiAsksMeToVisit", "ch3IsItWesternContinentalPark", "ch3BekShtiiAsksMeToStay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(331)
    }
}

class ch3BekShtiiLeaves: StoryPage {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3BekShtiiLeaves"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(332)
    }
}

class ch3IVisitCaitlyn: StoryPage {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3IVisitCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(333)
    }
}

class ch3IVisitYukio: StoryPage {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3IVisitYukio"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(333)
    }
}

class ch3ISleep: StoryPage {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3ISleep"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(333)
    }
}