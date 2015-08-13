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
    
    private var removeAdvertisements: SKProduct?
    
    override init() {
        super.init()
        let productIDs = NSSet(object: "removeAdvertisements")
    }
    
    func productsRequest(request: SKProductsRequest!,
        didReceiveResponse response: SKProductsResponse!) {
            let validProducts = response.products
            removeAdvertisements = validProducts[0] as? SKProduct
    }
}