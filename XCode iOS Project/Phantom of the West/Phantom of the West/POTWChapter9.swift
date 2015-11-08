//
//  POTWChapter9.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/19.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter9: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 9001:
            nextPages = [ch9Title(observer: observer)]
        case 9002:
            nextPages = [ch9IAwaken(observer: observer)]
        case 9003:
            nextPages = [ch9IWaitForBus(observer: observer)]
        case 9004:
            nextPages = [ch9DidCarleighTalkAboutMathTest(observer: observer)]
        case 9005:
            nextPages = [ch9CarleighScored10(observer: observer)]
        case 9006:
            nextPages = [ch9CarleighScored9(observer: observer)]
        case 9007:
            nextPages = [ch9CarleighScored8(observer: observer)]
        case 9008:
            nextPages = [ch9CarleighScored7(observer: observer)]
        case 9009:
            nextPages = [ch9OhElodieSays(observer: observer)]
        case 9010:
            nextPages = [ch9IExitBus(observer: observer)]
        case 9011:
            nextPages = [ch9GuideAnnounces(observer: observer)]
        case 9012:
            nextPages = [ch9IEnterLodge(observer: observer)]
        case 9013:
            nextPages = [ch9OfficerTalks(observer: observer)]
        case 9014:
            nextPages = [ch9ISeeMySketch(observer: observer)]
        case 9015:
            nextPages = [ch9SarahSignsOut(observer: observer)]
        case 9016:
            nextPages = [ch9WeStartWalk(observer: observer)]
        case 9017:
            nextPages = [ch9WeFindIvy(observer: observer)]
        case 9018:
            nextPages = [ch9WeFindPolecats(observer: observer)]
        case 9019:
            nextPages = [ch9WeFindSnakes(observer: observer)]
        case 9020:
            nextPages = [ch9WeSeeRuins(observer: observer)]
        case 9021:
            nextPages = [ch9IDispossessHewitt(observer: observer)]
        case 9022:
            nextPages = [ch9GuideSeesBlackBear(observer: observer)]
        case 9023:
            nextPages = [ch9IEnterRuins(observer: observer)]
        case 9024:
            nextPages = [ch9BaqerGreetsMe(observer: observer)]
        case 9025:
            nextPages = [ch9VaNalsKissIsRuined(observer: observer)]
        case 9026:
            nextPages = [ch9GodsAreInappropriate(observer: observer)]
        case 9027:
            nextPages = [ch9BekShtiisNewPlan(observer: observer)]
        case 9028:
            nextPages = [ch9BeckShtiiFinishesChant(observer: observer)]
        case 9029:
            nextPages = [ch9ISolidify(observer: observer)]
        case 9030:
            nextPages = [ch9IExtendTentacles(observer: observer)]
        case 9031:
            nextPages = [ch9ILeaveRuins(observer: observer)]
        case 9032:
            nextPages = [ch9IEncounterRanger(observer: observer)]
        case 9033:
            nextPages = [ch9DoNotRunSaysRanger(observer: observer)]
        case 9034:
            nextPages = [ch9IFalselySurrender(observer: observer)]
        case 9035:
            nextPages = [ch9IStealRangersGun(observer: observer)]
        case 9036:
            nextPages = [ch9IReturnGun(observer: observer)]
        case 9037:
            nextPages = [ch9RangerKnowsMeOnTV(observer: observer)]
        case 9038:
            nextPages = [ch9IAmPhantomOfWest(observer: observer)]
        case 9039:
            nextPages = [ch9IFlyAboveContinent(observer: observer)]
        case 9040:
            nextPages = [ch9IEnterArcticon(observer: observer)]
        case 9041:
            nextPages = [ch9IReachMyRoom(observer: observer)]
        case 9042:
            nextPages = [ch9IGoToLounge(observer: observer)]
        case 9043:
            nextPages = [ch9CaitlynAndYukioCome(observer: observer)]
        case 9044:
            nextPages = [ch9IWaitForFoxtrot(observer: observer)]
        case 9045:
            nextPages = [ch9IAlreadyMetFoxtrot(observer: observer)]
        case 9046:
            nextPages = [ch9IDidNotMeetFoxtrot(observer: observer)]
        case 9047:
            nextPages = [ch9FoxtrotToCheerMeUp(observer: observer)]
        case 9048:
            nextPages = [ch9ILeaveFoxtrot(observer: observer), ch9IWillPetFoxtrot(observer: observer)]
        case 9049:
            nextPages = [ch9CaitlynShouldPutFoxtrotBack(observer: observer)]
        case 9050:
            nextPages = [ch9FoxtrotHisses(observer: observer)]
        case 9051:
            nextPages = [ch9FoxtrotAllowsPet(observer: observer)]
        case 9052:
            nextPages = [ch9IRubFoxtrot(observer: observer)]
        case 9053:
            nextPages = [ch9FoxtrotLicksMe(observer: observer)]
        case 9054:
            nextPages = [ch9CaitlynFrownsAtFoxtrot(observer: observer)]
        case 9055:
            nextPages = [ch9IReturnHome(observer: observer)]
        case 9056:
            nextPages = [ch9ISleep(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch9Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch9Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9002)
    }
}

