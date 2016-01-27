//
//  CustomNSImageView.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-26.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

class CustomNSImageView: NSImageView {
    override func drawRect(dirtyRect: NSRect) {
        if let context =  NSGraphicsContext.currentContext() {
            context.imageInterpolation = .None
        }
        super.drawRect(dirtyRect)
    }
}