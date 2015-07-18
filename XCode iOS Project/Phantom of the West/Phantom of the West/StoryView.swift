//
//  StoryView.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
The main part of the view.
*/
class StoryView {
    
    /*
    Buttons for user choice selection.
    */
    var previousAndNextEnabled: Bool {
        get {
            return navigator.previousAndNextEnabled
        }
        set {
            navigator.previousAndNextEnabled = newValue
        }
    }
    
    /*
    Button to continue the story.
    Set to false when the end of the story is reached.
    */
    var continueEnabled: Bool {
        get {
            return navigator.continueEnabled
        }
        set {
            navigator.continueEnabled = newValue
        }
    }
    
    /*
    Use this to set the current image.
    */
    var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
        }
    }
    
    /*
    Use this to set the current text.
    */
    var text: String! {
        get {
            return textView.text
        }
        set {
            textView.text = newValue
        }
    }
    
    private var handler: PStoryNavigator
    
    private var navigator: StoryNavigator
    
    private var view: UIView
    
    private var imageView: StoryImage
    
    private var textView: StoryText
    
    private var textViewUniversalConstraints, textViewPortraitConstraints, textViewLandscapeConstraints, navigatorUniversalConstraints, navigatorPortraitConstraints, navigatorLandscapeConstraints: [NSLayoutConstraint]
    
    private lazy var imageViewUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem:navigator, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: imageView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem:imageView, attribute: NSLayoutAttribute.Width, multiplier: imageAspectRatioInverse, constant: 0.0)
    ]
    
    private lazy var universalConstraints: [[NSLayoutConstraint]] = [
        self.imageViewUniversalConstraints,
        self.textViewUniversalConstraints,
        self.navigatorUniversalConstraints
    ]
    
    private lazy var portraitConstraints: [[NSLayoutConstraint]] = [
        self.textViewPortraitConstraints,
        self.navigatorPortraitConstraints
    ]
    
    private lazy var landscapeConstraints: [[NSLayoutConstraint]] = [
        self.textViewLandscapeConstraints,
        self.navigatorLandscapeConstraints
    ]
    
    /*
    Initializes with the specified handler.
    */
    init(handler: PStoryNavigator) {
        //setUpView()
    }
    
    /*
    Add new constraints after device rotates.
    */
    func addOrientationConstraints(orientation: UIInterfaceOrientation) {
        
    }
    
    /*
    Remove old constraints before device rotates.
    */
    func removeOrientationConstraints() {
        
    }
}