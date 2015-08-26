//
//  PSavedGameLoader.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation
import GameKit

/*
Loads saved games offline and online.
*/
public protocol PSavedGamesLoader {
    
    /*
    Called when Game Center sends the saved games.
    */
    func savedGamesLoaded(data: NSData?, error: NSError?)
}