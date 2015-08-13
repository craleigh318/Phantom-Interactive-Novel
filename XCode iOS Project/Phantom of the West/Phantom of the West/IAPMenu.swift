//
//  IAPMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/26.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
An options submenu that handles in-app purchases.
*/
public class IAPMenu: OptionsMenu {
    
    private lazy var removeAds: RemoveAds = RemoveAds()
    
    private lazy var restorePurchases: RestorePurchases = RestorePurchases()
    
    private lazy var options: [POptionsMenuItem] = [self.removeAds, self.restorePurchases]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = NSLocalizedString("inAppPurchases", tableName: "GUIElements", comment: "")
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let targetIndex = indexPath.row
        return options[targetIndex].cell
    }
    
    override public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        OptionsMenu.selectedRow(tableView, indexPath: indexPath, optionsList: options)
    }
}