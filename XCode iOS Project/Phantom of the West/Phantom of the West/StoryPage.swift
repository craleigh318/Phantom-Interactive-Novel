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
            let kValue = StringLocalizer.getStoryTextString(k)
            localizedText += kValue
            firstString = false
        }
        return localizedText
    }
    
    /*
    The observer.
    */
    var observer: PStoryObserver?
    
    /*
    The page image.
    */
    private(set) var image: UIImage
    
    /*
    The page text.
    */
    private(set) var text: String
    
    /*
    Flags used to control story branching.
    */
    private var eventFlags: EventFlagsCollection
    
    init(image: String, text: [String], eventFlags: EventFlagsCollection, observer: PStoryObserver? = nil) {
        self.image = StoryPage.getLocalizedImage(image)
        self.text = StoryPage.getLocalizedText(text)
        self.eventFlags = eventFlags
        self.observer = observer
    }
    
    func continueStory() {
    }
    
    /*
    Call this when ready to continue story.
    This will update the observer, auto-save, play voiceover, et cetera.
    */
    func onNewPages(newPages: [PStoryPage]) {
        if let o = observer {
            o.update(newPages)
        }
        // Auto save.
        // Play voice.
    }
    
    /*
    Converts this object to a saveable format.
    */
    func asNSData() -> NSData {
        let originalObserver = observer
        observer = nil
        let data = NSKeyedArchiver.archivedDataWithRootObject(self)
        observer = originalObserver
        return data
    }
}