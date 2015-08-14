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
class StoreManager: NSObject, SKProductsRequestDelegate {
    
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
    
    private var labelRemovesAds: UILabel?
    
    func productsRequest(request: SKProductsRequest!,
        didReceiveResponse response: SKProductsResponse!) {
            let validProducts = response.products
            let productRemoveAds = validProducts[0] as? SKProduct
            if let pra = productRemoveAds {
                if let lra = labelRemovesAds {
                    StoreManager.setLabelTextToPrice(lra, product: pra)
                }
            }
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
    
    
}