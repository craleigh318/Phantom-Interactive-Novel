//
//  RemoveAds.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Menu to remove advertisements
*/
class RemoveAds: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = NSLocalizedString("removeAds", tableName: "GUIElements", comment: "")
        }
        if let detailLabel = cell.detailTextLabel {
            detailLabel.text = "Free"
        }
    }
    
    func onSelect() {
        
    }
}
