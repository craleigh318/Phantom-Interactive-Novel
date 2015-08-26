//
//  RestorePurchases.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/26.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Menu to remove advertisements
*/
class RestorePurchases: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = StringLocalizer.getGUIString("restorePurchases")
        }
    }
    
    func onSelect() {
        StoreManager.paymentQueue.restoreCompletedTransactions()
    }
}
