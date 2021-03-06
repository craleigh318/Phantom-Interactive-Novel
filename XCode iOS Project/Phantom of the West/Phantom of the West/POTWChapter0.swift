//
//  POTWChapter0.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015-11-06.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter0: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 1:
            nextPages = [ch0Welcome(observer: observer)]
        case 2:
            nextPages = [ch0POTWSimple(observer: observer)]
        case 3:
            nextPages = [ch0MultipleChoices(observer: observer)]
        case 4:
            nextPages = [ch0FirstChoice(observer: observer), ch0SecondChoice(observer: observer)]
        case 5:
            nextPages = [ch0Options(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch0Welcome: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch0Welcome"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 2)
    }
    
    override var text: String {
        let formattedText = String(format: super.text, arguments: [Constants.okTitle])
        return formattedText
    }
}

class ch0POTWSimple: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch0POTWSimple"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 3)
    }
    
    override var text: String {
        let formattedText = String(format: super.text, arguments: [Constants.okTitle])
        return formattedText
    }
}

class ch0MultipleChoices: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch0MultipleChoices"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 4)
    }
    
    override var text: String {
        let formattedText = String(format: super.text, arguments: [Constants.okTitle])
        return formattedText
    }
}

class ch0FirstChoice: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch0FirstChoice"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 5)
    }
    
    override var text: String {
        let formattedText = String(format: super.text, arguments: [Constants.buttonNextTitle, Constants.okTitle])
        return formattedText
    }
}

class ch0SecondChoice: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch0SecondChoice"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer, nextState: 5)
    }
    
    override var text: String {
        let formattedText = String(format: super.text, arguments: [Constants.buttonPreviousTitle, Constants.okTitle])
        return formattedText
    }
}

class ch0Options: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch0Options"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        AppDelegate.potwStory.newGame()
    }
    
    override var text: String {
        let formattedText = String(format: super.text, arguments: [Constants.buttonOptionsTitle, Constants.okTitle])
        return formattedText
    }
}