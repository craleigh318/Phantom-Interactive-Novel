//
//  StoreManager.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/12.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import StoreKit

/*
Handles interactions with the App Store.
*/
class StoreManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    static let manager: StoreManager = StoreManager()
    
    static let paymentQueue: SKPaymentQueue = SKPaymentQueue.defaultQueue()
    
    /*
    Returns a localized string from the price of the specified product.
    */
    static func formattedPrice(product: SKProduct) -> String? {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = product.priceLocale
        let formattedPrice = formatter.stringFromNumber(product.price)
        return formattedPrice
    }
    
    
    
    weak var retreiver: PIAPRetreiver?
    
    private override init() {
        super.init()
        StoreManager.paymentQueue.addTransactionObserver(self)
    }
    
    func productsRequest(request: SKProductsRequest,
        didReceiveResponse response: SKProductsResponse) {
            if let r = retreiver {
                r.inAppPurchaseInfoRetreived(request, didReceiveResponse: response)
            }
    }
    
    func paymentQueue(queue: SKPaymentQueue,
        updatedTransactions transactions: [SKPaymentTransaction]) {
            if let r = retreiver {
                r.inAppPurchaseUpdated(queue, updatedTransactions: transactions)
            }
    }
    
    func paymentQueue(queue: SKPaymentQueue,
        restoreCompletedTransactionsFailedWithError error: NSError) {
            AlertManager.showError(error)
    }
    
    /*
    Once the in-app purchase prices are retreived, the text of the specified labels will be set to them.
    */
    func updateInfo(productIDs: Set<String>) {
        let newRequest = SKProductsRequest(productIdentifiers: productIDs)
        newRequest.delegate = self
        newRequest.start()
    }
    
    /*
    Buy the specified in-app product
    */
    func buy(product: SKProduct) {
        let canPay = SKPaymentQueue.canMakePayments()
        if canPay {
            let newPayment = SKPayment(product: product)
            StoreManager.paymentQueue.addPayment(newPayment)
        } else {
            let cannotPay = StringLocalizer.getGUIString("cannotPay")
            let cannotPayMessage = StringLocalizer.getGUIString("cannotPayMessage")
            AlertManager.showMessage(cannotPay, message: cannotPayMessage)
        }
    }
}