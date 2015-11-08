//
//  POTWChapter1.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/10.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter1: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 1001:
            nextPages = [ch1Title(observer: observer)]
        case 1002:
            nextPages = [ch1IAmDrKaden(observer: observer)]
        case 1003:
            nextPages = [ch1ThisIsNewFerando(observer: observer)]
        case 1004:
            nextPages = [ch1IDrinkElixir(observer: observer)]
        case 1005:
            nextPages = [ch1ILeaveHotel(observer: observer)]
        case 1006:
            nextPages = [ch1IGoToAlley(observer: observer)]
        case 1007:
            nextPages = [ch1OfficerSeesMe(observer: observer)]
        case 1008:
            nextPages = [ch1MyFaceDisappears(observer: observer)]
        case 1009:
            nextPages = [ch1IOpenMyEyes(observer: observer)]
        case 1010:
            nextPages = [ch1IPossessOfficer(observer: observer)]
        case 1011:
            nextPages = [ch1ILookAtMyHands(observer: observer)]
        case 1012:
            nextPages = [ch1IGoToOfficersHome(observer: observer)]
        case 1013:
            nextPages = [ch1ISleep(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch1Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch1Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1002)
    }
}

class ch1IAmDrKaden: StoryPageVoicedKaden {
    
    let imageName = "I-am-Dr-Kaden"
    
    let textName = ["ch1IAmDrKaden"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1003)
    }
}

class ch1ThisIsNewFerando: StoryPageVoicedKaden {
    
    let imageName = "Cityscape-from-Window"
    
    let textName = ["ch1ThisIsNewFerando"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1004)
    }
}

class ch1IDrinkElixir: StoryPageVoicedKaden {
    
    let imageName = "Dr-Kaden-Drinks-Elixir"
    
    let textName = ["ch1IDrinkElixir"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1005)
    }
}

class ch1ILeaveHotel: StoryPageVoicedKaden {
    
    let imageName = "Dr-Kaden-Walking-among-Citizens"
    
    let textName = ["ch1ILeaveHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1006)
    }
}

class ch1IGoToAlley: StoryPageVoicedKaden {
    
    let imageName = "Dr-Kaden-Ill"
    
    let textName = ["ch1IGoToAlley"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1007)
    }
}

class ch1OfficerSeesMe: StoryPageVoicedKaden {
    
    let imageName = "Officer-Notices-Dr-Kaden"
    
    let textName = ["ch1OfficerSeesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1008)
    }
}

class ch1MyFaceDisappears: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Reveal"
    
    let textName = ["ch1MyFaceDisappears"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1009)
    }
}

class ch1IOpenMyEyes: StoryPageVoicedKaden {
    
    let imageName = "Phantom-Reveal-with-Eyes"
    
    let textName = ["ch1IOpenMyEyes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1010)
    }
}

class ch1IPossessOfficer: StoryPageVoicedKaden {
    
    let imageName = "Possess-Police-Officer"
    
    let textName = ["ch1IPossessOfficer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1011)
    }
}

class ch1ILookAtMyHands: StoryPageVoicedKaden {
    
    let imageName = "Officer-Hands"
    
    let textName = ["ch1ILookAtMyHands"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1012)
    }
}

class ch1IGoToOfficersHome: StoryPageVoicedKaden {
    
    let imageName = "Drive-to-Officer-Home"
    
    let textName = ["ch1IGoToOfficersHome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(1013)
    }
}

class ch1ISleep: StoryPageVoicedKaden {
    
    let imageName = "Officer-on-Bed"
    
    let textName = ["ch1ISleep"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(2001)
    }
}