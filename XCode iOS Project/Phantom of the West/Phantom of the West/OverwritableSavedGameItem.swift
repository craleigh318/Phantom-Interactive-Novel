//
//  OverwritableSavedGameItem.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/27.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Overrides the existing saved game when selected
*/
class OverwritableSavedGameItem: SavedGameItem {
    
    override func onSelect() {
        let potw = AppDelegate.potwStory
        if let newSave = potw.saveGame() {
            ManualSave.localPlayer.saveGameData(newSave, withName: savedGame.name, completionHandler: {
                data, error in
                if let e = error {
                    AlertManager.showError(e)
                } else {
                    let saved = StringLocalizer.getGUIString("saved")
                    let saveSuccessful = StringLocalizer.getGUIString("saveSuccessful")
                    AlertManager.showMessage(saved, message: saveSuccessful)
                }
            })
        }
    }
}
