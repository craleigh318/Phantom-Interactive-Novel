//
//  POTWChapter4.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/15.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter4: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 4001:
            nextPages = [ch4Title(observer: observer)]
        case 4002:
            nextPages = [ch4TimeAgo(observer: observer)]
        case 4003:
            nextPages = [ch4FieldTripBegan(observer: observer)]
        case 4004:
            nextPages = [ch4BobbyTeasedMe(observer: observer)]
        case 4005:
            nextPages = [ch4RebeccaComfortedMe(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch4Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch4Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(4002)
    }
}

class ch4TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch4TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(4003)
    }
}

class ch4FieldTripBegan: StoryPageVoicedKaden {
    
    let imageName = "Field-Trip"
    
    let textName = ["ch4FieldTripBegan"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(4004)
    }
}

class ch4BobbyTeasedMe: StoryPageVoicedKaden {
    
    let imageName = "Field-Trip-Kaden-Bullied"
    
    let textName = ["ch4BobbyTeasedMe", "ch4RebeccaDefendedMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(4005)
    }
}

class ch4RebeccaComfortedMe: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Meets-Rebecca"
    
    let textName = ["ch4RebeccaComfortedMe", "ch4RebeccaLookedFamiliar", "ch4RebeccaLivedDownstairs", "ch4IThankedRebecca"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(5001)
    }
}