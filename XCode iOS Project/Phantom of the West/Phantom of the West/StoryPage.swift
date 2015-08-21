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
    
    private static let storyImagesBundle = NSBundle(path: "StoryImages")
    
    private static let storyTextTable = "StoryText"
    
    /*
    Creates a language-localized page from "StoryText.strings".
    */
    /*static func createLocalizedPage(list: StoryPageList, image: UIImage, stringKeys: [String]) -> StoryPage {
        let localizedText = getLocalizedText(stringKeys)
        let newPage = StoryPage(list: list, image: image, text: localizedText)
        return newPage
    }*/
    
    /*
    Creates a language-localized string from "StoryImages.xcassets".
    */
    static func getLocalizedImage(name: String) -> UIImage {
        let localizedImage = UIImage(named: name, inBundle: storyImagesBundle, compatibleWithTraitCollection: nil)
        return localizedImage!
    }
    
    /*
    Creates a language-localized string from "StoryText.strings".
    */
    static func getLocalizedText(stringKeys: [String]) -> String {
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
        return localizedText
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
    The observer.
    */
    private var observer: PStoryObserver
    
    init(image: UIImage, text: String, observer: PStoryObserver) {
        self.image = image
        self.text = text
        self.observer = observer
    }
    
    /*
    Continues the story from this page.
    */
    public func continueStory() {
        observer.update([])
    }
}