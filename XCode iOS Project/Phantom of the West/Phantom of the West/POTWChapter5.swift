//
//  POTWChapter5.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/16.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter5: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 5001:
            nextPages = [ch5Title(observer: observer)]
        case 5002:
            nextPages = [ch5BekShtiiWakesMe(observer: observer)]
        case 5003:
            nextPages = [ch5IEnterVent(observer: observer)]
        case 5004:
            nextPages = [ch5IExitVent(observer: observer)]
        case 5005:
            nextPages = [ch5IReachSchool(observer: observer)]
        case 5006:
            nextPages = [ch5IPossessElodie(observer: observer)]
        case 5007:
            nextPages = [ch5CarleighWakesMe(observer: observer)]
        case 5008:
            nextPages = [ch5ISearchElodiesMemory(observer: observer)]
        case 5009:
            nextPages = [ch5IDressSlowly(observer: observer)]
        case 5010:
            nextPages = [ch5IDressElodie(observer: observer)]
        case 5011:
            nextPages = [ch5IEnterLiteratureClass(observer: observer)]
        case 5012:
            nextPages = [ch5IReadPaulsStory(observer: observer)]
        case 5013:
            nextPages = [ch5YouCannotLowerYourself(observer: observer), ch5YouNeedToStayConfident(observer: observer), ch5YouAvoidStupidity(observer: observer)]
        case 5014:
            nextPages = [ch5CannotAssociateWithLowlyPeople(observer: observer)]
        case 5015:
            nextPages = [ch5CarleighWasTeased(observer: observer)]
        case 5016:
            nextPages = [ch5IAmPragmatic(observer: observer)]
        case 5017:
            nextPages = [ch5WasActivityTerrible(observer: observer)]
        case 5018:
            nextPages = [ch5IPassByCheerleader(observer: observer)]
        case 5019:
            nextPages = [ch5CheerleaderTripsMe(observer: observer)]
        case 5020:
            nextPages = [ch5HewittConsolesMe(observer: observer)]
        case 5021:
            nextPages = [ch5ISeeCarleighsTextbook(observer: observer)]
        case 5022:
            nextPages = [ch5IPossessCarleigh(observer: observer)]
        case 5023:
            nextPages = [ch5IExamineCarleigh(observer: observer)]
        case 5024:
            nextPages = [ch5ILeaveLibrary(observer: observer)]
        case 5025:
            nextPages = [ch5IStartMathTest(observer: observer)]
        case 5026:
            nextPages = [ch5MathQuestion1(observer: observer)]
        case 5027:
            nextPages = [ch5MathQuestion1CorrectAnswer(observer: observer), ch5MathQuestion1IncorrectAnswer(observer: observer)]
        case 5028:
            nextPages = [ch5MathQuestion4(observer: observer)]
        case 5029:
            nextPages = [ch5MathQuestion4IncorrectAnswer(observer: observer), ch5MathQuestion4CorrectAnswer(observer: observer)]
        case 5030:
            nextPages = [ch5MathQuestion9(observer: observer)]
        case 5031:
            nextPages = [ch5MathQuestion9IncorrectAnswer(observer: observer), ch5MathQuestion9CorrectAnswer(observer: observer)]
        case 5032:
            nextPages = [ch5MathClassEnds(observer: observer)]
        case 5033:
            nextPages = [ch5IReencounterCheerleader(observer: observer)]
        case 5034:
            nextPages = [ch5IEnterLockerRoom(observer: observer)]
        case 5035:
            nextPages = [ch5IPossessAnanya(observer: observer)]
        case 5036:
            nextPages = [ch5IDressAnanya(observer: observer)]
        case 5037:
            nextPages = [ch5ITieAnanyasHair(observer: observer)]
        case 5038:
            nextPages = [ch5IEnterPEClass(observer: observer)]
        case 5039:
            nextPages = [ch5IRaiseHand(observer: observer)]
        case 5040:
            nextPages = [ch5IWouldSubmit(observer: observer), ch5IWouldRun(observer: observer), ch5IWouldDisarm(observer: observer)]
        case 5041:
            nextPages = [ch5CoachRespondsToSubmission(observer: observer)]
        case 5042:
            nextPages = [ch5CoachRespondsToRunning(observer: observer)]
        case 5043:
            nextPages = [ch5CoachRespondsToDisarming(observer: observer)]
        case 5044:
            nextPages = [ch5IDisagreeWithCoach(observer: observer)]
        case 5045:
            nextPages = [ch5CoachStartsSpar(observer: observer)]
        case 5046:
            nextPages = [ch5IPartnerWithCheerleader(observer: observer)]
        case 5047:
            nextPages = [ch5IPinCheerleader(observer: observer), ch5IKickCheerleader(observer: observer)]
        case 5048:
            nextPages = [ch5CoachCheersMe(observer: observer)]
        case 5049:
            nextPages = [ch5CheerleaderFalls(observer: observer)]
        case 5050:
            nextPages = [ch5PEClassEnds(observer: observer)]
        case 5051:
            nextPages = [ch5IHideInTheCloset(observer: observer)]
        case 5052:
            nextPages = [ch5IRepossessElodie(observer: observer)]
        case 5053:
            nextPages = [ch5IRelax(observer: observer)]
        case 5054:
            nextPages = [ch5ICallCaitlyn(observer: observer)]
        case 5055:
            nextPages = [ch5IGreetCaitlyn(observer: observer)]
        case 5056:
            nextPages = [ch5YukioIsWrong(observer: observer)]
        case 5057:
            nextPages = [ch5CarleighReturns(observer: observer)]
        case 5058:
            nextPages = [ch5HewittCallsMe(observer: observer)]
        case 5059:
            nextPages = [ch5ISleep(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch5Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch5Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5002)
    }
}

