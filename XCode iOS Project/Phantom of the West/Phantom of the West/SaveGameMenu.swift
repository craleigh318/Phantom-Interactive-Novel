//
//  SaveGameMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/29.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
An options submenu that game saving.
*/
class SaveGameMenu: SaveLoadGameMenu, PSavedGamesRetriever {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "newSave")
        title = StringLocalizer.getGUIString("save")
        ManualSave.getSavedGames(self)
    }
    
    func savedGamesRetrieved(savedGames: [ManualSave]) {
        var newItems = [SavedGameItem]()
        for sg in savedGames {
            let i = OverwritableSavedGameItem(savedGame: sg)
            newItems.append(i)
        }
        options = newItems
        tableView.reloadData()
    }
    
    dynamic func newSave() {
        let title = StringLocalizer.getGUIString("saveName")
        let message = StringLocalizer.getGUIString("saveNameMessage")
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler(nil)
        let stringCancel = StringLocalizer.getGUIString("cancel")
        let actionCancel = UIAlertAction(title: stringCancel, style: .Cancel, handler: nil)
        let actionOK = UIAlertAction(title: Constants.okTitle, style: .Default, handler: {
            _ in
            if let textFields = alert.textFields {
                if let input = textFields[0].text {
                    self.saveCurrentState(input)
                }
            }
        })
        alert.addAction(actionCancel)
        alert.addAction(actionOK)
        presentViewController(alert, animated: true, completion: {
            ManualSave.getSavedGames(self)
        })
    }
    
    func saveCurrentState(name: String) {
        let potw = AppDelegate.potwStory
        if let data = potw.saveGame() {
            ManualSave.save(data, name: name)
        }
    }
}