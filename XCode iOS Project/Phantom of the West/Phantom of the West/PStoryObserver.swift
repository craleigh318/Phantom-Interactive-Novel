//
//  PStoryObserver.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

/*
A user interface that displays a story.
*/
public protocol PStoryObserver {
    
    /*
    Notifies this observer that a new collection of pages is set.
    */
    func update(PStory)
}