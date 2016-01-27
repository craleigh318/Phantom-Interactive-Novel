//
//  StoryImage.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

/*
Displays the image for the visual novel reader.
*/
class StoryImage {
    
    /*
    All images displayed here should be in 16:9 aspect ratio.
    */
    static let imageAspectRatio: CGFloat = (16.0 / 9.0)
    
    /*
    Use this to set the current image.
    */
    var image: NSImage? {
        get {
            return view.image
        }
        set {
            view.image = newValue
        }
    }
    
    /*
    Add this to the desired superview.
    */
    private(set) var view: NSImageView = CustomNSImageView()
    
    /*
    Initializes.
    */
    init() {
        view.imageScaling = .ScaleAxesIndependently
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}