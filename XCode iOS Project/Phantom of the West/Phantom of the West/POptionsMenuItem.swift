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
    The cell graphic.
    */
    var cell: UITableViewCell {
        get
    }
    
    /*
    The action to perform if the user selects this options.
    */
    func onSelect()
    
    /*
    Set to false whenever this option should not show up in the view.
    */
    var hidden: Bool {
        get
    }
}