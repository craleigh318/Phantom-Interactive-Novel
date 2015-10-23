//
//  POTWChapter16.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/23.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter16: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 16001:
            nextPages = [ch16Title(observer: observer)]
        case 16002:
            nextPages = [ch16DoIGiveUp(observer: observer)]
        case 16003:
            nextPages = [ch16WhatTimeAgo(observer: observer)]
        case 16004:
            nextPages = [ch16IWasAtAirport(observer: observer)]
        case 16005:
            nextPages = [ch16BeSuccessful(observer: observer)]
        case 16006:
            nextPages = [ch16FindSomeoneElse(observer: observer)]
        case 16007:
            nextPages = [ch16DoThatOK(observer: observer)]
        case 16008:
            nextPages = [ch16RebeccaAndIHugged(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch16Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch16Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16002)
    }
}

class ch16DoIGiveUp: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch16DoIGiveUp", "ch16HerBrotherWon", "ch16WhyAreGodsHere", "ch16IDrankBekShtiisBlood", "ch16IsThatReallyWhy", "ch16SezjaSaidSo", "ch16WhatDoIDream", "ch16VaNalKnows", "ch16SenseStopped", "ch16HowWouldSheFeelAtReunion", "ch16ImNotSure", "ch16DoINotRemember", "ch16RememberWhat", "ch16TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16003)
    }
}

class ch16WhatTimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch16WhatTimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16004)
    }
}

class ch16IWasAtAirport: StoryPage {
    
    let imageName = "Kaden-and-Rebecca-at-Airport"
    
    let textName = ["ch16IWasAtAirport", "ch16WhatDidRebeccaSay", "ch16LongTimeNoSee", "ch16WhatDidSheSayAfter", "ch16NoHurtFeelings", "ch16WhatDidYouSay", "ch16IAmStillBadWithPeople"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 16005
        if let ef = observer.eventFlags {
            if ef.route != .Phantom {
                nextState = 16006
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch16BeSuccessful: StoryPage {
    
    let imageName = "Kaden-and-Rebecca-at-Airport"
    
    let textName = ["ch16BeSuccessful"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16007)
    }
}

class ch16FindSomeoneElse: StoryPage {
    
    let imageName = "Kaden-and-Rebecca-at-Airport"
    
    let textName = ["ch16FindSomeoneElse"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16007)
    }
}

class ch16DoThatOK: StoryPage {
    
    let imageName = "Kaden-and-Rebecca-at-Airport"
    
    let textName = ["ch16DoThatOK"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(16008)
    }
}

class ch16RebeccaAndIHugged: StoryPage {
    
    let imageName = "Kaden-and-Rebecca-Hug-at-Airport"
    
    let textName = ["ch16RebeccaAndIHugged"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17001)
    }
}