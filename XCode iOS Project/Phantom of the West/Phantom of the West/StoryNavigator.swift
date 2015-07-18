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
class StoryNavigator: PStoryNavigator {
    
    static let recommendedLandscapeWidthRatio: CGFloat = (2.0 / 3.0)
    
    static let recommendedHeight: CGFloat = 44.0
    
    private static let buttonWidthMultiplier: CGFloat = 0.25
    
    private static func makeButton(title: String?) -> UIButton {
        var newButton = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        newButton.setTitle(title, forState: UIControlState.Normal)
        newButton.setTranslatesAutoresizingMaskIntoConstraints(false);
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
    
    private var handler: PStoryNavigator
    
    private var buttonPrevious, buttonContinue, buttonNext, buttonOptions: UIButton
    
    /*
    Initializes with the specified event handler.
    */
    init(handler: PStoryNavigator) {
        view = UIView();
        self.handler = handler
        buttonPrevious = StoryNavigator.makeButton(buttonPreviousTitle)
        buttonContinue = StoryNavigator.makeButton(buttonContinueTitle)
        buttonNext = StoryNavigator.makeButton(buttonNextTitle)
        buttonOptions = StoryNavigator.makeButton(buttonOptionsTitle)
        drawNavigator()
    }
    
    func onButtonContinue() {
        handler.onButtonContinue()
    }
    
    func onButtonPrevious() {
        handler.onButtonPrevious()
    }
    
    func onButtonNext() {
        handler.onButtonNext()
    }
    
    func onButtonOptions() {
        handler.onButtonOptions()
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
    
    private func addButtonConstraints(button: UIButton)  {
        view.addConstraints([
            NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: button, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: StoryNavigator.buttonWidthMultiplier, constant: 0.0)
            ])
    }
    
}