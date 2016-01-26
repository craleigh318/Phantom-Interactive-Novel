//
//  StoryNavigator.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-20.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

/*
Contains buttons that move through the story.
*/
class StoryNavigator: PNavigatorHandler, PConstraintsChanger {
    
    /*
    Make the buttons this tall to ensure easy button tapping.
    */
    static let standardButtonLength: CGFloat = 44.0
    
    /*
    Make the bar this wide to ensure easy button tapping.
    */
    static let landscapeWidth: CGFloat = 2.0 * standardButtonLength
    
    private static let numButtons: CGFloat = 4.0
    
    private static let numLandscapeRows: CGFloat = 3.0
    
    private static func makeButton(title: String) -> NSButton {
        let newButton = NSButton()
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.title = title
        return newButton
    }
    
    /*
    Buttons for user choice selection.
    */
    var previousAndNextEnabled: Bool {
        get {
            return buttonPrevious.enabled
        }
        set {
            buttonPrevious.enabled = newValue
            buttonNext.enabled = newValue
        }
    }
    
    /*
    Button to continue the story.
    Set to false when the end of the story is reached.
    */
    var continueEnabled: Bool {
        get {
            return buttonContinue.enabled
        }
        set {
            buttonContinue.enabled = newValue
        }
    }
    
    /*
    Set an event handler so that the navigation buttons react.
    */
    var handler: PNavigatorHandler?
    
    /*
    Add this to the desired superview.
    */
    private(set) var view: NSView = NSView()
    
    private var buttonPrevious: NSButton = StoryNavigator.makeButton(Constants.buttonPreviousTitle)
    
    private var buttonContinue: NSButton = StoryNavigator.makeButton(Constants.okTitle)
    
    private var buttonNext: NSButton = StoryNavigator.makeButton(Constants.buttonNextTitle)
    
    private lazy var buttonPreviousUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonPrevious, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonPreviousPortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonPrevious, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonPrevious, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonContinueUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Height, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonContinuePortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonContinueLandscapeConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonContinue, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonNextUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Height, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Width, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonNextPortraitConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonContinue, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var buttonNextLandscapeConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonPrevious, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.buttonNext, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: self.buttonContinue, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
    ]
    
    private lazy var universalConstraints: [[NSLayoutConstraint]] = [self.buttonPreviousUniversalConstraints, self.buttonContinueUniversalConstraints, self.buttonNextUniversalConstraints]
    
    private lazy var portraitConstraints: [[NSLayoutConstraint]] = [self.buttonPreviousPortraitConstraints, self.buttonContinuePortraitConstraints, self.buttonNextPortraitConstraints]
    
    private lazy var landscapeConstraints: [[NSLayoutConstraint]] = [self.buttonContinueLandscapeConstraints, self.buttonNextLandscapeConstraints]
    
    /*
    Initializes with the specified event handler.
    */
    init() {
        // Initialize contraints.
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // Add universal constraints for each button.
        let buttons = [buttonPrevious, buttonContinue, buttonNext]
        
        // Add targets.
        let buttonsToSelectors: [NSButton: Selector] = [
            buttonPrevious: "onButtonPrevious",
            buttonContinue: "onButtonContinue",
            buttonNext: "onButtonNext"
        ]
        for (button, selector) in buttonsToSelectors {
            button.target = self;
            button.action = selector
        }
        
        // Add subviews.
        for button in buttons {
            view.addSubview(button)
        }
        
        // Add constraints.
        addMyConstraints(universalConstraints)
    }
    
    dynamic func onButtonContinue() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonContinue()
        }
    }
    
    dynamic func onButtonPrevious() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonPrevious()
        }
    }
    
    dynamic func onButtonNext() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonNext()
        }
    }
    
    func addPortraitConstraints() {
        addMyConstraints(portraitConstraints)
    }
    
    func addLandscapeConstraints() {
        addMyConstraints(landscapeConstraints)
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