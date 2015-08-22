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
public class StoryViewController: UIViewController, PStoryObserver {
    
    /*
    Set an event handler so that the navigation buttons react.
    */
    var storyViewHandler: PNavigatorHandler? {
        get {
            return storyView.handler
        }
        set {
            storyView.handler = newValue
        }
    }
    
    /*
    Set to true if the user should be shown iAds.
    For example, the user might not have bought advertisment removal.
    */
    var shouldDisplayAdvertisement: Bool {
        get {
            return adHandler.shouldDisplayAdvertisement
        }
        set {
            adHandler.shouldDisplayAdvertisement = newValue
        }
    }
    
    private var storyView: StoryView = StoryView()
    
    private var adHandler: Advertising = Advertising()
    
    private lazy var bookmark: Bookmark = Bookmark(storyView: self.storyView)
    
    override public func viewDidLoad() {
        // Set properties.
        super.viewDidLoad()
        
        // Add subviews.
        let subviews = [storyView.view, adHandler.view]
        for subview in subviews {
            view.addSubview(subview)
        }
        
        // Add constraints.
        let constraints = [
            NSLayoutConstraint(item: adHandler.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: adHandler.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: topLayoutGuide, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: adHandler.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: adHandler.view, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: bottomLayoutGuide, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
        ]
        view.addConstraints(constraints)
    }
    
    public override func willTransitionToTraitCollection(newCollection: UITraitCollection,
        withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
            storyView.removeOrientationConstraints()
    }
    
    public override func traitCollectionDidChange(previousTraitCollection: UITraitCollection?) {
        storyView.addOrientationConstraints()
    }
    
    public override func viewWillAppear(animated: Bool) {
        if let nc = navigationController {
            nc.navigationBarHidden = true
        }
        super.viewWillAppear(animated)
    }
    
    public override func viewWillDisappear(animated: Bool) {
        if let nc = navigationController {
            nc.navigationBarHidden = false
        }
        super.viewWillDisappear(animated)
    }
    
    public func update(pages: [PStoryPage]) {
        bookmark.update(pages)
    }
    
    /*
    The continue button is pressed.
    */
    func onButtonContinue() {
        bookmark.onButtonContinue()
    }
    
    /*
    The previous button is pressed.
    */
    func onButtonPrevious() {
        bookmark.onButtonPrevious()
    }
    
    /*
    The next button is pressed.
    */
    func onButtonNext() {
        bookmark.onButtonNext()
    }
}