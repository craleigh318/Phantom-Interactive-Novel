//
//  ManualSave.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation
import GameKit

/*
Save data stored on Game Center.
*/
public class ManualSave: PSavedGame {
    
    public static weak var observer: PSaveManagerObserver?
    
    public static func authenticatePlayer() {
        let localPlayer = GKLocalPlayer.localPlayer()
        localPlayer.authenticateHandler = {
            (viewController, error) in
            if let vc = viewController {
                if let nc = vc.navigationController {
                    nc.presentViewController(vc, animated: true, completion: nil)
                }
            } else if let e = error {
                AlertManager.showError(e)
            }
        }
    }
    
    public static func getSavedGames(retriever: PSavedGamesRetriever) {
        let localPlayer = GKLocalPlayer.localPlayer()
        localPlayer.fetchSavedGamesWithCompletionHandler({
            (savedGames, error) in
            if let sg = savedGames {
                var manualSaves = [ManualSave]()
                for g in sg {
                    manualSaves.append(ManualSave(gkSave: g))
                }
                retriever.savedGamesRetrieved(manualSaves)
            } else if let e = error {
                AlertManager.showError(e)
            }
        })
    }
    
    public static func save(data: NSData, name: String) {
        let localPlayer = GKLocalPlayer.localPlayer()
        localPlayer.saveGameData(data, withName: name, completionHandler: {
            data, error in
            if let e = error {
                AlertManager.showError(e)
            } else {
                let saved = StringLocalizer.getGUIString("saved")
                let saveSuccessful = StringLocalizer.getGUIString("saveSuccessful")
                AlertManager.showMessage(saved, message: saveSuccessful)
                if let o = observer {
                    o.saveManagerUpdated()
                }
            }
        })
    }
    
    public var name: String! {
        return gkSave.name
    }
    
    public var date: NSDate! {
        return gkSave.modificationDate
    }
    
    private var gkSave: GKSavedGame
    
    private init(gkSave: GKSavedGame) {
        self.gkSave = gkSave
    }
    
    public func load(loader: PSavedGamesLoader) {
        gkSave.loadDataWithCompletionHandler({
            data, error in
            loader.savedGamesLoaded(data, error: error)
        })
    }
    
    public func delete() {
        let localPlayer = GKLocalPlayer.localPlayer()
        localPlayer.deleteSavedGamesWithName(name, completionHandler: {
            error in
            if let e = error {
                AlertManager.showError(e)
            } else if let o = ManualSave.observer {
                o.saveManagerUpdated()
            }
        })
    }
}