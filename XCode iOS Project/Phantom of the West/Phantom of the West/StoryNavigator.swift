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
    private(set) var view: UIView = UIView()
    
    private var buttonPrevious: UIButton = StoryNavigator.makeButton(Constants.buttonPreviousTitle)
    
    private var buttonContinue: UIButton = StoryNavigator.makeButton(Constants.buttonContinueTitle)
    
    private var buttonNext: UIButton = StoryNavigator.makeButton(Constants.buttonNextTitle)
    
    private var buttonOptions: UIButton = StoryNavigator.makeButton(Constants.buttonOptionsTitle)
    
    private lazy var imageViewUniversalConstraints: [NSLayoutConstraint] = [
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
        NSLayoutConstraint(item: self.imageView.view, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.imageView.view, attribute: NSLayoutAttribute.Height, multiplier: StoryImage.imageAspectRatio, constant: 0.0)
    ]
    
    /*
    Initializes with the specified event handler.
    */
    init() {
        // Initialize contraints.
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        var constraints = [NSLayoutConstraint]()
        
        // Add universal constraints for each button.
        let buttons = [buttonPrevious, buttonContinue, buttonNext, buttonOptions]
        for button in buttons {
            let universalConstraints = [
                NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
                NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: (1.0 / StoryNavigator.numButtons), constant: 0.0)
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
    
    dynamic func onButtonOptions() {
        if let unwrappedHandler = handler {
            unwrappedHandler.onButtonOptions()
        }
    }
    
    func addOrientationConstraints() {
        
    }
    
    func removeOrientationConstraints() {
        
    }
}