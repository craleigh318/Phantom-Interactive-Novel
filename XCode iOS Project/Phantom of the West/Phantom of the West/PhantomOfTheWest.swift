//
//  PhantomOfTheWest.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/20.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

public class PhantomOfTheWest: PStory, PStoryObserver, PSavedGamesLoader {
    
    private static let firstPageNumber = 1001
    
    private static let tutorialStart = 1
    
    public var observer: PStoryObserver?
    
    var eventFlags: EventFlagsCollection? {
        if let gs = gameState {
            return gs.eventFlags
        }
        return nil
    }
    
    private var gameState: POTWGameState?
    
    /*
    The pages for the UI to show.
    */
    private var currentPages: [PStoryPage] = []
    
    public func newGame() {
        let emptyFlags = EventFlagsCollection()
        gameState = POTWGameState(eventFlags: emptyFlags)
        goToStoryState(PhantomOfTheWest.firstPageNumber)
        /*let gs = TestGameState()
        gameState = gs
        goToStoryState(gs.id)*/
    }
    
    public func playTutorial() {
        let emptyFlags = EventFlagsCollection()
        gameState = POTWGameState(eventFlags: emptyFlags)
        goToStoryState(PhantomOfTheWest.tutorialStart)
        /*let gs = TestGameState()
        gameState = gs
        goToStoryState(gs.id)*/
    }
    
    /*
    Saves this point in the story.
    */
    public func saveGame() -> NSData? {
        var gameStateData: NSData?
        if let gs = gameState {
            gameStateData = NSKeyedArchiver.archivedDataWithRootObject(gs)
        }
        return gameStateData
    }
    
    /*
    Loads a point in the story.
    */
    public func loadGame(data: NSData) {
        if let gs = NSKeyedUnarchiver.unarchiveObjectWithData(data) as? POTWGameState {
            gameState = gs
            goToStoryState(gs.id, lineNumber: gs.lineNumber)
        } else {
            AlertManager.showMessage(StringLocalizer.getGUIString("loadFailed"), message: StringLocalizer.getGUIString("loadFailedMessage"))
        }
    }
    
    public func update(pages: [PStoryPage]) {
        currentPages = pages
        if let o = observer {
            if let gs = gameState {
                // Play voice.
                if pages.count == 1 {
                    if let firstPage = pages[0] as? StoryPage {
                        gs.lineNumber = firstPage.lineNumber
                        firstPage.playAudio()
                    }
                } else {
                    gs.lineNumber = 0
                }
                // Auto save.
                let gameStateData = NSKeyedArchiver.archivedDataWithRootObject(gs)
                AutoSave.save(gameStateData)
            }
            o.update(pages)
        }
    }
    
    public func savedGamesLoaded(data: NSData?, error: NSError?) {
        if let d = data {
            loadGame(d)
        } else if let e = error {
            AlertManager.showError(e)
        }
    }
    
    /*
    Call this when ready to continue story.
    This will update the observer, auto-save, play voiceover, et cetera.
    */
    func goToStoryState(stateID: Int, lineNumber: Int? = nil) {
        //Display next page.
        if let gs = gameState {
            let newPages = gs.goToStoryState(stateID, observer: self)
            var newPPages = [PStoryPage]()
            for p in newPages {
                if let ln = lineNumber {
                    p.lineNumber = ln
                }
                newPPages.append(p)
            }
            update(newPPages)
        }
    }
}