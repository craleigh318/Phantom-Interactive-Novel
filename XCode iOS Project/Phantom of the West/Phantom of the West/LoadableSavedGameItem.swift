//
//  LoadableSavedGameItem.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/27.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

/*
Loads the existing saved game when selected
*/
class LoadableSavedGameItem: SavedGameItem {
    
    override func onSelect() {
        load()
    }
}
