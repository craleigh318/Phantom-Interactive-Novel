//
//  StoryNavigator.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Contains buttons that move through the story.
*/
class StoryNavigator: NSObject, PNavigatorHandler {
    
    /*
    While in landscape, this view should occupy two thirds of the screen.
    */
    static let recommendedLandscapeWidthRatio: CGFloat = (2.0 / 3.0)
    
    /*
    Make the buttons this tall to ensure easy button tapping.
    */
    static let recommendedHeight: CGFloat = 44.0
    
    private static let buttonWidthMultiplier: CGFloat = 0.25
    
    private static func makeButton(title: String?) -> UIButton {
        var newButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        newButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        newButton.setTitle(title, forState: UIControlState.Normal)
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
    private(set) var view: UIView
    
    private var buttonPrevious, buttonContinue, buttonNext, buttonOptions: UIButton
    
    /*
    Initializes with the specified event handler.
    */
    override init() {
        // Initialize view.
        view = UIView()
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Initialize buttons.
        buttonPrevious = StoryNavigator.makeButton(buttonPreviousTitle)
        buttonContinue = StoryNavigator.makeButton(buttonContinueTitle)
        buttonNext = StoryNavigator.makeButton(buttonNextTitle)
        buttonOptions = StoryNavigator.makeButton(buttonOptionsTitle)
        let buttons = [buttonPrevious, buttonContinue, buttonNext, buttonOptions]
        
        // Initialize contraints.
        var constraints = [NSLayoutConstraint]()
        
        // Add universal constraints for each button.
        for button in buttons {
            let universalConstraints = [
                NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: StoryNavigator.buttonWidthMultiplier, constant: 0.0)
            ]
            constraints += universalConstraints
        }
        
        // Add button-specific constraints.
        let specificConstraints = [
            NSLayoutConstraint(item: buttonPrevious, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: buttonContinue, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: buttonPrevious, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: buttonNext, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: buttonContinue, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: buttonOptions, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: buttonNext, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0)
        ]
        constraints += specificConstraints
        
        // Call NSObject.
        super.init()
        
        // Add targets.
        let buttonsToSelectors: [UIButton: Selector] = [
            buttonPrevious: "onButtonPrevious",
            buttonContinue: "onButtonContinue",
            buttonNext: "onButtonNext",
            buttonOptions: "onButtonOptions"
        ]
        for (button, selector) in buttonsToSelectors {
            button.addTarget(self, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
        }
        
        // Add subviews.
        for button in buttons {
            view.addSubview(button)
        }
        
        // Add constraints.
        view.addConstraints(constraints)
    }
    
    func onButtonContinue() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonContinue()
        }
    }
    
    func onButtonPrevious() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonPrevious()
        }
    }

    func onButtonNext() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonNext()
        }
    }

    func onButtonOptions() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonOptions()
        }
    }
}