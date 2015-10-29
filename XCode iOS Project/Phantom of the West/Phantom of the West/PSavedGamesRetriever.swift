//
//  PSavedGamesRetriever.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation
import GameKit

/*
Retrieves saved games from Game Center.
*/
public protocol PSavedGamesRetriever {
    
    /*
    Called when Game Center sends the saved games.
    */
    func savedGamesRetrieved(savedGames: [ManualSave])
}