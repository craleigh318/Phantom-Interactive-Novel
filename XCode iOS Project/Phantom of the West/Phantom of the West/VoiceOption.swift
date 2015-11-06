//
//  VoiceOption.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Voiceover option.
*/
class VoiceOption: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    private var toggle: UISwitch
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        toggle = UISwitch()
        toggle.on = SaveManager.voiceover
        toggle.addTarget(self, action: "onSwitchFlip", forControlEvents: .ValueChanged)
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        if let label = cell.textLabel {
            label.text = StringLocalizer.getGUIString("voiceOver")
        }
        cell.accessoryView = toggle
    }
    
    func onSelect() {
    }
    
    dynamic func onSwitchFlip() {
        SaveManager.voiceover = toggle.on
    }
}