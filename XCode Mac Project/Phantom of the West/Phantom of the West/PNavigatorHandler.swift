//
//  PNavigatorHandler.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
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
}