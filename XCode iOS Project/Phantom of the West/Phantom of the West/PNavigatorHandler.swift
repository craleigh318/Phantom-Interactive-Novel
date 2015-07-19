//
//  PNavigatorHandler.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

/*
Handles events for the StoryNavigator buttons.
*/
protocol PNavigatorHandler {
    /*
    The continue button is pressed.
    */
    func onButtonContinue()
    
    /*
    The previous button is pressed.
    */
    func onButtonPrevious()
    
    /*
    The next button is pressed.
    */
    func onButtonNext()
    
    /*
    The options button is pressed.
    */
    func onButtonOptions()
}