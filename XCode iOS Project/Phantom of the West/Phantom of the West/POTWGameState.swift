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
        case 6:
            pageTurner = Chapter6()
        case 7:
            pageTurner = Chapter7()
        case 8:
            pageTurner = Chapter8()
        case 9:
            pageTurner = Chapter9()
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

class TestGameState: POTWGameState {
    init() {
        let ef = EventFlagsCollection()
        ef.ch3DroveWithCaitlyn = .DisguisedAsInfant
        ef.ch3TalkedWithCaitlyn = .SaidMaybeGoodMother
        ef.ch3TalkedWithYukio = true
        ef.ch5AnsweredLiteratureStory = .StayConfident
        ef.ch5AnsweredMathQuestion1 = .Correct
        ef.ch5AnsweredMathQuestion4 = .Correct
        ef.ch5AnsweredMathQuestion9 = .Correct
        ef.ch5AnsweredCoach = .Submit
        ef.ch5SparredWithCheerleader = .Pinned
        super.init(eventFlags: ef)
        id = 7001
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}