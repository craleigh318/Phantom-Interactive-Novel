//
//  PStoryPageListObserver.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/18.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

/*
A convenience class that supplies the visual novel reader with a linear path of story pages.
*/
protocol PStoryPageListObserver {
    /*
    Notifies this observer that StoryPageList changed.
    */
    func update(_: StoryPageList)
}