//
//  AppDelegate.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-16.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    static var potwStory: PhantomOfTheWest = PhantomOfTheWest()
    
    @IBOutlet weak var window: NSWindow!
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        startUp()
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func startUp() {
        
    }
    
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
                story.playTutorial()
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
}