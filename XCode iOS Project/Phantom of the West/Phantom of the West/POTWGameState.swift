//
//  POTWGameState.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/11.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

/*
Contains a state ID and event flag collection.
*/
class POTWGameState: PPageTurner {
    /*
    Flags used to control story branching.
    */
    var eventFlags: EventFlagsCollection
    
    /*
    Specifies a certain point in the story.
    */
    private(set) var id: Int
    
    init(eventFlags: EventFlagsCollection) {
        id = 0
        self.eventFlags = eventFlags
    }
    
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        id = stateID
        let chapterID = stateID / 100
        var pageTurner: PPageTurner?
        switch chapterID {
        case 1:
            pageTurner = Chapter1()
        default:
            break
        }
        var newPages: [StoryPage]
        if let pt = pageTurner {
            newPages = pt.goToStoryState(stateID, observer: observer)
        } else {
            newPages = []
        }
        return newPages
    }
}