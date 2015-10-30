//
//  LoadGameMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/26.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
An options submenu that handles game loading.
*/
class LoadGameMenu: SaveLoadGameMenu, PSavedGamesRetriever {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem()
        title = StringLocalizer.getGUIString("load")
        ManualSave.getSavedGames(self)
    }
    
    func savedGamesRetrieved(savedGames: [ManualSave]) {
        var newItems = [LoadableSavedGameItem]()
        for sg in savedGames {
            let i = LoadableSavedGameItem(savedGame: sg)
            newItems.append(i)
        }
        options = newItems
        tableView.reloadData()
    }
}