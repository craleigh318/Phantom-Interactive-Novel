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
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        if let label = cell.textLabel {
            label.text = NSLocalizedString("voiceOver", tableName: "GUIElements", comment: "")
        }
        cell.accessoryView = toggle
    }
    
    func onSelect() {
        
    }
}