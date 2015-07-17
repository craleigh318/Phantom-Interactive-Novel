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
class StoryNavigator: UIView, PStoryNavigator {
    
    private let handler: PStoryNavigator
    private let buttonPrevious, buttonContinue, buttonNext, buttonOptions: UIButton
    
    init(handler: PStoryNavigator) {
        
        self.handler = handler
        buttonPrevious = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        buttonContinue = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        buttonNext = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        buttonOptions = UIButton.buttonWithType(UIButtonType.System) as! UIButton
        super.init(frame: CGRect.zeroRect)
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
}