class ch5BekShtiiWakesMe: StoryPage {
    
    let imageName = "Bek'Shtii-First-Meets-Kaden"
    
    let textName = ["ch5BekShtiiWakesMe", "ch5PlanIsRoundabout", "ch5RangersCannotCaptureMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5003)
    }
}

class ch5IEnterVent: StoryPage {
    
    let imageName = "Bek'Shtii-Points-at-Vent"
    
    let textName = ["ch5IEnterVent"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5004)
    }
}

class ch5IExitVent: StoryPage {
    
    let imageName = "Kaden-Flies-out-of-Vent"
    
    let textName = ["ch5IExitVent"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5005)
    }
}

class ch5IReachSchool: StoryPage {
    
    let imageName = "St-Josephine-at-Dawn"
    
    let textName = ["ch5IReachSchool"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5006)
    }
}

class ch5IPossessElodie: StoryPage {
    
    let imageName = "Two-Girls-Bedroom-Dark"
    
    let textName = ["ch5IPossessElodie"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5007)
    }
}

class ch5CarleighWakesMe: StoryPage {
    
    let imageName = "Awaken-as-Elodie"
    
    let textName = ["ch5CarleighWakesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5008)
    }
}

class ch5ISearchElodiesMemory: StoryPage {
    
    let imageName = "Elodie-Pajamas"
    
    let textName = ["ch5ISearchElodiesMemory"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5009)
    }
}

class ch5IDressSlowly: StoryPage {
    
    let imageName = "Elodie-and-Carleigh-Pajamas"
    
    let textName = ["ch5IDressSlowly", "ch5INodAtCarleigh"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5010)
    }
}

class ch5IDressElodie: StoryPage {
    
    let imageName = "Elodie-Uniform"
    
    let textName = ["ch5IDressElodie"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5011)
    }
}

class ch5IEnterLiteratureClass: StoryPage {
    
    let imageName = "Elodie-at-Desk"
    
    let textName = ["ch5IEnterLiteratureClass"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5012)
    }
}

class ch5IReadPaulsStory: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5IReadPaulsStory", "ch5WhyDidPaulWantToFitIn", "ch5BadWriting", "ch5PutWhatTeacherWants", "ch5PaulHadNothingUnique", "ch5SureCarleighWrites", "ch5WasPaulJustified", "ch5WhyBeYourself", "ch5SureISay"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5013)
    }
}

class ch5YouCannotLowerYourself: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5YouCannotLowerYourself"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredLiteratureStory = .PlayToStrengths
        }
        observer.goToStoryState(5014)
    }
}

class ch5YouNeedToStayConfident: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5YouNeedToStayConfident"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredLiteratureStory = .StayConfident
        }
        observer.goToStoryState(5015)
    }
}

class ch5YouAvoidStupidity: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5YouAvoidStupidity"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredLiteratureStory = .AvoidStupidity
        }
        observer.goToStoryState(5016)
    }
}

class ch5CannotAssociateWithLowlyPeople: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5CannotAssociateWithLowlyPeople"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5017)
    }
}

class ch5CarleighWasTeased: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5CarleighWasTeased"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5017)
    }
}

class ch5IAmPragmatic: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5IAmPragmatic"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5017)
    }
}

class ch5WasActivityTerrible: StoryPage {
    
    let imageName = "Literature-Discussion"
    
    let textName = ["ch5WasActivityTerrible", "ch5WriterThinksKidsAreDumb"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5018)
    }
}

class ch5IPassByCheerleader: StoryPage {
    
    let imageName = "Elodie-Passes-Cheerleader"
    
    let textName = ["ch5IPassByCheerleader"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5019)
    }
}

