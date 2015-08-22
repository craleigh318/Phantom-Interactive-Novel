//
//  StoryImage.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

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
    var image: UIImage? {
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
    private(set) var view: UIImageView
    
    /*
    Initializes.
    */
    init() {
        view = UIImageView()
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.layer.magnificationFilter = kCAFilterNearest
    }
}