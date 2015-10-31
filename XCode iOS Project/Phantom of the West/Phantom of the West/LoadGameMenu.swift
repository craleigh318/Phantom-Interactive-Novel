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
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        super.tableView(tableView, didSelectRowAtIndexPath: indexPath)
        if let nc = navigationController {
            nc.popToRootViewControllerAnimated(true)
        }
    }
    
    func savedGamesRetrieved(savedGames: [ManualSave]) {
        var newItems = [SavedGameItem]()
        for sg in savedGames {
            let i = LoadableSavedGameItem(savedGame: sg)
            newItems.append(i)
        }
        options = newItems
        tableView.reloadData()
    }
}