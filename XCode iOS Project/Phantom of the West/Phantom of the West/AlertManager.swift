//
//  AlertManager.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/26.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation
import UIKit

/*
Manages UIAlertViews.
*/
public class AlertManager {
    
    public static func showMessage(title: String, message: String) {
        let alert = UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: Constants.okTitle)
        alert.show()
    }
    
    public static func showError(error: NSError) {
        //let errorTitle = StringLocalizer.getGUIString("error")
        let errorMessage = error.localizedDescription
        NSLog(errorMessage)
        //showMessage(errorTitle, message: errorMessage)
    }
}