class ch9IAwaken: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-Dresses-Casually"
    
    let textName = ["ch9IAwaken"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9003)
    }
}

class ch9IWaitForBus: StoryPageVoicedKaden {
    
    let imageName = "Bus-Wait"
    
    let textName = ["ch9IWaitForBus", "ch9CarleighLikesHewittSleeping", "ch9ElodieWouldMissHewitt", "ch9IBoardBus"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9004)
    }
}

class ch9DidCarleighTalkAboutMathTest: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-and-Co-on-Bus"
    
    let textName = ["ch9DidCarleighTalkAboutMathTest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 9008
        if let ef = observer.eventFlags {
            let numCorrect = ef.ch5numCorrectMathAnswers
            if numCorrect >= 3 {
                nextState = 9005
            } else if numCorrect == 2 {
                nextState = 9006
            }
            else if numCorrect == 1 {
                nextState = 9007
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch9CarleighScored10: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-and-Co-on-Bus"
    
    let textName = ["ch9CarleighScored10"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9009)
    }
}

class ch9CarleighScored9: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-and-Co-on-Bus"
    
    let textName = ["ch9CarleighScored9"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9009)
    }
}

class ch9CarleighScored8: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-and-Co-on-Bus"
    
    let textName = ["ch9CarleighScored8"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9009)
    }
}

class ch9CarleighScored7: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-and-Co-on-Bus"
    
    let textName = ["ch9CarleighScored7"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9009)
    }
}

class ch9OhElodieSays: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-and-Co-on-Bus"
    
    let textName = ["ch9OhElodieSays", "ch9BusExitsHighway", "ch9BusPassesCheckpoint"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9010)
    }
}

class ch9IExitBus: StoryPageVoicedKaden {
    
    let imageName = "Bus-Outside-Lodge"
    
    let textName = ["ch9IExitBus"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9011)
    }
}

class ch9GuideAnnounces: StoryPageVoicedKaden {
    
    let imageName = "Tour-Guide-Announcement"
    
    let textName = ["ch9GuideAnnounces", "ch9MuchBuildup"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9012)
    }
}

class ch9IEnterLodge: StoryPageVoicedKaden {
    
    let imageName = "TV-Sarah"
    
    let textName = ["ch9IEnterLodge", "ch9SarahStartsInterview"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9013)
    }
}

class ch9OfficerTalks: StoryPageVoicedKaden {
    
    let imageName = "TV-Officer"
    
    let textName = ["ch9OfficerTalks"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9014)
    }
}

class ch9ISeeMySketch: StoryPageVoicedKaden {
    
    let imageName = "TV-Phantom-Sketch"
    
    let textName = ["ch9ISeeMySketch"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9015)
    }
}

class ch9SarahSignsOut: StoryPageVoicedKaden {
    
    let imageName = "TV-Sarah-at-Desk"
    
    let textName = ["ch9SarahSignsOut", "ch9PublicKnowsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9016)
    }
}

class ch9WeStartWalk: StoryPageVoicedKaden {
    
    let imageName = "Nature-Walk"
    
    let textName = ["ch9WeStartWalk"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9017)
    }
}

class ch9WeFindIvy: StoryPageVoicedKaden {
    
    let imageName = "Poison-Ivy"
    
    let textName = ["ch9WeFindIvy"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9018)
    }
}

class ch9WeFindPolecats: StoryPageVoicedKaden {
    
    let imageName = "Polecat"
    
    let textName = ["ch9WeFindPolecats"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9019)
    }
}

class ch9WeFindSnakes: StoryPageVoicedKaden {
    
