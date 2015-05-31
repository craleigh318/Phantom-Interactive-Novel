//
//  GameView.mm
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/13/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import "GameView.h"

@implementation GameView {
    UIViewController <ADBannerViewDelegate, UITableViewDelegate> * controller;
    UIView * adBannerContainer;
}

+ (UIView *) getGameView : (UIViewController <ADBannerViewDelegate, UITableViewDelegate> *) controller {
        return [[GameView alloc] initWithController:controller];
    }

- (id) initWithController: (UIViewController <ADBannerViewDelegate, UITableViewDelegate> *) c {
    self = [super initWithFrame:[[UIScreen mainScreen] bounds]];
    if (self) {
        controller = c;
        [self initializeGameView];
    }
    return self;
}

- (void) initializeGameView {
    // Add advertisment, if applicable.
        if ([Advertising shouldDisplayAdvertisement]) {
            ADBannerView * adBanner = [Advertising getIAdBanner];
            adBannerContainer = adBanner;
            adBanner.delegate = controller;
            adBanner.hidden = TRUE;
            [self addSubview:adBanner];
            
        }
        else {
            adBannerContainer = [[UIView alloc] init];
            [self addConstraint:[NSLayoutConstraint constraintWithItem:adBannerContainer attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:0.0]];
        }
[self addAdBannerConstraints:adBannerContainer];

    // Initialize main view.
    StoryViewIOSObjC * storyView = [[StoryViewIOSObjC alloc] init];
    [self addSubview:storyView];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:adBannerContainer attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:storyView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
}

- (void) addAdBannerConstraints: (UIView *) myAdBanner {
    myAdBanner.translatesAutoresizingMaskIntoConstraints = false;
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myAdBanner attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:controller.topLayoutGuide attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:myAdBanner attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
}
    
    @end