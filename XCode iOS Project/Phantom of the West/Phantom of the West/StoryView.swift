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
class StoryView: PConstraintsChanger {
    
    /*
    Set an event handler so that the navigation buttons react.
    */
    var handler: PNavigatorHandler? {
        get {
            return navigator.handler
        }
        set {
            navigator.handler = newValue
        }
    }
    
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
    
    /*
    Add this to the desired superview.
    */
    private(set) var view: UIView
    
    private var navigator: StoryNavigator
    
    private var imageView: StoryImage
    
    private var textView: StoryText
    
    private var imageViewUniversalConstraints, textViewUniversalConstraints, textViewPortraitConstraints, textViewLandscapeConstraints, navigatorUniversalConstraints, navigatorPortraitConstraints, navigatorLandscapeConstraints: [NSLayoutConstraint]
    
    private var universalConstraints, portraitConstraints, landscapeConstraints: [[NSLayoutConstraint]]
    
    /*
    Initializes with the specified handler.
    */
    init() {
        // Initialize properties.
        navigator = StoryNavigator()
        view = UIView()
        imageView = StoryImage()
        textView = StoryText()
        
        // Set up the view.
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        let subviews = [imageView.view, textView.view, navigator.view]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        // Initialize universal constraints.
        imageViewUniversalConstraints = [
            NSLayoutConstraint(item: imageView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: imageView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: imageView.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: navigator.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: imageView.view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: imageView.view, attribute: NSLayoutAttribute.Width, multiplier: StoryImage.imageAspectRatioInverse, constant: 0.0)
        ]
        textViewUniversalConstraints = [
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier:1.0, constant:0.0)
        ]
        navigatorUniversalConstraints = [
            NSLayoutConstraint(item: navigator.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: navigator.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
        ]
        universalConstraints = [
            imageViewUniversalConstraints,
            textViewUniversalConstraints,
            navigatorUniversalConstraints
        ]
        
        // Initialize portrait constraints.
        textViewPortraitConstraints = [
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: imageView.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: navigator.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
        ]
        navigatorPortraitConstraints = [
            NSLayoutConstraint(item: navigator.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: navigator.view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: StoryNavigator.recommendedHeight)
        ]
        portraitConstraints = [
            textViewPortraitConstraints,
            navigatorPortraitConstraints
        ]
        
        // Initialize landscape constraints.
        textViewLandscapeConstraints = [
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: imageView.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: textView.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
        ]
        navigatorLandscapeConstraints = [
            NSLayoutConstraint(item: navigator.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: StoryNavigator.recommendedLandscapeWidthRatio, constant: 0.0),
            NSLayoutConstraint(item: navigator.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: imageView.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
        ]
        landscapeConstraints = [
            textViewLandscapeConstraints,
            navigatorLandscapeConstraints
        ]
        
        // Add constraints.
        let initialConstraints = [universalConstraints, portraitConstraints]
        for constraint in initialConstraints {
            addMyConstraints(constraint)
        }
    }
    
    func addOrientationConstraints(orientation: UIInterfaceOrientation) {
        if (orientation == UIInterfaceOrientation.Portrait) {
            addMyConstraints(portraitConstraints)
        } else {
            addMyConstraints(landscapeConstraints)
        }
    }
    
    func removeOrientationConstraints() {
        removeMyConstraints(portraitConstraints)
        removeMyConstraints(landscapeConstraints)
    }
    
    private func addMyConstraints(constraintsArray: [[NSLayoutConstraint]]) {
        for constraints in constraintsArray {
            view.addConstraints(constraints)
        }
    }
    
    private func removeMyConstraints (constraintsArray: [[NSLayoutConstraint]]) {
        for constraints in constraintsArray {
            view.removeConstraints(constraints)
        }
    }
}