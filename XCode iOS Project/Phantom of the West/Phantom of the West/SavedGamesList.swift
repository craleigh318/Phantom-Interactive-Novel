//
//  SavedGamesList.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation
import GameKit

public class SavedGamesList {
    
    /*
    The number of saved games that this user has.
    */
    public var numSaves: Int {
        var num: Int
        if let sg = savedGames {
            num = sg.count
        } else {
            num = -1
        }
        return num
    }
    
    /*
    Returns the save at the specified index.
    Indices start at 1.
    */
    public func getSave(atIndex: Int) -> [PStoryPage]? {
        /*if let sgs = savedGames {
            let savedGame = sgs[atIndex]
        }*/
        
        return nil
    }
    
    /*
    Saves at the specified index, overwriting if necessary.
    Indices start at 1.
    */
    public func overwriteSave(save: [PStoryPage], atIndex: Int) -> Bool {
        return false
    }
    
    /*
    Saves at the end of the list.
    */
    public func addSave(save: [PStoryPage]) {
        let num = numSaves
        if num >= 0 {
            let saveIndex = numSaves + 1
            overwriteSave(save, atIndex: saveIndex)
        }
    }
    
    private var savedGames: [GKSavedGame]? = nil
}