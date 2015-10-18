//
//  POTWChapter8.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/18.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter8: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 8001:
            nextPages = [ch8Title(observer: observer)]
        case 8002:
            nextPages = [ch8TimeAgo(observer: observer)]
        case 8003:
            nextPages = [ch8INeededHelpWithReport(observer: observer)]
        case 8004:
            nextPages = [ch8IMetSarah(observer: observer)]
        case 8005:
            nextPages = [ch8SarahAskedColdly(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch8Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch8Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(8002)
    }
}

class ch8TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch8TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(8003)
    }
}

class ch8INeededHelpWithReport: StoryPage {
    
    let imageName = "Kaden-Walks-Around-High-School"
    
    let textName = ["ch8INeededHelpWithReport"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(8004)
    }
}

class ch8IMetSarah: StoryPage {
    
    let imageName = "Young-Sarah-Looks-Down"
    
    let textName = ["ch8IMetSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(8005)
    }
}

class ch8SarahAskedColdly: StoryPage {
    
    let imageName = "Young-Sarah-Looks-Up"
    
    let textName = ["ch8SarahAskedColdly", "ch8DidSarahKnowMe", "ch8OKAndSarahAsked", "ch8IAskedSarahForHelp", "ch8SarahDeclinesHelping", "ch8RebeccaCouldNotHelp", "ch8DidIKnowRebecca", "ch8IDatedRebecca", "ch8SarahAgreedToHelp", "ch8Thanks", "ch8ILookedAtSarahsJournal", "ch8SarahStudiedJournalism", "ch8IWishedSarahLuck", "ch8SarahThankedMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(9001)
    }
}