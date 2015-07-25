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
    
    private(set) var labelText: String?
    
    var accessoryView: UIView? {
        return toggle
    }
    
    private var toggle: UISwitch
    
    /*
    Initializes
    */
    init() {
        labelText = "Voice-Over"
        toggle = UISwitch()
    }
    
    func onSelect() {
        
    }
}