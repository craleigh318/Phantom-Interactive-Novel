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
    
    public override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let selectedCell = self.tableView(tableView, cellForRowAtIndexPath: indexPath) as? POptionsMenuItem {
            selectedCell.onSelect()
        }
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
}
