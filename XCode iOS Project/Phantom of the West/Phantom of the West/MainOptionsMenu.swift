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
    
    private lazy var saveGame: SaveGame = {
        let newMenu = SaveGame()
        newMenu.displayingVC = self
        return newMenu
    }()
    
    private lazy var loadGame: LoadGame = {
        let newMenu = LoadGame()
        newMenu.displayingVC = self
        return newMenu
        }()
    
    private lazy var newGame: NewGame = {
        let newMenu = NewGame()
        newMenu.displayingVC = self
        return newMenu
        }()
    
    private lazy var voiceOption: VoiceOption = VoiceOption()
    
    private lazy var toIAPMenu: ToIAPMenu = {
        let newMenu = ToIAPMenu()
        newMenu.viewController = self
        return newMenu
    }()
    
    private lazy var options: [POptionsMenuItem] = [self.saveGame, self.loadGame, self.newGame, self.voiceOption, self.toIAPMenu]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = StringLocalizer.getGUIString("options")
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