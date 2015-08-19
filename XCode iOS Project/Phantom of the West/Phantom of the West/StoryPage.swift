//
//  StoryPage.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/18.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
A concrete implementation of PStoryPage
*/
public class StoryPage: PStoryPage {
    
    private static let storyTextTable = "StoryText"
    
    /*
    Creates a language-localized page from "StoryText.strings".
    */
    static func createLocalizedPage(list: StoryPageList, image: UIImage, stringKeys: [String]) -> StoryPage {
        // Create localized text.
        var localizedText = ""
        var firstString = true
        for k in stringKeys {
            if !firstString {
                localizedText += "\n\n"
            }
            let kValue = NSLocalizedString(k, tableName: storyTextTable, comment: "")
            localizedText += kValue
            firstString = false
        }
        // Create page.
        let newPage = StoryPage(list: list, image: image, text: localizedText)
        return newPage
    }
    
    /*
    The page image.
    */
    public private(set) var image: UIImage
    
    /*
    The page text.
    */
    public private(set) var text: String
    
    /*
    The list holding this page.
    */
    private var list: StoryPageList
    
    init(list: StoryPageList, image: UIImage, text: String) {
        self.list = list
        self.image = image
        self.text = text
    }
    
    /*
    Continues the story from this page.
    */
    public func continueStory() {
        list.nextPage()
    }
}