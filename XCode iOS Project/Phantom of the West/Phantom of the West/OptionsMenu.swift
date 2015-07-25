//
//  OptionsMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/23/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

public class OptionsMenu: UITableViewController {
    
    private lazy var saveGame: SaveGame = SaveGame()
    
    private lazy var loadGame: LoadGame = LoadGame()
    
    private lazy var voiceOption: VoiceOption = VoiceOption()
    
    private lazy var options: [POptionsMenuItem] = [self.saveGame, self.loadGame, self.voiceOption]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Options"
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let targetIndex = indexPath.row
        let id = "cell\(targetIndex)"
        /*if let reusedCell = tableView.dequeueReusableCellWithIdentifier(id, forIndexPath: indexPath) as? UITableViewCell {
            return reusedCell
        }*/
        let newCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: id)
        let selectedOption = options[targetIndex]
        if let label = newCell.textLabel {
            label.text = selectedOption.labelText
        }
        newCell.accessoryView = selectedOption.accessoryView
        return newCell
    }
    
    public override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedOption = self.tableView(tableView, cellForRowAtIndexPath: indexPath) as? POptionsMenuItem
        if let so = selectedOption {
            so.onSelect()
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
