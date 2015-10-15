//
//  POTWChapter3.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/14.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter3: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 301:
            nextPages = [ch3Title(observer: observer)]
        case 302:
            nextPages = [ch3IAwaken(observer: observer)]
        case 303:
            nextPages = [ch3SezjaGreetsMe(observer: observer)]
        case 304:
            nextPages = [ch3SezjaGreetsMePause(observer: observer)]
        case 305:
            nextPages = [ch3SezjaStartlesMe(observer: observer)]
        case 306:
            nextPages = [ch3SezjaLeaves(observer: observer)]
        case 307:
            nextPages = [ch3ICallCaitlyn(observer: observer)]
        case 308:
            nextPages = [ch3CaitlynComes(observer: observer)]
        case 309:
            nextPages = [ch3CaitlynAsksMeToDisguiseAsInfant(observer: observer)]
        case 310:
            nextPages = [ch3IDiguiseAsInfant(observer: observer), ch3IRefuseToDiguiseAsInfant(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch3Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch3Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(302)
    }
}

class ch3IAwaken: StoryPage {
    
    let imageName = "Officer-Awakens"
    
    let textName = ["ch3IAwaken"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(303)
    }
}

class ch3SezjaGreetsMe: StoryPage {
    
    let imageName = "Officer-Lies-with-Sezja"
    
    let textName = ["ch3SezjaGreetsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(304)
    }
}

class ch3SezjaGreetsMePause: StoryPage {
    
    let imageName = "Officer-Lies-with-Sezja"
    
    let textName = ["ellipsis"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(305)
    }
}

class ch3SezjaStartlesMe: StoryPage {
    
    let imageName = "Officer-Falls-from-Bed"
    
    let textName = ["ch3SezjaStartlesMe", "ch3SezjaAnswers"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(306)
    }
}

class ch3SezjaLeaves: StoryPage {
    
    let imageName = "Officer-Leans-over-Bed"
    
    let textName = ["ch3SezjaLeaves", "ch3IHaveToSignOut", "ch3PoliceWillBeSuspicious", "ch3IHaveToReturnToArcticon", "ch3MyWorkIsCutOut"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(307)
    }
}

class ch3ICallCaitlyn: StoryPage {
    
    let imageName = "Officer-on-Phone"
    
    let textName = ["ch3ICallCaitlyn", "ch3CaitlynDoesNotRecognizeMe", "ch3ITellCaitlynIDrankElixir", "ch3CaitlynBelievesMe", "ch3IAskCaitlynToCome", "ch3CaitlynAgreesToCome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(308)
    }
}

class ch3CaitlynComes: StoryPage {
    
    let imageName = "Caitlyn-Drives-to-Officer"
    
    let textName = ["ch3CaitlynComes", "ch3CaitlynNoticesMeAsOfficer", "ch3IAskToPossessCaitlyn", "ch3CaitlynHesitatesPossession", "ch3IJustifyPossession"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(309)
    }
}

class ch3CaitlynAsksMeToDisguiseAsInfant: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3CaitlynAsksMeToDisguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(310)
    }
}


class ch3IDiguiseAsInfant: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IDiguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(311)
    }
}

class ch3IRefuseToDiguiseAsInfant: StoryPage {
    
    let imageName = "Towel-in-Car"
    
    let textName = ["ch3IRefuseToDiguiseAsInfant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(311)
    }
}