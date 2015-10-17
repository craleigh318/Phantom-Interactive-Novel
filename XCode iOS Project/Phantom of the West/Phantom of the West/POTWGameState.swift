//
//  POTWGameState.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/11.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

/*
Contains a state ID and event flag collection.
*/
class POTWGameState: NSObject, NSCoding, PPageTurner {
    private static let idKey = "id"
    
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
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        eventFlags = EventFlagsCollection(coder: aDecoder)
        id = aDecoder.decodeIntegerForKey(POTWGameState.idKey)
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        eventFlags.encodeWithCoder(aCoder)
        aCoder.encodeInteger(id, forKey: POTWGameState.idKey)
    }
    
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        id = stateID
        let chapterID = stateID / 1000
        var pageTurner: PPageTurner?
        switch chapterID {
        case 1:
            pageTurner = Chapter1()
        case 2:
            pageTurner = Chapter2()
        case 3:
            pageTurner = Chapter3()
        case 4:
            pageTurner = Chapter4()
        case 5:
            pageTurner = Chapter5()
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