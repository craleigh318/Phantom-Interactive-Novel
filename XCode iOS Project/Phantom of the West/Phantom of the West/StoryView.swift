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
    Set an event handler so that the buttons do things.
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
    
    private var navigator: StoryNavigator
    
    private(set) var view: UIView
    
    private var imageView: StoryImage
    
    private var textView: StoryText
    
    private lazy var imageViewUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.imageView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.navigator, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView, attribute: NSLayoutAttribute.Width, multiplier: StoryImage.imageAspectRatioInverse, constant: 0.0)
    ]
    
    private lazy var textViewUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier:1.0, constant:0.0)
    ]
    
    private lazy var textViewPortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.navigator, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var textViewLandscapeConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var navigatorUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.navigator, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var navigatorPortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.navigator, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: StoryNavigator.recommendedHeight)
    ]
    
    private lazy var navigatorLandscapeConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.navigator, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Width, multiplier: StoryNavigator.recommendedLandscapeWidthRatio, constant: 0.0),
        NSLayoutConstraint(item: self.navigator, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
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
    init() {
        navigator = StoryNavigator()
        view = UIView()
        imageView = StoryImage()
        textView = StoryText()
        setUpView()
    }
    
    /*
    Add new constraints after device rotates.
    */
    func addOrientationConstraints(orientation: UIInterfaceOrientation) {
        if (orientation == UIInterfaceOrientation.Portrait) {
            addMyConstraints(portraitConstraints)
        } else {
            addMyConstraints(landscapeConstraints)
        }
    }
    
    /*
    Remove old constraints before device rotates.
    */
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
    
    private func setUpView() {
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        // Add the views.
        view.addSubview(imageView.view)
        view.addSubview(textView.view)
        view.addSubview(navigator.view)
        // Add constraints.
        addMyConstraints(universalConstraints)
        addMyConstraints(portraitConstraints)
    }
}