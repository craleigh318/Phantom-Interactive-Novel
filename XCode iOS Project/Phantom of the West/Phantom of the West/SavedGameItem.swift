//
//  SavedGameItem.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/26.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Cell that represents a save game.
*/
class SavedGameItem: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    private(set) var savedGame: ManualSave
    
    /*
    Initializes
    */
    init(savedGame: ManualSave) {
        self.savedGame = savedGame
        cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = savedGame.name
        }
        if let detailLabel = cell.detailTextLabel {
            let date = NSDateFormatter.localizedStringFromDate(savedGame.date, dateStyle: .ShortStyle, timeStyle: .NoStyle)
            detailLabel.text = date
        }
    }
    
    func overwrite() {
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
    
    func load() {
        let potw = AppDelegate.potwStory
        savedGame.load(potw)
    }
    
    func delete() {
        ManualSave.localPlayer.deleteSavedGamesWithName(savedGame.name, completionHandler: {
            error in
            if let e = error {
                AlertManager.showError(e)
            }
        })
    }
    
    func onSelect() {
        load()
    }
}
