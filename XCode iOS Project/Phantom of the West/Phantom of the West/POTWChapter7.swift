//
//  POTWChapter7.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/17.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter7: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 7001:
            nextPages = [ch7Title(observer: observer)]
        case 7002:
            nextPages = [ch7SleepyHead(observer: observer)]
        case 7003:
            nextPages = [ch7ISnoreAtSezjaPause(observer: observer)]
        case 7004:
            nextPages = [ch7WasSezjaCarleigh(observer: observer)]
        case 7005:
            nextPages = [ch7SezjaFingersChin(observer: observer)]
        case 7006:
            nextPages = [ch7SezjaHugsMe(observer: observer)]
        case 7007:
            nextPages = [ch7IReturnToLiteratureClass(observer: observer)]
        case 7008:
            nextPages = [ch7LostCreditForLoweringSelvesForLiterture(observer: observer)]
        case 7009:
            nextPages = [ch7FullCreditForLiterature(observer: observer)]
        case 7010:
            nextPages = [ch7LostCreditForNotBeingOneselfForLiterature(observer: observer)]
        case 7011:
            nextPages = [ch7LiteratureTeacherIsDrag(observer: observer)]
        case 7012:
            nextPages = [ch7CarleighsGroupCheers(observer: observer)]
        case 7013:
            nextPages = [ch7SezjaIsQuiet(observer: observer)]
        case 7014:
            nextPages = [ch7MorningPasses(observer: observer)]
        case 7015:
            nextPages = [ch7LunchBegins(observer: observer)]
        case 7016:
            nextPages = [ch7IAcceptHangout(observer: observer), ch7IDeclineHangout(observer: observer)]
        case 7017:
            nextPages = [ch7BaqerBurpsAtMe(observer: observer)]
        case 7018:
            nextPages = [ch7BaqerIsJerk(observer: observer)]
        case 7019:
            nextPages = [ch7HewittActsDifferent(observer: observer)]
        case 7020:
            nextPages = [ch7BaqerReturns(observer: observer)]
        case 7021:
            nextPages = [ch7BaqerNoticesVaNal(observer: observer)]
        case 7022:
            nextPages = [ch7BaqerGrabsMe(observer: observer)]
        case 7023:
            nextPages = [ch7VaNalPullsBaqer(observer: observer)]
        case 7024:
            nextPages = [ch7VaNalSeperatesBaqer(observer: observer)]
        case 7025:
            nextPages = [ch7CanIPossessHewitt(observer: observer)]
        case 7026:
            nextPages = [ch7VaNalPossessesElodie(observer: observer)]
        case 7027:
            nextPages = [ch7WeBuyHam(observer: observer)]
        case 7028:
            nextPages = [ch7WeEatHam(observer: observer)]
        case 7029:
            nextPages = [ch7SezjaReturns(observer: observer)]
        case 7030:
            nextPages = [ch7SezjaGreetsMeAgain(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch7Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch7Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7002)
    }
}

class ch7SleepyHead: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch7SleepyHead", "ch7ISnoreAtSezja"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7003)
    }
}

class ch7ISnoreAtSezjaPause: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ellipsis"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7004)
    }
}

class ch7WasSezjaCarleigh: StoryPage {
    
    let imageName = "Sezja-Wakes-Elodie"
    
    let textName = ["ch7WasSezjaCarleigh"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7005)
    }
}

class ch7SezjaFingersChin: StoryPage {
    
    let imageName = "Sezja-Fingers-Carleigh-Chin"
    
    let textName = ["ch7SezjaFingersChin", "ch7SezjaAsBestFriend"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7006)
    }
}

class ch7SezjaHugsMe: StoryPage {
    
    let imageName = "Sezja-Hugs-Elodie"
    
    let textName = ["ch7SezjaHugsMe", "ch7WhyIsSezjaHere", "ch7SezjaStaysWithMe", "ch7CanSezjaActNormal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7007)
    }
}

class ch7IReturnToLiteratureClass: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7IReturnToLiteratureClass"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 7009
        if let ef = observer.eventFlags {
            switch ef.ch5AnsweredLiteratureStory {
            case .PlayToStrengths:
                nextState = 7008
            case .AvoidStupidity:
                nextState = 7010
            default:
                break
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch7LostCreditForLoweringSelvesForLiterture: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7LostCreditForLoweringSelvesForLiterture"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7011)
    }
}

class ch7FullCreditForLiterature: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7FullCreditForLiterature"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7012)
    }
}

class ch7LostCreditForNotBeingOneselfForLiterature: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7LostCreditForNotBeingOneselfForLiterature"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7011)
    }
}

class ch7LiteratureTeacherIsDrag: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7LiteratureTeacherIsDrag"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7013)
    }
}

