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
}

+ (GameView *) getGameView : (UIViewController <ADBannerViewDelegate, UITableViewDelegate> *) controller {
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
    self.adBannerContainer = [self initializeAdBannerContainer];
    // Add advertisment, if applicable.
        //if ([Advertising shouldDisplayAdvertisement]) {
    if ([Advertising shouldDisplayAdvertisement]) {
            ADBannerView * adBanner = [Advertising getIAdBanner];
            adBanner.delegate = controller;
            adBanner.hidden = TRUE;
            [self.adBannerContainer addSubview:adBanner];
        }
        else {
            [self addConstraint:[NSLayoutConstraint constraintWithItem:self.adBannerContainer attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0 constant:0.0]];
        }
//[self addAdBannerConstraints:adBannerContainer];

    // Initialize main view.
    self.storyView = [[StoryViewIOSObjC alloc] init];
    self.storyView.translatesAutoresizingMaskIntoConstraints = false;
    [self addSubview:self.storyView];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.storyView attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.storyView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.adBannerContainer attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.storyView attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self.storyView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeBottom multiplier:1.0 constant:0.0]];
}

- (UIView *) initializeAdBannerContainer {
    UIView * container = [[UIView alloc] init];
    container.translatesAutoresizingMaskIntoConstraints = false;
    [self addSubview:container];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:container attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:container attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0]];
    [self addConstraint:[NSLayoutConstraint constraintWithItem:container attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeRight multiplier:1.0 constant:0.0]];
    return container;
}
    
    @end