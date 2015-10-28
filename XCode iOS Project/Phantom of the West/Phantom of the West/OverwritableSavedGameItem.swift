//
//  OverwritableSavedGameItem.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/27.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

/*
Overrides the existing saved game when selected
*/
class OverwritableSavedGameItem: SavedGameItem {
    
    override func onSelect() {
        overwrite()
    }
}
