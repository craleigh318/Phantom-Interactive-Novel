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
    var shouldDisplayAdvertisement: Bool {
        get {
            return bannerAdvertisement != nil
        }
        set {
            removeConstraints()
            if newValue {
                let ba = ADBannerView(adType: ADAdType.Banner)
                ba.autoresizingMask = UIViewAutoresizing.FlexibleHeight
                ba.hidden = true
                ba.delegate = self
                view.addSubview(ba)
                addConstraintsWithAd(ba)
                bannerAdvertisement = ba
            } else {
                if let ba = bannerAdvertisement {
                    ba.removeFromSuperview()
                    bannerAdvertisement = nil
                    addConstraintsWithoutAd()
                }
            }
        }
    }
    
    /*
    Add this subview to the top edge of the screen.
    */
    private(set) var view: UIView
    
    private var bannerAdvertisement: ADBannerView?
    
    private var constraints: [NSLayoutConstraint]
    
    /*
    Initializes.
    */
    override init() {
        view = UIView()
        constraints = []
        super.init()
        view.translatesAutoresizingMaskIntoConstraints = false
        addConstraintsWithoutAd()
    }
    
    func bannerViewDidLoadAd(banner: ADBannerView!) {
        banner.hidden = false
    }
    
    func bannerView(banner: ADBannerView!,
        didFailToReceiveAdWithError error: NSError!) {
            shouldDisplayAdvertisement = false
            NSLog("%@", error)
    }
    
    private func addConstraintsWithoutAd() {
        constraints += [
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: 0.0)
        ]
        addConstraints()
    }
    
    private func addConstraintsWithAd(ba: ADBannerView) {
        constraints += [
            NSLayoutConstraint(item: view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: ba, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
        ]
        addConstraints()
    }
    
    private func addConstraints() {
        view.addConstraints(constraints)
    }
    
    private func removeConstraints() {
        view.removeConstraints(constraints)
        constraints.removeAll(keepCapacity: false)
    }
}