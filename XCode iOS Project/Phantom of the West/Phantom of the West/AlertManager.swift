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
    
    public static func showError(error: NSError) {
        let errorTitle = StringLocalizer.getGUIString("error")
        let errorMessage = error.localizedDescription
        let alert = UIAlertView(title: errorTitle, message: errorMessage, delegate: nil, cancelButtonTitle: Constants.okTitle)
        alert.show()
    }
}