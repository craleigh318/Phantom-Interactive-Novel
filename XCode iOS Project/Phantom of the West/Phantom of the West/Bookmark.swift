//
//  Bookmark.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/19/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

/*
Controls the image, text, and buttons for StoryView.
*/
class Bookmark: PStoryObserver {
    
    /*
    The view for this bookmark to update.
    */
    private var storyView: StoryView
    
    private var currentPages: [PStoryPage]?
    
    private var index: Int
    
    init(storyView: StoryView) {
        index = 0
        self.storyView = storyView
    }
    
    func update(pages: [PStoryPage]) {
        showPages(pages)
    }
    
    /*
    The continue button is pressed.
    */
    func onButtonContinue() {
        if let unwrappedCurrentPages = currentPages {
            let currentPage = unwrappedCurrentPages[index]
            currentPage.continueStory()
        }
    }
    
    /*
    The previous button is pressed.
    */
    func onButtonPrevious() {
        if let unwrappedCurrentPages = currentPages {
            if index <= 0 {
                index = unwrappedCurrentPages.count - 1
            } else {
                --index
            }
            setImageAndText(storyView, unwrappedCurrentPages: unwrappedCurrentPages)
        }
    }
    
    /*
    The next button is pressed.
    */
    func onButtonNext() {
        if let unwrappedCurrentPages = currentPages {
            if index >= unwrappedCurrentPages.count - 1 {
                index = 0
            } else {
                ++index
            }
            setImageAndText(storyView, unwrappedCurrentPages: unwrappedCurrentPages)
        }
    }
    
    /*
    Has the reader display the specified set of pages.
    */
    func showPages(pages: [PStoryPage]) {
        currentPages = pages;
        index = 0;
        let numPages = pages.count
        if numPages <= 0 {
            storyView.continueEnabled = false
            storyView.previousAndNextEnabled = false
            storyView.image = nil
            storyView.text = ""
        } else {
            storyView.continueEnabled = true
            if numPages > 1 {
                storyView.previousAndNextEnabled = true
            } else {
                storyView.previousAndNextEnabled = false
            }
            setImageAndText(storyView, unwrappedCurrentPages: pages)
        }
    }
    
    private func setImageAndText(unwrappedStoryView: StoryView!, unwrappedCurrentPages: [PStoryPage]!) {
        let currentPage = unwrappedCurrentPages[index]
        var text = currentPage.text
        let numPages = unwrappedCurrentPages.count
        if numPages > 1 {
            let currentChoiceNumber = index + 1
            let choiceOf = NSLocalizedString("choiceOf", tableName: "GUIElements", comment: "")
            let header: String! =  String(format: "\(choiceOf):\n\n", arguments: [currentChoiceNumber, numPages])
            text += header
        }
        unwrappedStoryView.text = text
        unwrappedStoryView.image = currentPage.image
    }
}