//
//  POTWChapter1.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/10.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

class ch1IAmDrKaden: StoryPage {
    
    let imageName = "I-am-Dr-Kaden"
    
    let textName = ["ch1IAmDrKaden"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1ThisIsNewFerando(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1ThisIsNewFerando: StoryPage {
    
    let imageName = "Cityscape-from-Window"
    
    let textName = ["ch1ThisIsNewFerando"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1IDrinkElixir(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1IDrinkElixir: StoryPage {
    
    let imageName = "Dr-Kaden-Drinks-Elixir"
    
    let textName = ["ch1IDrinkElixir"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1ILeaveHotel(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1ILeaveHotel: StoryPage {
    
    let imageName = "Dr-Kaden-Walking-among-Citizens"
    
    let textName = ["ch1ILeaveHotel"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1IGoToAlley(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1IGoToAlley: StoryPage {
    
    let imageName = "Dr-Kaden-Ill"
    
    let textName = ["ch1IGoToAlley"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1OfficerSeesMe(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1OfficerSeesMe: StoryPage {
    
    let imageName = "Officer-Notices-Dr-Kaden"
    
    let textName = ["ch1OfficerSeesMe"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1MyFaceDisappears(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1MyFaceDisappears: StoryPage {
    
    let imageName = "Phantom-Reveal"
    
    let textName = ["ch1MyFaceDisappears"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1IOpenMyEyes(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1IOpenMyEyes: StoryPage {
    
    let imageName = "Phantom-Reveal-with-Eyes"
    
    let textName = ["ch1IOpenMyEyes"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1IPossessOfficer(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1IPossessOfficer: StoryPage {
    
    let imageName = "Possess-Police-Officer"
    
    let textName = ["ch1IPossessOfficer"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1ILookAtMyHands(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1ILookAtMyHands: StoryPage {
    
    let imageName = "Officer-Hands"
    
    let textName = ["ch1ILookAtMyHands"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1IGoToOfficersHome(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1IGoToOfficersHome: StoryPage {
    
    let imageName = "Drive-to-Officer-Home"
    
    let textName = ["ch1IGoToOfficersHome"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    override func continueStory() {
        onNewPages([ch1ISleep(eventFlags: eventFlags, observer: observer)])
    }
}

class ch1ISleep: StoryPage {
    
    let imageName = "Officer-on-Bed"
    
    let textName = ["ch1ISleep"]
    
    init(eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        super.init(image: imageName, text: textName, eventFlags: eventFlags, observer: observer)
    }
    
    /*override func continueStory() {
        onNewPages([ch1IPossessOfficer(eventFlags: eventFlags, observer: observer)])
    }*/
}