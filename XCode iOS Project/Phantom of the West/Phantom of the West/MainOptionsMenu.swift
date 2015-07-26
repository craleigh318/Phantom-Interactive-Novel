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
    
    private lazy var removeAds: RemoveAds = RemoveAds()
    
    private lazy var options: [POptionsMenuItem] = [self.saveGame, self.loadGame, self.voiceOption, self.removeAds]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Options"
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let targetIndex = indexPath.row
        return options[targetIndex].cell
    }
}