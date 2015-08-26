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
    
    public static let localPlayer = GKLocalPlayer.localPlayer()
    
    public static func save(data: NSData, name: String) {
        localPlayer.saveGameData(data, withName: name, completionHandler: nil)
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
        ManualSave.localPlayer.deleteSavedGamesWithName(name, completionHandler: nil)
    }
}