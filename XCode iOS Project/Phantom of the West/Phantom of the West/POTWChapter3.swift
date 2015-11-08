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
        case 3001:
            nextPages = [ch3Title(observer: observer)]
        case 3002:
            nextPages = [ch3IAwaken(observer: observer)]
        case 3003:
            nextPages = [ch3SezjaGreetsMe(observer: observer)]
        case 3004:
            nextPages = [ch3SezjaGreetsMePause(observer: observer)]
        case 3005:
            nextPages = [ch3SezjaStartlesMe(observer: observer)]
        case 3006:
            nextPages = [ch3SezjaLeaves(observer: observer)]
        case 3007:
            nextPages = [ch3ICallCaitlyn(observer: observer)]
        case 3008:
            nextPages = [ch3CaitlynComes(observer: observer)]
        case 3009:
            nextPages = [ch3CaitlynAsksMeToDisguiseAsInfant(observer: observer)]
        case 3010:
            nextPages = [ch3IDiguiseAsInfant(observer: observer), ch3IRefuseToDiguiseAsInfant(observer: observer)]
        case 3011:
            nextPages = [ch3CaitlynBringsMeToHotel(observer: observer)]
        case 3012:
            nextPages = [ch3IEnterHotelRoomFromBlanket(observer: observer)]
        case 3013:
            nextPages = [ch3CaitlynChecksOut(observer: observer)]
        case 3014:
            nextPages = [ch3CaitlynTriesToShowReceptionistMe(observer: observer)]
        case 3015:
            nextPages = [ch3CaitlynCannotBreastFeed(observer: observer)]
        case 3016:
            nextPages = [ch3CaitlynEntersArcticon(observer: observer)]
        case 3017:
            nextPages = [ch3ILeaveBlanket(observer: observer)]
        case 3018:
            nextPages = [ch3IWillOweCaitlynAFavor(observer: observer)]
        case 3019:
            nextPages = [ch3IGoToHotel(observer: observer)]
        case 3020:
            nextPages = [ch3IEnterHotelRoomFromCaitlyn(observer: observer)]
        case 3021:
            nextPages = [ch3ICheckOut(observer: observer)]
        case 3022:
            nextPages = [ch3IInsultReceptionist(observer: observer)]
        case 3023:
            nextPages = [ch3IDriveOnHighway(observer: observer)]
        case 3024:
            nextPages = [ch3IEnterArcticon(observer: observer)]
        case 3025:
            nextPages = [ch3IDispossessCaitlyn(observer: observer)]
        case 3026:
            nextPages = [ch3IConjureClothes(observer: observer)]
        case 3027:
            nextPages = [ch3YukioGreetsMe(observer: observer)]
        case 3028:
            nextPages = [ch3IGoHome(observer: observer)]
        case 3029:
            nextPages = [ch3IRelax(observer: observer)]
        case 3030:
            nextPages = [ch3BekShtiiGreetsMe(observer: observer)]
        case 3031:
            nextPages = [ch3BekShtiiLeaves(observer: observer)]
        case 3032:
            nextPages = ch3EndDecision(observer)
        case 3033:
            nextPages = [ch3CaitlynPlaysWithFoxtrot(observer: observer)]
        case 3034:
            nextPages = [ch3IAmAllRight(observer: observer)]
        case 3035:
            nextPages = [ch3CaitlynAsksIfIWasEmbarrassed(observer: observer)]
        case 3036:
            nextPages = [ch3CaitlynWouldBeGoodMother(observer: observer), ch3CaitlynMightBeGoodMother(observer: observer)]
        case 3037:
            nextPages = [ch3CaitlynThanksMe(observer: observer)]
        case 3038:
            nextPages = [ch3CaitlynAdmitsGoodIdea(observer: observer)]
        case 3039:
            nextPages = [ch3CaitlynJustifiesMotherhood(observer: observer)]
        case 3040:
            nextPages = [ch3HowDidCaitlynFeelPossession(observer: observer)]
        case 3041:
            nextPages = [ch3IEnjoyedPossession(observer: observer), ch3PossessionFeltWeird(observer: observer)]
        case 3042:
            nextPages = [ch3CaitlynLikesBeingClose(observer: observer)]
        case 3043:
            nextPages = [ch3CaitlynFeltWeird(observer: observer)]
        case 3044:
            nextPages = [ch3WasCaitlynsQuestionWeird(observer: observer)]
        case 3045:
            nextPages = [ch3ILikeTalkingWithCaitlyn(observer: observer)]
        case 3046:
            nextPages = [ch3YukioWorks(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
    
    func ch3EndDecision(observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages = [StoryPage]()
        if let ef = observer.eventFlags {
            if ef.ch3TalkedWithCaitlyn == .HasNotTalked {
                nextPages.append(ch3IVisitCaitlyn(observer: observer))
            }
            if !ef.ch3TalkedWithYukio {
                nextPages.append(ch3IVisitYukio(observer: observer))
            }
        }
        nextPages.append(ch3ISleep(observer: observer))
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
        observer.goToStoryState(3002)
    }
}

class ch3IAwaken: StoryPageVoicedKaden {
    
    let imageName = "Officer-Awakens"
    
    let textName = ["ch3IAwaken"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3003)
    }
}

