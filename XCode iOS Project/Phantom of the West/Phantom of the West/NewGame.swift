//
//  NewGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/13.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
New Game option.
*/
class NewGame: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = NSLocalizedString("newGame", tableName: "GUIElements", comment: "")
        }
    }
    
    func onSelect() {
        AppDelegate.potwStory.newGame()
    }
}