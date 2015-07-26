//
//  ViewController.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

public class ViewController: UINavigationController, PNavigatorHandler {
    
    private var rootSubcontroller: StoryViewController?
    
    private lazy var optionsSubcontroller: MainOptionsMenu = MainOptionsMenu()
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rootSubcontroller = viewControllers[0] as? StoryViewController
        if let subcontroller = rootSubcontroller {
            subcontroller.storyViewHandler = self
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
        pushViewController(optionsSubcontroller, animated: true)
    }
}

