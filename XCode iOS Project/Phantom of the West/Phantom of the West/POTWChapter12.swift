//
//  POTWChapter12.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/21.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter12: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 12001:
            nextPages = [ch12Title(observer: observer)]
        case 12002:
            nextPages = [ch12TimeAgo(observer: observer)]
        case 12003:
            nextPages = [ch12RebeccaAvoidedMe(observer: observer)]
        case 12004:
            nextPages = [ch12ISpiedOnRebecca(observer: observer)]
        case 12005:
            nextPages = [ch12ISawIntoRebeccaRoom(observer: observer)]
        case 12006:
            nextPages = [ch12DidRebeccaLoseInterest(observer: observer)]
        case 12007:
            nextPages = [ch12MyHeartStopped(observer: observer)]
        case 12008:
            nextPages = [ch12ICaughtRebecca(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch12Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch12Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12002)
    }
}

class ch12TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch12TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12003)
    }
}

class ch12RebeccaAvoidedMe: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Alone-at-School"
    
    let textName = ["ch12RebeccaAvoidedMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12004)
    }
}

class ch12ISpiedOnRebecca: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Binoculars-Raised"
    
    let textName = ["ch12ISpiedOnRebecca"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12005)
    }
}

class ch12ISawIntoRebeccaRoom: StoryPageVoicedKaden {
    
    let imageName = "Rebecca-Cheats"
    
    let textName = ["ch12ISawIntoRebeccaRoom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12006)
    }
}

class ch12DidRebeccaLoseInterest: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Binoculars-Lowered-Color"
    
    let textName = ["ch12DidRebeccaLoseInterest"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12007)
    }
}

class ch12MyHeartStopped: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Binoculars-Lowered-Greyscale"
    
    let textName = ["ch12MyHeartStopped"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(12008)
    }
}

class ch12ICaughtRebecca: StoryPageVoicedKaden {
    
    let imageName = "Rebecca-Breaks-up-with-Kaden"
    
    let textName = ["ch12ICaughtRebecca", "ch12RebeccaWasUncomfortable", "ch12ILeftRebeccaAlone"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(13001)
    }
}