//
//  PStoryPage.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Contains an image and text for a part of the story.
*/
public protocol PStoryPage {
    
    /*
    The page image.
    */
    var image: UIImage {
        get
    }
    
    /*
    The page text.
    */
    var text: String {
        get
    }
    
    /*
    Continues the story from this page.
    */
    func continueStory()
}