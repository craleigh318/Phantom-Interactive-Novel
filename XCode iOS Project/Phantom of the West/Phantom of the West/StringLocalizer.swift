//
//  StringLocalizer.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

public class StringLocalizer {
    
    static func getGUIString(key: String) -> String {
        let localizedString = NSLocalizedString(key, tableName: "GUIElements", comment: "")
        return localizedString
    }
    
    static func getStoryTextString(key: String) -> String {
        let localizedString = NSLocalizedString(key, tableName: "StoryText", comment: "")
        return localizedString
    }
}