class ch3SezjaGreetsMe: StoryPageVoicedKaden {
    
    let imageName = "Officer-Lies-with-Sezja"
    
    let textName = ["ch3SezjaGreetsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3004)
    }
}

class ch3SezjaGreetsMePause: StoryPage {
    
    let imageName = "Officer-Lies-with-Sezja"
    
    let textName = ["ellipsis"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3005)
    }
}

class ch3SezjaStartlesMe: StoryPageVoicedKaden {
    
    let imageName = "Officer-Falls-from-Bed"
    
    let textName = ["ch3SezjaStartlesMe", "ch3SezjaAnswers"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3006)
    }
}

class ch3SezjaLeaves: StoryPageVoicedKaden {
    
    let imageName = "Officer-Leans-over-Bed"
    
    let textName = ["ch3SezjaLeaves", "ch3IHaveToSignOut", "ch3PoliceWillBeSuspicious", "ch3IHaveToReturnToArcticon", "ch3MyWorkIsCutOut"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3007)
    }
}

class ch3ICallCaitlyn: StoryPageVoicedKaden {
    
    let imageName = "Officer-on-Phone"
    
    let textName = ["ch3ICallCaitlyn", "ch3CaitlynDoesNotRecognizeMe", "ch3ITellCaitlynIDrankElixir", "ch3CaitlynBelievesMe", "ch3IAskCaitlynToCome", "ch3CaitlynAgreesToCome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3008)
    }
}

class ch3CaitlynComes: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Drives-to-Officer"
    
    let textName = ["ch3CaitlynComes", "ch3CaitlynNoticesMeAsOfficer", "ch3IAskToPossessCaitlyn", "ch3CaitlynHesitatesPossession", "ch3IJustifyPossession"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3009)
    }
}

class ch3CaitlynAsksMeToDisguiseAsInfant: StoryPageVoicedKaden {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3CaitlynAsksMeToDisguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3010)
    }
}


class ch3IDiguiseAsInfant: StoryPageVoicedKaden {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IDiguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3DroveWithCaitlyn = .DisguisedAsInfant
        }
        observer.goToStoryState(3011)
    }
}

class ch3IRefuseToDiguiseAsInfant: StoryPageVoicedKaden {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IRefuseToDiguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3DroveWithCaitlyn = .PossessedCaitlyn
        }
        observer.goToStoryState(3018)
    }
}

class ch3CaitlynBringsMeToHotel: StoryPageVoicedKaden {
    
    let imageName = "Infant-in-Car"
    
    let textName = ["ch3CaitlynBringsMeToHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3012)
    }
}

class ch3IEnterHotelRoomFromBlanket: StoryPageVoicedKaden {
    
    let imageName = "Infant-Crawls-Under-Door"
    
    let textName = ["ch3IEnterHotelRoomFromBlanket"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3013)
    }
}

class ch3CaitlynChecksOut: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-with-Infant-Talks-to-Receptionist"
    
    let textName = ["ch3CaitlynChecksOut"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3014)
    }
}

class ch3CaitlynTriesToShowReceptionistMe: StoryPageVoicedKaden {
    
    let imageName = "Infant-Shown-to-Receptionist"
    
    let textName = ["ch3CaitlynTriesToShowReceptionistMe", "ch3ReceptionistLikesKatie", "ch3CaitlynLeavesHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3015)
    }
}

class ch3CaitlynCannotBreastFeed: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Drives-on-Highway"
    
    let textName = ["ch3CaitlynCannotBreastFeed", "ch3CaitlynDrivesOnHighway"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3016)
    }
}

class ch3CaitlynEntersArcticon: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Drives-to-Arcticon"
    
    let textName = ["ch3CaitlynEntersArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3017)
    }
}

class ch3ILeaveBlanket: StoryPageVoicedKaden {
    
    let imageName = "Kaden-First-Arrival-to-Arcticon"
    
    let textName = ["ch3ILeaveBlanket"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3026)
    }
}

class ch3IWillOweCaitlynAFavor: StoryPageVoicedKaden {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IWillOweCaitlynAFavor"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3019)
    }
}

class ch3IGoToHotel: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Possessed"
    
    let textName = ["ch3IGoToHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3020)
    }
}

class ch3IEnterHotelRoomFromCaitlyn: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Crawls-Under-Door"
    
    let textName = ["ch3IEnterHotelRoomFromCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3021)
    }
}

class ch3ICheckOut: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Talks-to-Receptionist"
    
    let textName = ["ch3ICheckOut", "ch3IClaimToBeMyWife", "ch3ReceptionistDoubtsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3022)
    }
}

class ch3IInsultReceptionist: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Tosses-Key"
    
    let textName = ["ch3IInsultReceptionist"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3023)
    }
}

class ch3IDriveOnHighway: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Drives-on-Highway"
    
    let textName = ["ch3IDriveOnHighway"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3024)
    }
}

