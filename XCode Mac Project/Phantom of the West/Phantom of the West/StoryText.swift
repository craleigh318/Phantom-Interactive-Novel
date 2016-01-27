//
//  StoryText.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

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
            if let intTxt = internalText {
                return intTxt as String
            }
            return ""
        }
        set {
            if let intTxt = internalText {
                intTxt.setString(newValue)
            }
            if let tv = textView {
                tv.font = NSFont.systemFontOfSize(18)
            }
            view.scrollPoint(NSPoint.zero)
        }
    }
    
    private var internalText: NSMutableString? {
        var intTxt: NSMutableString?
        if let txtStorage = textView?.textStorage {
            intTxt = txtStorage.mutableString
        }
        return intTxt
    }
    
    /*
    Add this to the desired superview.
    */
    private(set) var view: NSScrollView = NSScrollView()
    
    /*
    Add this to the scroll view.
    */
    private var textView: NSTextView? {
        get {
            return view.documentView as? NSTextView
        }
        set {
            view.documentView = newValue
        }
    }
    
    /*
    Initializes.
    */
    init() {
        view.hasVerticalScroller = true
        let tv = NSTextView()
        textView = tv
        view.translatesAutoresizingMaskIntoConstraints = false
        tv.editable = false
        tv.autoresizingMask = .ViewWidthSizable
    }
}