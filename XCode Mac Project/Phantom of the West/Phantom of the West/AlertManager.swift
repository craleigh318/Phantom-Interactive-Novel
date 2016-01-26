//
//  AlertManager.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-20.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import Foundation
import AppKit

/*
Manages UIAlertViews.
*/
public class AlertManager {
    
    public static func showMessage(title: String, message: String) {
        let alert = NSAlert()
        alert.messageText = title
        alert.informativeText = message
        alert.runModal()
    }
    
    public static func showError(error: NSError) {
        let errorMessage = error.localizedDescription
        NSLog(errorMessage)
    }
}