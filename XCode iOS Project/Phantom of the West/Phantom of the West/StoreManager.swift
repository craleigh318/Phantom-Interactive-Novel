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
    
    private static let iapRemoveAds: NSObject = "removeAdvertisements"
    
    /*
    Returns a localized string from the price of the specified product.
    */
    private static func formattedPrice(product: SKProduct) -> String? {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = product.priceLocale
        let formattedPrice = formatter.stringFromNumber(product.price)
        return formattedPrice
    }
    
    private static func setLabelTextToPrice(label: UILabel, product: SKProduct) {
        let formattedPrice = StoreManager.formattedPrice(product)
        label.text = formattedPrice
    }
    
    
    
    var productRemoveAds: SKProduct?
    
    private var labelRemovesAds: UILabel?
    
    private override init() {
        super.init()
        StoreManager.paymentQueue.addTransactionObserver(self)
    }
    
    func productsRequest(request: SKProductsRequest!,
        didReceiveResponse response: SKProductsResponse!) {
            let validProducts = response.products
            productRemoveAds = validProducts[0] as? SKProduct
            if let pra = productRemoveAds {
                if let lra = labelRemovesAds {
                    StoreManager.setLabelTextToPrice(lra, product: pra)
                }
            }
    }
    
    func paymentQueue(queue: SKPaymentQueue!,
        updatedTransactions transactions: [AnyObject]!) {
            if let paymentTransactions = transactions as? [SKPaymentTransaction] {
                for tRemoveAds in paymentTransactions {
                    let state = tRemoveAds.transactionState
                    let purchased = (state == SKPaymentTransactionState.Purchased) || (state == SKPaymentTransactionState.Restored)
                    if purchased {
                        SaveManager.purchasedAdRemoval = true
                        queue.finishTransaction(tRemoveAds)
                    } else if state == SKPaymentTransactionState.Failed {
                        queue.finishTransaction(tRemoveAds)
                        AlertManager.showError(tRemoveAds.error)
                    }
                }
            }
    }
    
    func paymentQueue(queue: SKPaymentQueue!,
        restoreCompletedTransactionsFailedWithError error: NSError!) {
            AlertManager.showError(error)
    }
    
    /*
    Once the in-app purchase prices are retreived, the text of the specified labels will be set to them.
    */
    func updateLabelsWithPrices(newLabelRemovesAds: UILabel) {
        labelRemovesAds = newLabelRemovesAds
        let productIDs: Set<NSObject> = [StoreManager.iapRemoveAds]
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
            let alert = UIAlertView(title: cannotPay, message: cannotPayMessage, delegate: nil, cancelButtonTitle: Constants.okTitle)
            alert.show()
        }
    }
}