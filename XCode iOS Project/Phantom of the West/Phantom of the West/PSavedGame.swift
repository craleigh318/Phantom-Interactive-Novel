//
//  PSavedGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

/*
Wrapper for offline and online saved games.
*/
public protocol PSavedGame {
    
    /*
    The save's label.
    */
    var name: String! {
        get
    }
    
    /*
    Date of the latest modification.
    */
    var date: NSDate! {
        get
    }
    
    /*
    Calls the specified object once data is loaded.
    */
    func load(loader: PSavedGamesLoader)
    
    /*
    Deletes the data.
    */
    func delete()
}