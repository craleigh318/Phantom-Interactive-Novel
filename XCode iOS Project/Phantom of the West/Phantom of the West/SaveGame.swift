//
//  SaveGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Save Game option.
*/

class SaveGame: POptionsMenuItem {
    
    let hidden: Bool = false
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "saveGame")
        if let label = cell.textLabel {
            label.text = "Save"
        }
    }
    
    func onSelect() {
        
    }
}