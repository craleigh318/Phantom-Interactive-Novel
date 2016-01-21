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
    }
    
    func onSelect() {
        if let pra = IAPMenu.productRemoveAds {
            StoreManager.manager.buy(pra)
        }
    }
}
