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
    
    /*
    Add this to the desired superview.
    */
    private(set) var view: UIView
    
    private var storyView: StoryView
    
    private var adHandler: Advertising
    
    private var bookmark: Bookmark
    
    init() {
        // Initialize properties.
        view = UIView()
        storyView = StoryView()
        bookmark = Bookmark()
        adHandler = Advertising()
        storyView.handler = self
        bookmark.storyView = storyView
        
        // Add subviews.
        view.setTranslatesAutoresizingMaskIntoConstraints(false)
        let subviews = [storyView.view, adHandler.view]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        // Add constraints.
        let constraints = [
            NSLayoutConstraint(item: adHandler.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: adHandler.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: adHandler.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: adHandler.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0)
        ]
        view.addConstraints(constraints)
        
        // Enable advertising if ad-removal not purchased.
        adHandler.shouldDisplayAdvertisement = true
    }
    
    func onButtonContinue() {
        bookmark.onButtonContinue()
    }
    
    func onButtonPrevious() {
        bookmark.onButtonPrevious()
    }
    
    func onButtonNext() {
        bookmark.onButtonNext()
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
        storyView.addOrientationConstraints()
    }
    
    
}