//
//  StoryViewIOSObjC.h➧
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/20/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/CALayer.h>
#import <UIKit/UIKit.h>
#import "PStoryViewObjC.h"
#import "PauseMenu.h"
#import "StoryNavigator.h"
#import "StoryImageAndTextView.h"
#import "TextViewAndNavigator.h"
#include "StoryViewIOSCPP.h"

/*
 A story view for iOS devices.
 */
@interface StoryViewIOSObjC : UIView <PStoryViewObjC, PStoryNavigatorObserver>

@property UIViewController <UITableViewDelegate, UIScrollViewDelegate> * controller;

- (id) initWithController : (UIViewController <UITableViewDelegate> *) controller;

/*
 Initializes uiView.
 */
- (void) initializeUIView;

/*
 Sets the text of the UI's dialogue box.
 */
- (void) setImageViewImage : (UIImage*) newImage;

    /*
     Sets the text of the UI's dialogue box.
     */
- (void) setTextViewText : (NSString*) newText;
    
    @end