    let imageName = "Snake"
    
    let textName = ["ch9WeFindSnakes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9020)
    }
}

class ch9WeSeeRuins: StoryPageVoicedKaden {
    
    let imageName = "Ancient-City-Distant"
    
    let textName = ["ch9WeSeeRuins", "ch9ShouldIRun"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9021)
    }
}

class ch9IDispossessHewitt: StoryPageVoicedKaden {
    
    let imageName = "Hewitt-Dispossessed"
    
    let textName = ["ch9IDispossessHewitt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9022)
    }
}

class ch9GuideSeesBlackBear: StoryPageVoicedKaden {
    
    let imageName = "Ranger-Sees-Black-Bear"
    
    let textName = ["ch9GuideSeesBlackBear"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9023)
    }
}

class ch9IEnterRuins: StoryPageVoicedKaden {
    
    let imageName = "Kaden-to-Pyramid-Top"
    
    let textName = ["ch9IEnterRuins"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9024)
    }
}

class ch9BaqerGreetsMe: StoryPageVoicedKaden {
    
    let imageName = "Pyramid-Meeting"
    
    let textName = ["ch9BaqerGreetsMe", "ch9ICanRedeem", "ch9BaqerCannotTrustMe", "ch9BekShtiiAndBaqerYell", "ch9GodsAreFlawed"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 9026
        if let ef = observer.eventFlags {
            if ef.ch7KissedVaNal == .Kissed {
                nextState = 9025
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch9VaNalsKissIsRuined: StoryPageVoicedKaden {
    
    let imageName = "Pyramid-Meeting"
    
    let textName = ["ch9VaNalsKissIsRuined"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9027)
    }
}

class ch9GodsAreInappropriate: StoryPageVoicedKaden {
    
    let imageName = "Pyramid-Meeting"
    
    let textName = ["ch9GodsAreInappropriate"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9027)
    }
}

class ch9BekShtiisNewPlan: StoryPageVoicedKaden {
    
    let imageName = "Pyramid-Meeting"
    
    let textName = ["ch9BekShtiisNewPlan", "ch9YesIAdmit", "ch9HowDidBekShtiiKnow", "ch9BekShtiiWillEmpower", "ch9BekShtiiChants"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9028)
    }
}

class ch9BeckShtiiFinishesChant: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Ill-with-Bek'Shtii"
    
    let textName = ["ch9BeckShtiiFinishesChant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9029)
    }
}

class ch9ISolidify: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Feels-Old-Face"
    
    let textName = ["ch9ISolidify", "ch9BekShtiiExplainsAbilities"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9030)
    }
}

class ch9IExtendTentacles: StoryPageVoicedKaden {
    
    let imageName = "Kaden-First-Tentacles"
    
    let textName = ["ch9IExtendTentacles", "ch9BekShtiiThoughtAhead", "ch9BekShtiiDismissesMe", "ch9SezjaDismissesMe", "ch9VaNalDissmissesMe", "ch9BaqerDissmissesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9031)
    }
}

class ch9ILeaveRuins: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Leaves-Ancient-City"
    
    let textName = ["ch9ILeaveRuins"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9032)
    }
}

class ch9IEncounterRanger: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Encounters-Ranger"
    
    let textName = ["ch9IEncounterRanger", "ch9IAmLeaving", "ch9HowDidIEnterPark", "ch9ISneakedOntoBus", "ch9RangerMustDetainMe", "ch9IRemember"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 9034
        if let ef = observer.eventFlags {
            switch ef.ch5AnsweredCoach {
            case .Run:
                nextState = 9033
            case .Disarm:
                nextState = 9035
            default:
                break
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch9DoNotRunSaysRanger: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Encounters-Ranger"
    
    let textName = ["ch9DoNotRunSaysRanger"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9035)
    }
}

class ch9IFalselySurrender: StoryPageVoicedKaden {
    
    let imageName = "Ranger-Handcuffs-Kaden"
    
    let textName = ["ch9IFalselySurrender"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9035)
    }
}

class ch9IStealRangersGun: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Tentacles-Ranger"
    
    let textName = ["ch9IStealRangersGun", "ch9ICrushMagazine"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9036)
    }
}

class ch9IReturnGun: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Returns-Rifle"
    
    let textName = ["ch9IReturnGun", "ch9WhoAmI"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9037)
    }
}

