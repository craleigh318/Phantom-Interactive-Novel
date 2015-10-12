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
    Converts an array to a saveable format.
    */
    static func pagesToNSData(pages: [StoryPage]) -> NSData {
        var savingPages = [NSData]()
        for p in pages {
            let pa = p.asNSData()
            savingPages.append(pa)
        }
        let savingPagesArchived = NSKeyedArchiver.archivedDataWithRootObject(savingPages)
        return savingPagesArchived
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
    private(set) var text: String
    
    init(image: String, text: [String], observer: PhantomOfTheWest) {
        self.image = StoryPage.getLocalizedImage(image)
        self.text = StoryPage.getLocalizedText(text)
        self.observer = observer
    }
    
    func continueStory() {
        onNewPages([])
    }
    
    /*
    Call this when ready to continue story.
    This will update the observer, auto-save, play voiceover, et cetera.
    */
    func onNewPages(newPages: [StoryPage]) {
        //Display next page.
        observer.update(newPages)
        // Auto save.
        /*let savingPagesArchived = StoryPage.pagesToNSData(newPages)
        AutoSave.save(savingPagesArchived)*/
        // Play voice.
    }
    
    /*
    Converts this object to a saveable format.
    */
    func asNSData() -> NSData {
        //let originalObserver = observer
        //observer = nil
        let data = NSKeyedArchiver.archivedDataWithRootObject(self)
        //observer = originalObserver
        return data
    }
}