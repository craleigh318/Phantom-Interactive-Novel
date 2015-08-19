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
    The pages for the UI to show.
    */
    var currentPages: [PStoryPage] {
        get
    }
    
    /*
    The interface displaying this story.
    */
    var observer: PStoryObserver {
        get
        set
    }
    
    /*
    Starts the story from the beginning.
    */
    func newGame()
}