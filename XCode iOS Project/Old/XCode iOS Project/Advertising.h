//
//  Advertising.h
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/22/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#ifndef XCode_iOS_Project_Advertising_h
#define XCode_iOS_Project_Advertising_h
#import <Foundation/Foundation.h>
#import <iAd/iAd.h>

/*
 Contains methods for iAd displays.
 */
@interface Advertising : NSObject 

/*
 Returns true if the user should be shown iAds.
 For example, the user might not have bought advertisment removal.
 */
+ (BOOL) shouldDisplayAdvertisement;

/*
 Returns iAd banner.
 */
+ (ADBannerView *) getIAdBanner;

@end

#endif
