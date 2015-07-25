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
    
    let hidden: Bool = false
    
    private(set) var cell: UITableViewCell
    
    private var toggle: UISwitch
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "saveGame")
        toggle = UISwitch()
        if let label = cell.textLabel {
            label.text = "Voice-Over"
        }
        //cell.accessoryView = toggle
    }
    
    func onSelect() {
        
    }
}