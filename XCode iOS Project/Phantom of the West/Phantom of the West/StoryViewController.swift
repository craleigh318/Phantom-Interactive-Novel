//
//  StoryViewController.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/18/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Initializes with a view controller and story.
The view controller pops and pushes the options menu as needed.
The story implements the PStory protocol.
*/
class StoryViewController: PNavigatorHandler {
    
    var view: UIView {
        return storyView.view
    }
    
    private var storyView: StoryView
    
    init() {
        storyView = StoryView()
        storyView.handler = self
    }
    
    func onButtonContinue() {
        
    }
    
    func onButtonPrevious() {
        
    }
    
    func onButtonNext() {
        
    }
    
    func onButtonOptions() {
        
    }
    
    /*
    Call when the interface starts changing orientation.
    */
    func willTransitionToTraitCollection(newCollection: UITraitCollection,
        withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
            storyView.removeOrientationConstraints()
    }
    
    /*
    Call when the interface finishes changing orientation.
    */
    func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        let currentOrientation = UIApplication.sharedApplication().statusBarOrientation
        storyView.addOrientationConstraints(currentOrientation)
    }
    
    
}