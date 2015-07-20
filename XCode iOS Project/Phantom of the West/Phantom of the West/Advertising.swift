//
//  Advertising.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/19/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import iAd

/*
Contains functions for iAd displays.
*/
class Advertising: NSObject, ADBannerViewDelegate {
    
    /*
    Set to true if the user should be shown iAds.
    For example, the user might not have bought advertisment removal.
    */
    var shouldDisplayAdvertisement: Bool
    
    /*
    Add this subview to the top edge of the screen.
    */
    private(set) var bannerAdvertisement: ADBannerView
    
    /*
    Initializes.
    */
    override init() {
        shouldDisplayAdvertisement = false
        bannerAdvertisement = ADBannerView(adType: ADAdType.Banner)
        super.init()
    }
}