//
//  PStoryViewObjC.h
//  XCode iOS Project
//
//  Created by Christopher Raleigh on 2015/20/01.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 Allows C++ to access StoryViewIOSObjC.
 */
@protocol PStoryViewObjC

/*
 Sets the text of the UI's dialogue box.
 */
- (void) setImageViewImage : (UIImage*) newImage;

    /*
     Sets the text of the UI's dialogue box.
     */
- (void) setTextViewText : (NSString*) newText;
    
    /*
     If set to true, enables the appropriate buttons for user choice selection.
     */
- (void) setChoiceSelectorEnabled : (BOOL) enabled;
    
    @end