class ch7CarleighsGroupCheers: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7CarleighsGroupCheers"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7013)
    }
}

class ch7SezjaIsQuiet: StoryPage {
    
    let imageName = "Literature-Results"
    
    let textName = ["ch7SezjaIsQuiet"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7014)
    }
}

class ch7MorningPasses: StoryPage {
    
    let imageName = "Elodie-at-Desk"
    
    let textName = ["ch7MorningPasses"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7015)
    }
}

class ch7LunchBegins: StoryPage {
    
    let imageName = "Elodie-Second-Lunch"
    
    let textName = ["ch7LunchBegins"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7016)
    }
}

class ch7IAcceptHangout: StoryPage {
    
    let imageName = "Elodie-Second-Lunch"
    
    let textName = ["ch7IAcceptHangout"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch7HungOutWithHewitt = .Accepted
        }
        observer.goToStoryState(7017)
    }
}

class ch7IDeclineHangout: StoryPage {
    
    let imageName = "Elodie-Second-Lunch"
    
    let textName = ["ch7IDeclineHangout"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        if let ef = observer.eventFlags {
            ef.ch7HungOutWithHewitt = .Refused
        }
        observer.goToStoryState(7017)
    }
}

class ch7BaqerBurpsAtMe: StoryPage {
    
    let imageName = "Hewitt-Burps"
    
    let textName = ["ch7BaqerBurpsAtMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7018)
    }
}

class ch7BaqerIsJerk: StoryPage {
    
    let imageName = "Elodie-Angry"
    
    let textName = ["ch7BaqerIsJerk"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7019)
    }
}

class ch7HewittActsDifferent: StoryPage {
    
    let imageName = "Elodie-Leaves-Hewitt"
    
    let textName = ["ch7HewittActsDifferent", "ch7VaNalCallsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7020)
    }
}

class ch7BaqerReturns: StoryPage {
    
    let imageName = "Elodie-Meets-Va'Nal"
    
    let textName = ["ch7BaqerReturns"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7021)
    }
}

class ch7BaqerNoticesVaNal: StoryPage {
    
    let imageName = "Va'Nal-Berates-Baqer"
    
    let textName = ["ch7BaqerNoticesVaNal", "ch7HewittDoesNotDeserveBaqer", "ch7VaNalDaresToWatchBaqer", "ch7BaqerFollowedMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7022)
    }
}

class ch7BaqerGrabsMe: StoryPage {
    
    let imageName = "Baqer-Grabs-Elodie"
    
    let textName = ["ch7BaqerGrabsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7023)
    }
}

class ch7VaNalPullsBaqer: StoryPage {
    
    let imageName = "Va'Nal-Pulls-Baqer-from-Hewitt"
    
    let textName = ["ch7VaNalPullsBaqer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7024)
    }
}

class ch7VaNalSeperatesBaqer: StoryPage {
    
    let imageName = "Baqer-Dispossess-Hewitt"
    
    let textName = ["ch7VaNalSeperatesBaqer", "ch7BaqerFlees"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7025)
    }
}

class ch7CanIPossessHewitt: StoryPage {
    
    let imageName = "Va'Nal-Consoles-Elodie"
    
    let textName = ["ch7CanIPossessHewitt", "ch7SureINod"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7026)
    }
}

class ch7VaNalPossessesElodie: StoryPage {
    
    let imageName = "Kaden-Possesses-Hewitt"
    
    let textName = ["ch7VaNalPossessesElodie"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7027)
    }
}

class ch7WeBuyHam: StoryPage {
    
    let imageName = "Hewitt-and-Elodie-Hold-Hands"
    
    let textName = ["ch7WeBuyHam"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7028)
    }
}

class ch7WeEatHam: StoryPage {
    
    let imageName = "Hewitt-Second-Lunch"
    
    let textName = ["ch7WeEatHam", "ch7VaNalIntoducesHerself", "ch7WhyWillIGoToRuins", "ch7GoingWillMakeSense"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7029)
    }
}

class ch7SezjaReturns: StoryPage {
    
    let imageName = "Sezja-Comes-to-Lunch"
    
    let textName = ["ch7SezjaReturns", "ch7SezjaCallsVaNalBestFriend", "ch7SezjaMistakesVaNal", "ch7IAmHere"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7030)
    }
}

class ch7SezjaGreetsMeAgain: StoryPage {
    
    let imageName = "Sezja-Gasps-at-Lunch"
    
    let textName = ["ch7SezjaGreetsMeAgain", "ch7CanSezjaGetCarleighsTest", "ch7WhyDoIAskSezja", "ch7ITookCarleighsTest", "ch7SezjaGetsNervousTalking"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(7031)
    }
}