//
//  OptionsMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/23/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

public class OptionsMenu: UITableViewController {
    
    private lazy var options: [POptionsMenuItem] = []
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = "Options"
        options.append(SaveGame())
        tableView.reloadData()
    }
    
    override public func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 0
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var numNonHiddenItems = 0
        for thisOption in options {
            if !thisOption.hidden {
                ++numNonHiddenItems
            }
        }
        return numNonHiddenItems
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Loop to get cell.
        let targetIndex = indexPath.indexAtPosition(0)
        var nonHiddenI = 0
        for thisOption in options {
            if !thisOption.hidden {
                if nonHiddenI >= targetIndex {
                    let thisCell = thisOption.cell
                    return thisCell
                } else {
                    ++nonHiddenI
                }
            }
        }
        
        //Generate a blank cell if no cell found.
        let cell = tableView.dequeueReusableCellWithIdentifier("blankCell", forIndexPath: indexPath) as! UITableViewCell
        return cell
    }
    
    public override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedCell = self.tableView(tableView, cellForRowAtIndexPath: indexPath) as? POptionsMenuItem
        if let sc = selectedCell {
            sc.onSelect()
        }
    }
}
