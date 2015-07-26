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
    
    lazy var cell: UITableViewCell = self.getRemoveAdsCell(true)
    
    /*
    Initializes
    */
    init() {
    }
    
    private func getRemoveAdsCell(withArrow: Bool) -> UITableViewCell {
        let newCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        if let label = newCell.textLabel {
            label.text = "Remove Ads"
        }
        if withArrow {
            newCell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }
        return newCell
    }
    
    func onSelect() {
        
    }
}
