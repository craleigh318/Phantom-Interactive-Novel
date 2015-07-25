//
//  POptionsMenuItem.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/23/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Represents a cell in the Options Menu table.
*/
protocol POptionsMenuItem {
    
    /*
    The text on the cell label.
    */
    var labelText: String? {
        get
    }
    
    /*
    An optional subview that is displayed alongside the label.
    */
    var accessoryView: UIView? {
        get
    }
    
    /*
    The action to perform if the user selects this options.
    */
    func onSelect()
}