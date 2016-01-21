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
        let alert = NSAlert(title: title, message: message, delegate: nil, cancelButtonTitle: Constants.okTitle)
        alert.show()
    }
    
    public static func showError(error: NSError) {
        let errorMessage = error.localizedDescription
        NSLog(errorMessage)
    }
}