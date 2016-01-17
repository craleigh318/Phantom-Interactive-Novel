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
        case 2001:
            nextPages = [ch2Title(observer: observer)]
        case 2002:
            nextPages = [ch2TimeAgo(observer: observer)]
        case 2003:
            nextPages = [ch2ThereWereFourGods(observer: observer)]
        case 2004:
            nextPages = [ch2ThereWasSezja(observer: observer)]
        case 2005:
            nextPages = [ch2ThereWasBaqer(observer: observer)]
        case 2006:
            nextPages = [ch2ThereWasVaNal(observer: observer)]
        case 2007:
            nextPages = [ch2ThereWasBekShtii(observer: observer)]
        case 2008:
            nextPages = [ch2LectureEnded(observer: observer)]
        case 2009:
            nextPages = [ch2IWentToProfArvin(observer: observer)]
        case 2010:
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
        super.init(image: imageName, text: textName, observer: observer, nextState: 2002)
    }
}

class ch2TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch2TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2003)
    }
}

class ch2ThereWereFourGods: StoryPageVoicedKaden {
    
    let imageName = "Professor-Lecture"
    
    let textName = ["ch2ThereWereFourGods"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2004)
    }
}

class ch2ThereWasSezja: StoryPageVoicedKaden {
    
    let imageName = "Sezja-Intro"
    
    let textName = ["ch2ThereWasSezja"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2005)
    }
}

class ch2ThereWasBaqer: StoryPageVoicedKaden {
    
    let imageName = "Baqer-Intro"
    
    let textName = ["ch2ThereWasBaqer"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2006)
    }
}

class ch2ThereWasVaNal: StoryPageVoicedKaden {
    
    let imageName = "Va'Nal-Intro"
    
    let textName = ["ch2ThereWasVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2007)
    }
}

class ch2ThereWasBekShtii: StoryPageVoicedKaden {
    
    let imageName = "Bek'Shtii-Intro"
    
    let textName = ["ch2ThereWasBekShtii"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2008)
    }
}

class ch2LectureEnded: StoryPageVoicedKaden {
    
    let imageName = "Kaden-in-Lecture"
    
    let textName = ["ch2LectureEnded"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2009)
    }
}

class ch2IWentToProfArvin: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Walks-in-School-Hall"
    
    let textName = ["ch2IWentToProfArvin"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2010)
    }
}

class ch2IGreetProf: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Talks-to-Prof"
    
    let textName = ["ch2IGreetProf", "ch2ProfGreetsMe", "ch2IConfideToProf", "ch2ProfDismissesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 3001)
    }
}