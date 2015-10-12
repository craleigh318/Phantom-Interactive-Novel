//
//  PPageTurner.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/11.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

/*
Assigns a unique ID to each point in the story.
This is done for easy saving and loading.
*/
protocol PPageTurner {
    
    /*
    Goes to the specified point in the story.
    */
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage]
}

