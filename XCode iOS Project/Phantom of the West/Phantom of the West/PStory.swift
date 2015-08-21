//
//  PStory.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

/*
A story that consists of multiple pages.
Some points in the story have multiple choices.
*/
public protocol PStory {
    
    /*
    The interface displaying this story.
    */
    var observer: PStoryObserver? {
        get
        set
    }
    
    /*
    Starts the story from the beginning.
    */
    func newGame()
}