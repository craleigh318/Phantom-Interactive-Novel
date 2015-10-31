//
//  PSaveManagerObserver.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/30.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

/*
Updates when a save game is added, removed, or overwritten.
*/
public protocol PSaveManagerObserver: class {
    func saveManagerUpdated()
}