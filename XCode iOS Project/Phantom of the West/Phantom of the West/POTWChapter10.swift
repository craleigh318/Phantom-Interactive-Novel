//
//  POTWChapter10.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/19.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter10: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 10001:
            nextPages = [ch10Title(observer: observer)]
        case 10002:
            nextPages = [ch10TimeAgo(observer: observer)]
        case 10003:
            nextPages = [ch10WeFinishedDinner(observer: observer)]
        case 10004:
            nextPages = [ch10CaitlynNoticesRAF(observer: observer)]
        case 10005:
            nextPages = [ch10WeExploredRAF(observer: observer)]
        case 10006:
            nextPages = [ch10CaitlynWantedFerret(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch10Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch10Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(10002)
    }
}

class ch10TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch10TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(10003)
    }
}

class ch10WeFinishedDinner: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Jim-and-Co"
    
    let textName = ["ch10WeFinishedDinner", "ch10WhereDoesYukioWork", "ch10ArcticonHiredUs", "ch10CaitlynResearchesMedicine", "ch10JimIsAssistantProf", "ch10WeMissedJim"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(10004)
    }
}

class ch10CaitlynNoticesRAF: StoryPageVoicedKaden {
    
    let imageName = "RAF-Sign-at-Ballroom"
    
    let textName = ["ch10CaitlynNoticesRAF", "ch10WhyDoesCaitlynCallMeKadey", "ch10CaitlynLikesToNickname", "ch10IHadNotBeenGoodFriend", "ch10WeHadGottenWellTogether", "ch10WeWentToRAF"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(10005)
    }
}

class ch10WeExploredRAF: StoryPageVoicedKaden {
    
    let imageName = "RAF-Employee"
    
    let textName = ["ch10WeExploredRAF", "ch10CaitlynLookedAtAnimals"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(10006)
    }
}

class ch10CaitlynWantedFerret: StoryPageVoicedKaden {
    
    let imageName = "Ballroom-Ferrets"
    
    let textName = ["ch10CaitlynWantedFerret", "ch10IRejectedFerret", "ch10PleaseCaitlynAsked"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(11001)
    }
}