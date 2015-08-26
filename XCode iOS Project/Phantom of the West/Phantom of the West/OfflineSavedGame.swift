//
//  OfflineSavedGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

/*
Save data stored locally.
*/
public class OfflineSavedGame: PSavedGame {
    
    public private(set) var name: String?
    
    public private(set) var date: NSDate?
    
    private var data: NSData
    
    init(data: NSData, name: String? = nil) {
        self.data = data
        self.name = name
        date = NSDate()
    }
    
    public func load(loader: PSavedGamesLoader) {
        
    }
    
    public func remove() {
        
    }
}