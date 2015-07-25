//
//  LoadGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Load Game option.
*/

class LoadGame: POptionsMenuItem {
    
    private(set) var labelText: String?
    
    private(set) var accessoryView: UIView?
    
    /*
    Initializes
    */
    init() {
        labelText = "Load"
    }
    
    func onSelect() {
        
    }
}