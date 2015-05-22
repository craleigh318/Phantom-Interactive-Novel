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

/*
 A story view for iOS devices.
 */
@interface StoryViewIOSObjC : UIView <PStoryViewObjC>
    
    /*
     Method to call when the continue button is pressed.
     */
- (void) onButtonContinue;
    
    /*
     Method to call when the previous-choice button is pressed.
     */
- (void) onButtonPrevious;
    
    /*
     Method to call when the next-choice button is pressed.
     */
- (void) onButtonNext;
    
    /*
     Initializes uiTextView
     */
- (UITextView*) getUITextView : (CGRect) textViewRectangle;
    
    /*
     Sets the text of the UI's dialogue box.
     */
- (void) setTextViewText : (NSString*) newText;
    
    /*
     If set to true, enables the appropriate buttons for user choice selection.
     */
- (void) setChoiceSelectorEnabled : (BOOL) enabled;
    
    @end