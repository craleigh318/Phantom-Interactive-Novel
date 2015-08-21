//
//  PhantomOfTheWest.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/20.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

public class PhantomOfTheWest: PStory, PStoryObserver {
    
    /*
    The pages for the UI to show.
    */
    private var currentPages: [PStoryPage] = []
    
    public var observer: PStoryObserver?
    
    public func newGame() {
        let firstPage = ch1IAmDrKaden()
        update([firstPage])
    }
    
    public func update(pages: [PStoryPage]) {
        if let o = observer {
            o.update(pages)
        }
    }
}