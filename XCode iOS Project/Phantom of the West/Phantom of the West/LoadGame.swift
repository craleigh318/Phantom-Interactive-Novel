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
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "loadGame")
        if let label = cell.textLabel {
            label.text = "Load"
        }
    }
    
    func onSelect() {
        
    }
}