class ch5CheerleaderTripsMe: StoryPage {
    
    let imageName = "Elodie-Trips"
    
    let textName = ["ch5CheerleaderTripsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5020)
    }
}

class ch5HewittConsolesMe: StoryPage {
    
    let imageName = "Elodie-First-Lunch"
    
    let textName = ["ch5HewittConsolesMe", "ch5CheerleaderIsJealous", "ch5CanIStudyWithCarleigh", "ch5IEnterLibrary"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5021)
    }
}

class ch5ISeeCarleighsTextbook: StoryPage {
    
    let imageName = "Carleigh-Textbook"
    
    let textName = ["ch5ISeeCarleighsTextbook", "ch5IPrepareToPossessCarleigh"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5022)
    }
}

class ch5IPossessCarleigh: StoryPage {
    
    let imageName = "Carleigh-Possessed"
    
    let textName = ["ch5IPossessCarleigh"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5023)
    }
}

class ch5IExamineCarleigh: StoryPage {
    
    let imageName = "Carleigh-Hands"
    
    let textName = ["ch5IExamineCarleigh"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5024)
    }
}

class ch5ILeaveLibrary: StoryPage {
    
    let imageName = "Elodie-Leans-on-Carleigh-Shoulder"
    
    let textName = ["ch5ILeaveLibrary", "ch5WhyIsElodieHere", "ch5ElodieIsExhausted", "ch5ElodieIsDizzy", "ch5IEnterMathClass"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5025)
    }
}

class ch5IStartMathTest: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5IStartMathTest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5026)
    }
}

class ch5MathQuestion1: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion1"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5027)
    }
}

class ch5MathQuestion1CorrectAnswer: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion1CorrectAnswer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredMathQuestion1 = .Correct
        }
        observer.goToStoryState(5028)
    }
}

class ch5MathQuestion1IncorrectAnswer: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion1IncorrectAnswer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredMathQuestion1 = .Incorrect
        }
        observer.goToStoryState(5028)
    }
}

class ch5MathQuestion4: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion4"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5029)
    }
}

class ch5MathQuestion4IncorrectAnswer: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion4IncorrectAnswer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredMathQuestion4 = .Incorrect
        }
        observer.goToStoryState(5030)
    }
}

class ch5MathQuestion4CorrectAnswer: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion4CorrectAnswer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredMathQuestion4 = .Correct
        }
        observer.goToStoryState(5030)
    }
}

class ch5MathQuestion9: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion9"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5031)
    }
}

class ch5MathQuestion9IncorrectAnswer: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion9IncorrectAnswer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredMathQuestion9 = .Incorrect
        }
        observer.goToStoryState(5032)
    }
}

class ch5MathQuestion9CorrectAnswer: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathQuestion9CorrectAnswer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredMathQuestion9 = .Correct
        }
        observer.goToStoryState(5032)
    }
}

class ch5MathClassEnds: StoryPage {
    
    let imageName = "Carleigh-at-Desk"
    
    let textName = ["ch5MathClassEnds"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5033)
    }
}

class ch5IReencounterCheerleader: StoryPage {
    
    let imageName = "Carleigh-Passes-Cheerleader"
    
    let textName = ["ch5IReencounterCheerleader"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5034)
    }
}

class ch5IEnterLockerRoom: StoryPage {
    
    let imageName = "Ananya-Intro"
    
    let textName = ["ch5IEnterLockerRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5035)
    }
}

class ch5IPossessAnanya: StoryPage {
    
    let imageName = "Ananya-Possessed"
    
    let textName = ["ch5IPossessAnanya"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5036)
    }
}

class ch5IDressAnanya: StoryPage {
    
    let imageName = "Ananya-Hands"
    
    let textName = ["ch5IDressAnanya"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5037)
    }
}

class ch5ITieAnanyasHair: StoryPage {
    
    let imageName = "Ananya-Ties-Hair"
    
    let textName = ["ch5ITieAnanyasHair"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5038)
    }
}

class ch5IEnterPEClass: StoryPage {
    
    let imageName = "Ananya-Gym-Attendance"
    
    let textName = ["ch5IEnterPEClass", "ch5CoachLectures"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5039)
    }
}

class ch5IRaiseHand: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5IRaiseHand"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5040)
    }
}

class ch5IWouldSubmit: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5IWouldSubmit"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredCoach = .Submit
        }
        observer.goToStoryState(5041)
    }
}

class ch5IWouldRun: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5IWouldRun"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredCoach = .Run
        }
        observer.goToStoryState(5042)
    }
}

class ch5IWouldDisarm: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5IWouldDisarm"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5AnsweredCoach = .Disarm
        }
        observer.goToStoryState(5043)
    }
}

