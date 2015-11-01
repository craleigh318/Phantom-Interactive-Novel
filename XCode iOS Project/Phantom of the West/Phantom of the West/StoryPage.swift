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
class StoryPage: PStoryPage {
    
    private static let storyImagesBundle = NSBundle(path: "StoryImages")
    
    private static let storyTextTable = "StoryText"
    
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
    static func getLocalizedText(stringKeys: [String]) -> [String] {
        var localizedText = [String]()
        for k in stringKeys {
            let kValue = StringLocalizer.getStoryTextString(k)
            localizedText.append(kValue)
        }
        return localizedText
    }
    
    /*
    The observer.
    */
    var observer: PhantomOfTheWest
    
    /*
    The page image.
    */
    private(set) var image: UIImage
    
    /*
    The page text.
    */
    var text: String {
        return allText[lineNumber]
    }
    
    private var allText: [String]
    
    private var lineNumber: Int
    
    init(image: String, text: [String], observer: PhantomOfTheWest) {
        self.image = StoryPage.getLocalizedImage(image)
        self.allText = StoryPage.getLocalizedText(text)
        self.lineNumber = 0
        self.observer = observer
    }
    
    func continuePage() {
        let lastIndex = allText.count - 1
        if lineNumber >= lastIndex {
            continueStory()
        } else {
            ++lineNumber
            observer.update([self])
        }
    }
    
    func continueStory() {
        observer.update([])
    }
}