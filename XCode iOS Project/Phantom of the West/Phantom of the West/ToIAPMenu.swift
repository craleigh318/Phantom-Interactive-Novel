//
//  ToIAPMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/26.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Pushes the In-App Purchasing Menu onto the view controller..
*/
class ToIAPMenu: POptionsMenuItem {
    
    /*
    The view controller displaying this cell.
    */
    var viewController: UIViewController?
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = "Remove Ads"
        }
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
    }
    
    func onSelect() {
        if let vc = viewController {
            if let nc = vc.navigationController {
                nc.pushViewController(IAPMenu(), animated: true)
            }
        }
    }
}