//
//  AutoSave.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

/*
Save data stored locally, saved automatically.
*/
public class AutoSave: PSavedGame {
    
    /*
    The current auto-save.
    */
    public static let autoSave = AutoSave()
    
    public static func save(data: NSData) {
        SaveManager.defaults.setObject(data, forKey: AutoSave.autoSaveKey)
        autoSave.date = NSDate()
    }
    
    public static var data: NSData? {
        return SaveManager.defaults.objectForKey(AutoSave.autoSaveKey) as? NSData
    }
    
    private static let autoSaveKey = "autoSave"
    
    private static let autoSaveDateKey = "autoSaveDate"
    
    public let name: String! = StringLocalizer.getGUIString("autoSave")
    
    public private(set) var date: NSDate! {
        get {
            let dateData = SaveManager.defaults.objectForKey(AutoSave.autoSaveDateKey) as? NSData
            if let dd = dateData {
                let unarchivedDate = NSKeyedUnarchiver.unarchiveObjectWithData(dd) as? NSDate
                return unarchivedDate
            }
            return nil
        }
        set {
            var archivedDate: NSData?
            if let nv = newValue {
                archivedDate = NSKeyedArchiver.archivedDataWithRootObject(nv)
            } else {
                archivedDate = nil
            }
            SaveManager.defaults.setObject(archivedDate, forKey: AutoSave.autoSaveDateKey)
        }
    }
    
    private init() {
    }
    
    public func load(loader: PSavedGamesLoader) {
        loader.savedGamesLoaded(AutoSave.data, error: nil)
    }
    
    public func delete() {
        SaveManager.defaults.setObject(nil, forKey: AutoSave.autoSaveKey)
        date = nil
    }
}