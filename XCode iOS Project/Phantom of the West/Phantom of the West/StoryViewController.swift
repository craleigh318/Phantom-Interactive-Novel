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
    /*var shouldDisplayAdvertisement: Bool {
        get {
            return adHandler.shouldDisplayAdvertisement
        }
        set {
            adHandler.shouldDisplayAdvertisement = newValue
        }
    }*/
    
    private lazy var storyView: StoryView = StoryView()
    
    /*private var adHandler: Advertising = Advertising()*/
    
    private lazy var bookmark: Bookmark = Bookmark(storyView: self.storyView)
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        storyView.view = view
    }
    
    override public func viewWillTransitionToSize(size: CGSize,
        withTransitionCoordinator coordinator: UIViewControllerTransitionCoordinator) {
            super.viewWillTransitionToSize(size, withTransitionCoordinator: coordinator)
            storyView.removeOrientationConstraints()
            coordinator.animateAlongsideTransition(nil, completion: {
                _ in
                self.storyView.addOrientationConstraints(size)
            })
    }
    
    public override func viewWillAppear(animated: Bool) {
        if let nc = navigationController {
            nc.navigationBarHidden = true
        }
        
        // Enable advertising if ad-removal not purchased.
        canDisplayBannerAds = !SaveManager.purchasedAdRemoval
        
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