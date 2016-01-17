//
//  POTWChapter14.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/21.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter14: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 14001:
            nextPages = [ch14Title(observer: observer)]
        case 14002:
            nextPages = [ch14TimeAgo(observer: observer)]
        case 14003:
            nextPages = [ch14ItWasDusk(observer: observer)]
        case 14004:
            nextPages = [ch14ArmyMarched(observer: observer)]
        case 14005:
            nextPages = [ch14MenCarriedFirearms(observer: observer)]
        case 14006:
            nextPages = [ch14NativesFled(observer: observer)]
        case 14007:
            nextPages = [ch14ArmyReachedPyramid(observer: observer)]
        case 14008:
            nextPages = [ch14PhantomArose(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch14Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch14Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14002)
    }
}

class ch14TimeAgo: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch14TimeAgo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14003)
    }
}

class ch14ItWasDusk: StoryPageVoicedArvin {
    
    let imageName = "Warm-Bloody-Dusk"
    
    let textName = ["ch14ItWasDusk"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14004)
    }
}

class ch14ArmyMarched: StoryPageVoicedArvin {
    
    let imageName = "Conquistador-with-Torch"
    
    let textName = ["ch14ArmyMarched", "ch14MenCarriedTorches"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14005)
    }
}

class ch14MenCarriedFirearms: StoryPageVoicedArvin {
    
    let imageName = "Conquistador-with-Gun"
    
    let textName = ["ch14MenCarriedFirearms"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14006)
    }
}

class ch14NativesFled: StoryPageVoicedArvin {
    
    let imageName = "Natives-Flee"
    
    let textName = ["ch14NativesFled"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14007)
    }
}

class ch14ArmyReachedPyramid: StoryPageVoicedArvin {
    
    let imageName = "Warm-Bloody-Dusk"
    
    let textName = ["ch14ArmyReachedPyramid"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 14008)
    }
}

class ch14PhantomArose: StoryPageVoicedArvin {
    
    let imageName = "Bek'Shtii-Phantom-from-Pyramid"
    
    let textName = ["ch14PhantomArose", "ch14ElFantasma"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 15001)
    }
}