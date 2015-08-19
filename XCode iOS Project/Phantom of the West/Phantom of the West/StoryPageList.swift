//
//  StoryPageList.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/18.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

/*
A convenience class that supplies the visual novel reader with a linear path of story pages.
*/
class StoryPageList {
    
    /*
    The current page.
    */
    var currentPage: StoryPage {
        return pages[index]
    }
    
    /*
    Observer.
    */
    private var observer: PStoryPageListObserver
    
    /*
    The list of pages through which to iterate.
    */
    private var pages: [StoryPage]
    
    /*
    The current index.
    */
    private var index: Int
    
    init(observer: PStoryPageListObserver, pages: [StoryPage]) {
        self.observer = observer
        self.pages = pages
        index = 0
    }
    
    /*
    Iterates to the next page.
    */
    func nextPage() {
        if index < (pages.count - 1) {
            ++index
            observer.update(self)
        } else {
            listFinished()
        }
    }
    
    /*
    Override this function.  This will be called at the end of this list.
    */
    func listFinished() {
        
    }
}