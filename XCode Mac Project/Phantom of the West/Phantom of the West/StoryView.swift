//
//  StoryView.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-20.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

/*
The main part of the view.
*/
class StoryView: NSWindow {
    
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
    The UIView.
    */
    var view: UIView? {
        didSet {
            if let v = view {
                // Set up the view.
                let subviews = [imageView.view, textView.view, navigator.view]
                for subview in subviews {
                    v.addSubview(subview)
                }
                
                // Add constraints.
                addMyConstraints(universalConstraints)
                addOrientationConstraints(v.frame.size)
            }
        }
    }
    
    private var navigator: StoryNavigator = StoryNavigator()
    
    private var imageView: StoryImage = StoryImage()
    
    private var textView: StoryText = StoryText()
    
    private lazy var imageViewUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView.view, attribute: NSLayoutAttribute.Height, multiplier: StoryImage.imageAspectRatio, constant: 0.0)
    ]
    
    private lazy var imageViewPortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var textViewUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.textView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView.view, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var textViewLandscapeConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.textView.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.textView.view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.GreaterThanOrEqual, toItem: self.imageView.view, attribute: NSLayoutAttribute.Height, multiplier: StoryText.landscapeMinHeightRatio, constant: 0.0)
    ]
    
    private lazy var navigatorUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var navigatorPortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.textView.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: StoryNavigator.standardButtonLength)
    ]
    
    private lazy var navigatorLandscapeConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.navigator.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.GreaterThanOrEqual, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1.0, constant: StoryNavigator.landscapeWidth)
    ]
    
    private lazy var universalConstraints: [[NSLayoutConstraint]] = [self.imageViewUniversalConstraints, self.textViewUniversalConstraints, self.navigatorUniversalConstraints]
    
    private lazy var portraitConstraints: [[NSLayoutConstraint]] = [self.imageViewPortraitConstraints, self.navigatorPortraitConstraints]
    
    private lazy var landscapeConstraints: [[NSLayoutConstraint]] = [self.textViewLandscapeConstraints, self.navigatorLandscapeConstraints]
    
    public init() {
        super.init()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "NSWindowDidResizeNotification", name:"NSWindowDidResizeNotification", object: nil)
    }
    
    func NSWindowDidResizeNotification() {
        removeOrientationConstraints()
        let size = frame.size
        addOrientationConstraints(size)
    }
    
    func addOrientationConstraints(size: CGSize) {
        let isLandscape = (size.width > size.height)
        if isLandscape {
            addLandscapeConstraints()
        } else {
            addPortraitConstraints()
        }
    }
    
    func addPortraitConstraints() {
        navigator.addPortraitConstraints()
        addMyConstraints(portraitConstraints)
    }
    
    func addLandscapeConstraints() {
        navigator.addLandscapeConstraints()
        addMyConstraints(landscapeConstraints)
    }
    
    func removeOrientationConstraints() {
        navigator.removeOrientationConstraints()
        removeMyConstraints(portraitConstraints)
        removeMyConstraints(landscapeConstraints)
    }
    
    private func addMyConstraints(constraintsArray: [[NSLayoutConstraint]]) {
        if let v = view {
            for constraints in constraintsArray {
                v.addConstraints(constraints)
            }
        }
    }
    
    private func removeMyConstraints (constraintsArray: [[NSLayoutConstraint]]) {
        if let v = view {
            for constraints in constraintsArray {
                v.removeConstraints(constraints)
            }
        }
    }
}