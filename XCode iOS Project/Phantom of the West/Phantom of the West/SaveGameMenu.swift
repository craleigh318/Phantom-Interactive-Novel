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
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "")
        title = StringLocalizer.getGUIString("save")
        ManualSave.getSavedGames(self)
    }
    
    func savedGamesRetrieved(savedGames: [ManualSave]) {
        var newItems = [LoadableSavedGameItem]()
        for sg in savedGames {
            let i = LoadableSavedGameItem(savedGame: sg)
            newItems.append(i)
        }
        options = newItems
    }
}