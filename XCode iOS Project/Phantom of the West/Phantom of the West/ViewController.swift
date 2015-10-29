//
//  ViewController.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import GameKit
import UIKit

public class ViewController: UINavigationController, PNavigatorHandler {
    
    private var rootSubcontroller: StoryViewController?
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rootSubcontroller = viewControllers[0] as? StoryViewController
        if let subcontroller = rootSubcontroller {
            subcontroller.storyViewHandler = self
            
            //Start story.
            let story = AppDelegate.potwStory
            story.observer = subcontroller
            if let autoSave = AutoSave.data {
                story.loadGame(autoSave)
            } else {
                story.newGame()
            }
        }
        let localPlayer = GKLocalPlayer.localPlayer()
        if !localPlayer.authenticated {
            ManualSave.authenticatePlayer()
        }
    }
    
    func onButtonContinue() {
        if let subcontroller = rootSubcontroller {
            subcontroller.onButtonContinue()
        }
    }
    
    func onButtonPrevious() {
        if let subcontroller = rootSubcontroller {
            subcontroller.onButtonPrevious()
        }
    }
    
    func onButtonNext() {
        if let subcontroller = rootSubcontroller {
            subcontroller.onButtonNext()
        }
    }
    
    func onButtonOptions() {
        let optionsSubcontroller = MainOptionsMenu()
        pushViewController(optionsSubcontroller, animated: true)
    }
}

