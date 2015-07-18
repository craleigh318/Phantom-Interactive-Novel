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
    
    static let imageAspectRatioInverse: CGFloat = (9.0 / 16.0)
    
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
        setUpView()
    }
    
    private func setUpView() {
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.layer.magnificationFilter = kCAFilterNearest
    }
}