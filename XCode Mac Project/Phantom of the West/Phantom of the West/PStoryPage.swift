//
//  PStoryPage.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

/*
Contains an image and text for a part of the story.
*/
public protocol PStoryPage {
    
    /*
    The page image.
    */
    var image: NSImage {
        get
    }
    
    /*
    The page text.
    */
    var text: String {
        get
    }
    
    /*
    Continues the the next part of this story page.
    */
    func continuePage()
}