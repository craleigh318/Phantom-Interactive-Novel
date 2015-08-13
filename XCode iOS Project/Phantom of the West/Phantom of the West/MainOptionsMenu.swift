//
//  MainOptionsMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
The first options menu displayed.
*/
public class MainOptionsMenu: OptionsMenu {
    
    private lazy var saveGame: SaveGame = SaveGame()
    
    private lazy var loadGame: LoadGame = LoadGame()
    
    private lazy var voiceOption: VoiceOption = VoiceOption()
    
    private lazy var toIAPMenu: ToIAPMenu = {
        let newMenu = ToIAPMenu()
        newMenu.viewController = self
        return newMenu
    }()
    
    private lazy var options: [POptionsMenuItem] = [self.saveGame, self.loadGame, self.voiceOption, self.toIAPMenu]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("options", tableName: "GUIElements", comment: "")
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