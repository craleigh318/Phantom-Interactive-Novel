//
//  OptionsMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/23/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Lists game options in a table view.
*/
public class OptionsMenu: UITableViewController {
    
    /*
    Used to create table.
    */
    static func selectedRow(tableView: UITableView, indexPath: NSIndexPath, option: POptionsMenuItem) {
        option.onSelect()
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