class ch5CoachRespondsToSubmission: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5CoachRespondsToSubmission"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5045)
    }
}

class ch5CoachRespondsToRunning: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5CoachRespondsToRunning"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5044)
    }
}

class ch5CoachRespondsToDisarming: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5CoachRespondsToDisarming"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5044)
    }
}

class ch5IDisagreeWithCoach: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5IDisagreeWithCoach"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5045)
    }
}

class ch5CoachStartsSpar: StoryPage {
    
    let imageName = "Ananya-Raises-Hand"
    
    let textName = ["ch5CoachStartsSpar"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5046)
    }
}

class ch5IPartnerWithCheerleader: StoryPage {
    
    let imageName = "Ananya-Spar"
    
    let textName = ["ch5IPartnerWithCheerleader", "ch5CheerleaderAndISpar"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5047)
    }
}

class ch5IPinCheerleader: StoryPage {
    
    let imageName = "Ananya-Spar"
    
    let textName = ["ch5IPinCheerleader"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5SparredWithCheerleader = .Pinned
        }
        observer.goToStoryState(5048)
    }
}

class ch5IKickCheerleader: StoryPage {
    
    let imageName = "Ananya-Spar"
    
    let textName = ["ch5IKickCheerleader"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch5SparredWithCheerleader = .Kicked
        }
        observer.goToStoryState(5049)
    }
}

class ch5CoachCheersMe: StoryPage {
    
    let imageName = "Ananya-Pins-Cheerleader"
    
    let textName = ["ch5CoachCheersMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5050)
    }
}

class ch5CheerleaderFalls: StoryPage {
    
    let imageName = "Ananya-Kicks-Cheerleader"
    
    let textName = ["ch5CheerleaderFalls", "ch5IBringCoachToCheerleader", "ch5CoachAsksWhatHappened", "ch5CheerleaderIsBruised", "ch5IApologizeToCheerleader", "ch5CoachTellsMeToBeCareful", "ch5INodAtCoach"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5050)
    }
}


class ch5PEClassEnds: StoryPage {
    
    let imageName = "Dorms-First-Afternoon"
    
    let textName = ["ch5PEClassEnds", "ch5IDispossessAnanya"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5051)
    }
}

class ch5IHideInTheCloset: StoryPage {
    
    let imageName = "Phantom-in-Closet"
    
    let textName = ["ch5IHideInTheCloset"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5052)
    }
}

class ch5IRepossessElodie: StoryPage {
    
    let imageName = "Resting-Elodie-Possessed"
    
    let textName = ["ch5IRepossessElodie"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5053)
    }
}

class ch5IRelax: StoryPage {
    
    let imageName = "Resting-Elodie"
    
    let textName = ["ch5IRelax"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5054)
    }
}

class ch5ICallCaitlyn: StoryPage {
    
    let imageName = "Resting-Elodie"
    
    let textName = ["ch5ICallCaitlyn"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5055)
    }
}

class ch5IGreetCaitlyn: StoryPage {
    
    let imageName = "Resting-Elodie-on-Phone"
    
    let textName = ["ch5IGreetCaitlyn", "ch5AmIOK", "ch5ITellCaitlynAboutSchool", "ch5CaitlynOffersToDrive", "ch5IDeclineCaitlynsOffer", "ch5OK", "ch5YukioWantsToTalk", "ch5YukioGreetsMe", "ch5IGreetYukio", "ch5YukioDislikesMeGettingFreshAir", "ch5IWillCallSupervisor", "ch5IAmApathetic", "ch5IApologizeToYukio", "ch5YukioDismissesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5056)
    }
}

class ch5YukioIsWrong: StoryPage {
    
    let imageName = "Resting-Elodie"
    
    let textName = ["ch5YukioIsWrong", "ch5IThinkTooLong"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5057)
    }
}

class ch5CarleighReturns: StoryPage {
    
    let imageName = "Resting-Elodie-Talk-to-Carleigh"
    
    let textName = ["ch5CarleighReturns", "ch5HowWasCarleighsMath", "ch5CarleighForgets", "ch5CarleighWillBeStar", "ch5ElodieCanBeCool", "ch5CarleighAndILaugh"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5058)
    }
}

class ch5HewittCallsMe: StoryPage {
    
    let imageName = "Resting-Elodie-on-Phone-Evening"
    
    let textName = ["ch5HewittCallsMe", "ch5IGreetHewitt", "ch5CanIHangOutWithHewitt", "ch5IMightHangOutWithHewitt"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5059)
    }
}

class ch5ISleep: StoryPage {
    
    let imageName = "Resting-Elodie-Night"
    
    let textName = ["ch5ISleep"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(6001)
    }
}