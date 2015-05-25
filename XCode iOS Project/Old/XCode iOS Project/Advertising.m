//
//  Advertising.m
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/22/05.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "Advertising.h"

@implementation Advertising
{
}

+ (BOOL) shouldDisplayAdvertisement;
{
    return TRUE;
}

+ (ADBannerView *) getIAdBanner
{
    ADBannerView * newIAdBanner = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
    return newIAdBanner;
}

@end