//
//  StoryText.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Displays the text for the visual novel reader.
*/
class StoryText {
    
    /*
    While in landscape, this view's height should be at least half that of the image's.
    */
    static let landscapeMinHeightRatio: CGFloat = 0.5
    
    /*
    Use this to set the current text.
    */
    var text: String! {
        get {
            return view.text
        }
        set {
            view.text = newValue
            view.setContentOffset(CGPointZero, animated: true)
        }
    }
    
    /*
    Add this to the desired superview.
    */
    private(set) var view: UITextView
    
    /*
    Initializes.
    */
    init() {
        view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        view.editable = false
    }
}