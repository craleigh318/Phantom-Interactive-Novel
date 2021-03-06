//
//  POTWChapter6.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/16.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter6: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 6001:
            nextPages = [ch6Title(observer: observer)]
        case 6002:
            nextPages = [ch6TimeAgo(observer: observer)]
        case 6003:
            nextPages = [ch6IDatedRebecca(observer: observer)]
        case 6004:
            nextPages = [ch6RebeccaPhotographedUs(observer: observer)]
        case 6005:
            nextPages = [ch6WeWentToRestaurant(observer: observer)]
        case 6006:
            nextPages = [ch6WeAte(observer: observer)]
        case 6007:
            nextPages = [ch6IKissedRebecca(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch6Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch6Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 6002)
    }
}

class ch6TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch6TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 6003)
    }
}

class ch6IDatedRebecca: StoryPageVoicedKaden {
    
    let imageName = "Main-Avenue-Past"
    
    let textName = ["ch6IDatedRebecca"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 6004)
    }
}

class ch6RebeccaPhotographedUs: StoryPageVoicedKaden {
    
    let imageName = "Rebecca-Takes-Photo"
    
    let textName = ["ch6RebeccaPhotographedUs"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 6005)
    }
}

class ch6WeWentToRestaurant: StoryPageVoicedKaden {
    
    let imageName = "Rebecca-Dates-Kaden"
    
    let textName = ["ch6WeWentToRestaurant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 6006)
    }
}

class ch6WeAte: StoryPageVoicedKaden {
    
    let imageName = "Kaden-and-Rebecca-Eat"
    
    let textName = ["ch6WeAte", "ch6IWillCompute", "ch6RebeccaWillPostPhoto"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 6007)
    }
}


class ch6IKissedRebecca: StoryPageVoicedKaden {
    
    let imageName = "Kaden-Kisses-Rebecca"
    
    let textName = ["ch6IKissedRebecca"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 7001)
    }
}