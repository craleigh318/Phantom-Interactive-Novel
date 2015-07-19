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
class StoryNavigator: PNavigatorHandler {
    
    static let recommendedLandscapeWidthRatio: CGFloat = (2.0 / 3.0)
    
    static let recommendedHeight: CGFloat = 44.0
    
    private static let buttonWidthMultiplier: CGFloat = 0.25
    
    private static func makeButton(title: String?, selector: Selector) -> UIButton {
        var newButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        newButton.setTranslatesAutoresizingMaskIntoConstraints(false)
        newButton.setTitle(title, forState: UIControlState.Normal)
        newButton.addTarget(self, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
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
    Add this to the desired superview.
    */
    private(set) var view: UIView
    
    var handler: PNavigatorHandler? {
        willSet {
            clearTargets()
        }
        didSet {
            addTargets()
        }
    }
    
    private var buttonPrevious, buttonContinue, buttonNext, buttonOptions: UIButton
    
    private var buttonsToSelectors: [UIButton: Selector]
    
    /*
    Initializes with the specified event handler.
    */
    init() {
        view = UIView();
        buttonPrevious = StoryNavigator.makeButton(buttonPreviousTitle, selector: "onButtonPrevious")
        buttonContinue = StoryNavigator.makeButton(buttonContinueTitle, selector: "onButtonContinue")
        buttonNext = StoryNavigator.makeButton(buttonNextTitle, selector: "onButtonNext")
        buttonOptions = StoryNavigator.makeButton(buttonOptionsTitle, selector: "onButtonOptions")
        buttonsToSelectors = [
            buttonPrevious: "onButtonPrevious",
            buttonContinue: "onButtonContinue",
            buttonNext: "onButtonNext",
            buttonOptions: "onButtonOptions"
        ]
        drawNavigator()
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
    
    private func drawNavigator() {
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        drawButtonPrevious()
        drawButtonContinue()
        drawButtonNext()
        drawButtonOptions()
    }
    
    private func drawButtonPrevious() {
        buttonPrevious.addTarget(self, action: "onButtonPrevious", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(buttonPrevious)
        view.addConstraint(NSLayoutConstraint(item: buttonPrevious, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0))
        addButtonConstraints(buttonPrevious)
    }
    
    private func drawButtonContinue() {
        buttonContinue.addTarget(self, action: "onButtonContinue", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(buttonContinue)
        view.addConstraint(NSLayoutConstraint(item: buttonContinue, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: buttonPrevious, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        addButtonConstraints(buttonContinue)
    }
    
    private func drawButtonNext() {
        buttonNext.addTarget(self, action: "onButtonNext", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(buttonNext)
        view.addConstraint(NSLayoutConstraint(item: buttonNext, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: buttonContinue, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        addButtonConstraints(buttonNext)
    }
    
    private func drawButtonOptions() {
        buttonOptions.addTarget(self, action: "onButtonOptions", forControlEvents: UIControlEvents.TouchUpInside)
        view.addSubview(buttonOptions)
        view.addConstraint(NSLayoutConstraint(item: buttonOptions, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: buttonNext, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0))
        addButtonConstraints(buttonOptions)
    }
    
    private func universalConstraints(button: UIButton) -> [NSLayoutConstraint]  {
        return [
            NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: StoryNavigator.buttonWidthMultiplier, constant: 0.0)
            ]
    }
    
    private func addTargets() {
        if let unwrappedHandler = handler {
            for (button, selector) in buttonsToSelectors {
                button.addTarget(unwrappedHandler as? AnyObject, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
            }
        }
    }
    
    private func clearTargets() {
        if let unwrappedHandler = handler {
            for (button, selector) in buttonsToSelectors {
                button.removeTarget(unwrappedHandler as? AnyObject, action: selector, forControlEvents: UIControlEvents.TouchUpInside)
            }
        }
    }
}