class ch3IEnterArcticon: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Drives-to-Arcticon"
    
    let textName = ["ch3IEnterArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3025)
    }
}

class ch3IDispossessCaitlyn: StoryPageVoicedKaden {
    
    let imageName = "Kaden-First-Arrival-to-Arcticon"
    
    let textName = ["ch3IDispossessCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3026)
    }
}

class ch3IConjureClothes: StoryPageVoicedKaden {
    
    let imageName = "Kaden-First-Arrival-to-Arcticon"
    
    let textName = ["ch3IConjureClothes", "ch3CaitlynDragsMyHand"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3027)
    }
}

class ch3YukioGreetsMe: StoryPageVoicedKaden {
    
    let imageName = "Yukio-Intro"
    
    let textName = ["ch3YukioGreetsMe", "ch3CaitlynExplainsMyGhostliness", "ch3YukioIsAwed", "ch3CaitlynWantsToHelp", "ch3ILeaveCaitlynAndYukio"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3028)
    }
}

class ch3IGoHome: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Tram"
    
    let textName = ["ch3IGoHome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3029)
    }
}

class ch3IRelax: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3IRelax"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3030)
    }
}

class ch3BekShtiiGreetsMe: StoryPageVoicedKaden {
    
    let imageName = "Bek'Shtii-First-Meets-Kaden"
    
    let textName = ["ch3BekShtiiGreetsMe", "ch3IKnowBekShtii", "ch3BekShtiiAsksMeToVisit", "ch3IsItWesternContinentalPark", "ch3BekShtiiAsksMeToStay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3031)
    }
}

class ch3BekShtiiLeaves: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3BekShtiiLeaves"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3032)
    }
}

class ch3IVisitCaitlyn: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3IVisitCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3033)
    }
}

class ch3IVisitYukio: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3IVisitYukio"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3TalkedWithYukio = true
        }
        observer.goToStoryState(3046)
    }
}

class ch3ISleep: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch3ISleep"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(4001)
    }
}

class ch3CaitlynPlaysWithFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Foxtrot-Intro"
    
    let textName = ["ch3CaitlynPlaysWithFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3034)
    }
}

class ch3IAmAllRight: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3IAmAllRight"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var possessedCaitlyn = false
        if let ef = observer.eventFlags {
            possessedCaitlyn = (ef.ch3DroveWithCaitlyn == .PossessedCaitlyn)
        }
        if possessedCaitlyn {
            observer.goToStoryState(3040)
        } else {
            observer.goToStoryState(3035)
        }
    }
}

class ch3CaitlynAsksIfIWasEmbarrassed: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynAsksIfIWasEmbarrassed", "ch3IAdmitEmbarrassment", "ch3CaitlynHugsMe", "ch3CanCaitlynAskPersonally", "ch3IReplyOK", "ch3WouldCaitlynBeGoodMother", "ch3IThink"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3036)
    }
}

class ch3CaitlynWouldBeGoodMother: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynWouldBeGoodMother"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3TalkedWithCaitlyn = .SaidGoodMother
        }
        observer.goToStoryState(3037)
    }
}

class ch3CaitlynMightBeGoodMother: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynMightBeGoodMother"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3TalkedWithCaitlyn = .SaidMaybeGoodMother
        }
        observer.goToStoryState(3038)
    }
}

class ch3CaitlynThanksMe: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynThanksMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3039)
    }
}

class ch3CaitlynAdmitsGoodIdea: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynAdmitsGoodIdea"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3039)
    }
}

class ch3CaitlynJustifiesMotherhood: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynJustifiesMotherhood"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3045)
    }
}

class ch3HowDidCaitlynFeelPossession: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3HowDidCaitlynFeelPossession", "ch3CaitlynFeltLightheaded", "ch3IAscertainCaitlynsUnconciousness", "ch3CaitlynOnlySlept", "ch3IThankCaitlyn", "ch3CaitlynAcceptsThanks", "ch3HowDidIFeelDuringPossession"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3041)
    }
}

class ch3IEnjoyedPossession: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3IEnjoyedPossession"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3TalkedWithCaitlyn = .EnjoyedPossession
        }
        observer.goToStoryState(3042)
    }
}

class ch3PossessionFeltWeird: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3PossessionFeltWeird"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch3TalkedWithCaitlyn = .WeirdedByPossession
        }
        observer.goToStoryState(3043)
    }
}

class ch3CaitlynLikesBeingClose: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynLikesBeingClose"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3044)
    }
}

class ch3CaitlynFeltWeird: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3CaitlynFeltWeird"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3044)
    }
}

class ch3WasCaitlynsQuestionWeird: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3WasCaitlynsQuestionWeird"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3045)
    }
}

class ch3ILikeTalkingWithCaitlyn: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch3ILikeTalkingWithCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3032)
    }
}

class ch3YukioWorks: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Yukio"
    
    let textName = ["ch3YukioWorks", "ch3IsYukioUnimpressed", "ch3YukioLecturesMe", "ch3ITakeCharge"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(3032)
    }
}