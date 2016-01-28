//
//  ManualSave.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import Foundation
import GameKit

/*
Save data stored on Game Center.
*/
public class ManualSave {
    
    private static let manager: NSFileManager = NSFileManager.defaultManager()
    
    public static func authenticatePlayer() {
        let localPlayer = GKLocalPlayer.localPlayer()
        localPlayer.authenticateHandler = {
            (viewController, error) in
            if let vc = viewController {
                let gameCenterWindow = NSWindow(contentViewController: vc)
                gameCenterWindow.makeKeyAndOrderFront(nil)
            } else if let e = error {
                AlertManager.showError(e)
            }
        }
    }
    
    public static func save() {
        let data = AppDelegate.potwStory.saveGame()
        let savePanel = NSSavePanel()
        savePanel.allowedFileTypes = ["game"]
        savePanel.beginWithCompletionHandler({
            (result: Int) in
            if result == NSFileHandlingPanelOKButton {
                if let urlPath = savePanel.URL?.path {
                    manager.createFileAtPath(urlPath, contents: data, attributes: nil)
                }
            }
        })
    }
    
    public static func load() {
        let openPanel = NSOpenPanel()
        openPanel.allowedFileTypes = ["game"]
        openPanel.beginWithCompletionHandler({
            (result: Int) in
            if result == NSFileHandlingPanelOKButton {
                if let urlPath = openPanel.URL?.path {
                    if let data = manager.contentsAtPath(urlPath) {
                        AppDelegate.potwStory.loadGame(data)
                    }
                }
            }
        })
    }
}