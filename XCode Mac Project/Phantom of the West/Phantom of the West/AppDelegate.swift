//
//  AppDelegate.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-16.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import Cocoa
import GameKit

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
        let story = AppDelegate.potwStory
        story.observer = window as? PStoryObserver
        if let autoSave = AutoSave.data {
            story.loadGame(autoSave)
        } else {
            story.playTutorial()
        }
        let localPlayer = GKLocalPlayer.localPlayer()
        if !localPlayer.authenticated {
            ManualSave.authenticatePlayer()
        }
    }
}