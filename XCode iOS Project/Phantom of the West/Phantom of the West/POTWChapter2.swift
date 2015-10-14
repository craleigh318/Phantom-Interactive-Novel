//
//  POTWChapter2.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/13.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter2: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 201:
            nextPages = [ch2Title(observer: observer)]
        case 202:
            nextPages = [ch2TimeAgo(observer: observer)]
        case 203:
            nextPages = [ch2ThereWereFourGods(observer: observer)]
        case 204:
            nextPages = [ch2ThereWasSezja(observer: observer)]
        case 205:
            nextPages = [ch2ThereWasBaqer(observer: observer)]
        case 206:
            nextPages = [ch2ThereWasVaNal(observer: observer)]
        case 207:
            nextPages = [ch2ThereWasBekShtii(observer: observer)]
        case 208:
            nextPages = [ch2LectureEnded(observer: observer)]
        case 209:
            nextPages = [ch2IWentToProfArvin(observer: observer)]
        case 210:
            nextPages = [ch2IGreetProf(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch2Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch2Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(202)
    }
}

class ch2TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch2TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(203)
    }
}

class ch2ThereWereFourGods: StoryPage {
    
    let imageName = "Professor-Lecture"
    
    let textName = ["ch2ThereWereFourGods"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(204)
    }
}

class ch2ThereWasSezja: StoryPage {
    
    let imageName = "Sezja-Intro"
    
    let textName = ["ch2ThereWasSezja"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(205)
    }
}

class ch2ThereWasBaqer: StoryPage {
    
    let imageName = "Baqer-Intro"
    
    let textName = ["ch2ThereWasBaqer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(206)
    }
}

class ch2ThereWasVaNal: StoryPage {
    
    let imageName = "Va'Nal-Intro"
    
    let textName = ["ch2ThereWasVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(207)
    }
}

class ch2ThereWasBekShtii: StoryPage {
    
    let imageName = "Bek'Shtii-Intro"
    
    let textName = ["ch2ThereWasBekShtii"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(208)
    }
}

class ch2LectureEnded: StoryPage {
    
    let imageName = "Kaden-in-Lecture"
    
    let textName = ["ch2LectureEnded"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(209)
    }
}

class ch2IWentToProfArvin: StoryPage {
    
    let imageName = "Kaden-Walks-in-School-Hall"
    
    let textName = ["ch2IWentToProfArvin"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(210)
    }
}

class ch2IGreetProf: StoryPage {
    
    let imageName = "Kaden-Talks-to-Prof"
    
    let textName = ["ch2IGreetProf", "ch2ProfGreetsMe", "ch2IConfideToProf", "ch2ProfDismissesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(301)
    }
}