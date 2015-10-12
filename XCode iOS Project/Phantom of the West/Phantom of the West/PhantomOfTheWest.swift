//
//  PhantomOfTheWest.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/20.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

public class PhantomOfTheWest: PStory, PStoryObserver {
    
    private static let firstPageNumber = 101
    
    private var gameState: POTWGameState?
    
    /*
    The pages for the UI to show.
    */
    private var currentPages: [PStoryPage] = []
    
    public var observer: PStoryObserver?
    
    public func newGame() {
        let emptyFlags = EventFlagsCollection()
        gameState = POTWGameState(eventFlags: emptyFlags)
        goToStoryState(PhantomOfTheWest.firstPageNumber)
        //let firstPage = ch1IAmDrKaden(eventFlags: emptyFlags, observer: self)
    }
    
    public func update(pages: [PStoryPage]) {
        currentPages = pages
        if let o = observer {
            o.update(pages)
        }
    }
    
    func goToStoryState(stateID: Int) {
        if let gs = gameState {
            let newPages = gs.goToStoryState(stateID, observer: self)
            var newPPages = [PStoryPage]()
            for p in newPages {
                newPPages.append(p)
            }
            update(newPPages)
        }
    }
    
    /*
    Converts a saveable format to a usable array.
    */
    func NSDataToPages(data: NSData) -> [StoryPage] {
        var savedPages = [StoryPage]()
        if let individualData = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? [NSData] {
            for datum in individualData {
                if let p = NSDataToStoryPage(datum) {
                    savedPages.append(p)
                }
            }
        }
        return savedPages
    }
    
    /*
    Converts an archived NSData save to a usuable class.
    */
    func NSDataToStoryPage(data: NSData) -> StoryPage? {
        let newStoryPage = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? StoryPage
        if let nsp = newStoryPage {
            nsp.observer = self
        }
        return newStoryPage
    }
}