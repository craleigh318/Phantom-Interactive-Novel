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
    
    /*
    Call this when ready to continue story.
    This will update the observer, auto-save, play voiceover, et cetera.
    */
    func goToStoryState(stateID: Int) {
        //Display next page.
        if let gs = gameState {
            let newPages = gs.goToStoryState(stateID, observer: self)
            var newPPages = [PStoryPage]()
            for p in newPages {
                newPPages.append(p)
            }
            update(newPPages)
        }
        // Auto save.
        /*if let gs = gameState {
            let gameStateData = NSKeyedArchiver.archivedDataWithRootObject(gs)
            AutoSave.save(gameStateData)
        }*/
        // Play voice.
    }
}