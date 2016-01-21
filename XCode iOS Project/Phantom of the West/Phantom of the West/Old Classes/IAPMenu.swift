//
//  IAPMenu.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/26.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import StoreKit
import UIKit

/*
An options submenu that handles in-app purchases.
*/
public class IAPMenu: OptionsMenu, PIAPRetreiver {
    
    static var productRemoveAds: SKProduct?
    
    private static let iapRemoveAds = "removeAdvertisements"
    
    private static func setLabelTextToPrice(label: UILabel, product: SKProduct) {
        let formattedPrice = StoreManager.formattedPrice(product)
        label.text = formattedPrice
    }
    
    private lazy var storeManager = StoreManager.manager
    
    private lazy var removeAds: RemoveAds = RemoveAds()
    
    private lazy var restorePurchases: RestorePurchases = RestorePurchases()
    
    private lazy var options: [POptionsMenuItem] = [self.removeAds, self.restorePurchases]
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        title = StringLocalizer.getGUIString("inAppPurchases")
        storeManager.retreiver = self
        let productIDs: Set<String> = [IAPMenu.iapRemoveAds]
        storeManager.updateInfo(productIDs)
    }
    
    override public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return options.count
    }
    
    override public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let targetIndex = indexPath.row
        return options[targetIndex].cell
    }
    
    override public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let i = indexPath.row
        let selectedCell = options[i]
        OptionsMenu.selectedRow(tableView, indexPath: indexPath, option: selectedCell)
    }
    
    func inAppPurchaseInfoRetreived(request: SKProductsRequest,
        didReceiveResponse response: SKProductsResponse) {
            let validProducts = response.products
            let pra = validProducts[0]
            IAPMenu.productRemoveAds = pra
            if let lra = removeAds.cell.textLabel {
                lra.text = pra.localizedTitle
            }
            if SaveManager.purchasedAdRemoval {
                addCheckmark(removeAds.cell)
            } else if let dlra = removeAds.cell.detailTextLabel {
                IAPMenu.setLabelTextToPrice(dlra, product: pra)
            }
    }
    
    func inAppPurchaseUpdated(queue: SKPaymentQueue,
        updatedTransactions transactions: [SKPaymentTransaction]) {
            for tRemoveAds in transactions {
                let state = tRemoveAds.transactionState
                let purchased = (state == SKPaymentTransactionState.Purchased) || (state == SKPaymentTransactionState.Restored)
                if purchased {
                    SaveManager.purchasedAdRemoval = true
                    queue.finishTransaction(tRemoveAds)
                    addCheckmark(removeAds.cell)
                } else if state == SKPaymentTransactionState.Failed {
                    queue.finishTransaction(tRemoveAds)
                    if let e = tRemoveAds.error {
                        AlertManager.showError(e)
                    }
                }
            }
    }
    
    private func addCheckmark(cell: UITableViewCell) {
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.accessoryType = .Checkmark
    }
}