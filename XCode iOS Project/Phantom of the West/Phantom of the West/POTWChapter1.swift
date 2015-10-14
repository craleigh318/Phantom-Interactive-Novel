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
        case 101:
            nextPages = [ch1Title(observer: observer)]
        case 102:
            nextPages = [ch1IAmDrKaden(observer: observer)]
        case 103:
            nextPages = [ch1ThisIsNewFerando(observer: observer)]
        case 104:
            nextPages = [ch1IDrinkElixir(observer: observer)]
        case 105:
            nextPages = [ch1ILeaveHotel(observer: observer)]
        case 106:
            nextPages = [ch1IGoToAlley(observer: observer)]
        case 107:
            nextPages = [ch1OfficerSeesMe(observer: observer)]
        case 108:
            nextPages = [ch1MyFaceDisappears(observer: observer)]
        case 109:
            nextPages = [ch1IOpenMyEyes(observer: observer)]
        case 110:
            nextPages = [ch1IPossessOfficer(observer: observer)]
        case 111:
            nextPages = [ch1ILookAtMyHands(observer: observer)]
        case 112:
            nextPages = [ch1IGoToOfficersHome(observer: observer)]
        case 113:
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
        observer.goToStoryState(102)
    }
}

class ch1IAmDrKaden: StoryPage {
    
    let imageName = "I-am-Dr-Kaden"
    
    let textName = ["ch1IAmDrKaden"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(103)
    }
}

class ch1ThisIsNewFerando: StoryPage {
    
    let imageName = "Cityscape-from-Window"
    
    let textName = ["ch1ThisIsNewFerando"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(104)
    }
}

class ch1IDrinkElixir: StoryPage {
    
    let imageName = "Dr-Kaden-Drinks-Elixir"
    
    let textName = ["ch1IDrinkElixir"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(105)
    }
}

class ch1ILeaveHotel: StoryPage {
    
    let imageName = "Dr-Kaden-Walking-among-Citizens"
    
    let textName = ["ch1ILeaveHotel"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(106)
    }
}

class ch1IGoToAlley: StoryPage {
    
    let imageName = "Dr-Kaden-Ill"
    
    let textName = ["ch1IGoToAlley"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(107)
    }
}

class ch1OfficerSeesMe: StoryPage {
    
    let imageName = "Officer-Notices-Dr-Kaden"
    
    let textName = ["ch1OfficerSeesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(108)
    }
}

class ch1MyFaceDisappears: StoryPage {
    
    let imageName = "Phantom-Reveal"
    
    let textName = ["ch1MyFaceDisappears"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(109)
    }
}

class ch1IOpenMyEyes: StoryPage {
    
    let imageName = "Phantom-Reveal-with-Eyes"
    
    let textName = ["ch1IOpenMyEyes"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(110)
    }
}

class ch1IPossessOfficer: StoryPage {
    
    let imageName = "Possess-Police-Officer"
    
    let textName = ["ch1IPossessOfficer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(111)
    }
}

class ch1ILookAtMyHands: StoryPage {
    
    let imageName = "Officer-Hands"
    
    let textName = ["ch1ILookAtMyHands"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(112)
    }
}

class ch1IGoToOfficersHome: StoryPage {
    
    let imageName = "Drive-to-Officer-Home"
    
    let textName = ["ch1IGoToOfficersHome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(113)
    }
}

class ch1ISleep: StoryPage {
    
    let imageName = "Officer-on-Bed"
    
    let textName = ["ch1ISleep"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(201)
    }
}