class ch9RangerKnowsMeOnTV: StoryPageVoicedKaden {
    
    let imageName = "I-am-the-Phantom-of-the-West"
    
    let textName = ["ch9RangerKnowsMeOnTV", "ch9IWantToBeLeft"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9038)
    }
}

class ch9IAmPhantomOfWest: StoryPageVoicedKaden {
    
    let imageName = "I-am-the-Phantom-of-the-West"
    
    let textName = ["ch9IAmPhantomOfWest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9039)
    }
}

class ch9IFlyAboveContinent: StoryPageVoicedKaden {
    
    let imageName = "Phantom-above-Continent"
    
    let textName = ["ch9IFlyAboveContinent", "ch9IOverlookNewFerando", "ch9IOverlookPark", "ch9IOverlookArcticon", "ch9IOverlookHighway"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9040)
    }
}

class ch9IEnterArcticon: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Flies-into-Vent"
    
    let textName = ["ch9IEnterArcticon"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9041)
    }
}

class ch9IReachMyRoom: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Bed"
    
    let textName = ["ch9IReachMyRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9042)
    }
}

class ch9IGoToLounge: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Lab-Alone"
    
    let textName = ["ch9IGoToLounge"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9043)
    }
}

class ch9CaitlynAndYukioCome: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn-and-Yukio"
    
    let textName = ["ch9CaitlynAndYukioCome", "ch9ThereIAm", "ch9CaitlynAndYukioWorried", "ch9YukioSawMeOnTV", "ch9DoesCaitlynRemember", "ch9CaitlynRemembersOfficer", "ch9IMayReappearOnTV", "ch9ISummarizeToYukio", "ch9YukioSimplifiesMySummary", "ch9YeahBasically"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9044)
    }
}

class ch9IWaitForFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Caitlyn"
    
    let textName = ["ch9IWaitForFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 9046
        if let ef = observer.eventFlags {
            if ef.ch3TalkedWithCaitlyn != .HasNotTalked {
                nextState = 9045
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch9IAlreadyMetFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9IAlreadyMetFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9047)
    }
}

class ch9IDidNotMeetFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9IDidNotMeetFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9047)
    }
}

class ch9FoxtrotToCheerMeUp: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9FoxtrotToCheerMeUp", "ch9FoxtrotStares"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9048)
    }
}

class ch9ILeaveFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9ILeaveFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch9FoxtrotReacted = .NotPetted
        }
        observer.goToStoryState(9049)
    }
}

class ch9IWillPetFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9IWillPetFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 9051
        if let ef = observer.eventFlags {
            if ef.ch5SparredWithCheerleader == .Kicked {
                nextState = 9050
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch9CaitlynShouldPutFoxtrotBack: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9CaitlynShouldPutFoxtrotBack"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9054)
    }
}

class ch9FoxtrotHisses: StoryPageVoicedKaden {
    
    let imageName = "Foxtrot-Hiss"
    
    let textName = ["ch9FoxtrotHisses"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
        AchievementManager.unlockAchievements([.FoxtrotHissed])
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch9FoxtrotReacted = .Hissed
        }
        observer.goToStoryState(9054)
    }
}

class ch9FoxtrotAllowsPet: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9FoxtrotAllowsPet"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch9FoxtrotReacted = .AcceptedPet
        }
        observer.goToStoryState(9052)
    }
}

class ch9IRubFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Foxtrot-Petted"
    
    let textName = ["ch9IRubFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9053)
    }
}

class ch9FoxtrotLicksMe: StoryPageVoicedKaden {
    
    let imageName = "Foxtrot-Licks-Kaden"
    
    let textName = ["ch9FoxtrotLicksMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
        AchievementManager.unlockAchievements([.PettedFoxtrot])
    }
    
    override func continueStory() {
        observer.goToStoryState(9055)
    }
}

class ch9CaitlynFrownsAtFoxtrot: StoryPageVoicedKaden {
    
    let imageName = "Caitlyn-Brings-Foxtrot"
    
    let textName = ["ch9CaitlynFrownsAtFoxtrot"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9055)
    }
}

class ch9IReturnHome: StoryPageVoicedKaden {
    
    let imageName = "Kaden-on-Tram"
    
    let textName = ["ch9IReturnHome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9056)
    }
}

class ch9ISleep: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Sleeps"
    
    let textName = ["ch9ISleep"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(10001)
    }
}