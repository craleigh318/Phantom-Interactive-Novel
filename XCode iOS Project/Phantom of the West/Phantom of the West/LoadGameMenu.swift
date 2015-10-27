//
//  LoadGameMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/26.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import GameKit
import UIKit

/*
An options submenu that handles in-app purchases.
*/
public class LoadGameMenu: OptionsMenu, PSavedGamesRetriever {
    
    
    
    private var options = [POptionsMenuItem]()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = StringLocalizer.getGUIString("load")
    }
    
    public func savedGamesRetrieved(savedGames: [GKSavedGame]?, error: NSError?) {
        
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let targetIndex = indexPath.row
        return options[targetIndex].cell
    }
    
    override public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        OptionsMenu.selectedRow(tableView, indexPath: indexPath, optionsList: options)
    }
}