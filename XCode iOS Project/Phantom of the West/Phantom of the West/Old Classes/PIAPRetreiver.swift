//
//  PIAPRetreiver.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/11/01.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import StoreKit

protocol PIAPRetreiver: class {
    func inAppPurchaseInfoRetreived(request: SKProductsRequest,
    didReceiveResponse response: SKProductsResponse)
    
    func inAppPurchaseUpdated(queue: SKPaymentQueue,
        updatedTransactions transactions: [SKPaymentTransaction])
}