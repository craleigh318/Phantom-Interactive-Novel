//
//  PConstraintsChanger.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/19/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Contains methods for reacting to interface orientation changes.
*/
protocol PConstraintsChanger {
    
    /*
    Add new portrait constraints after device rotates.
    */
    func addPortraitConstraints()
    
    /*
    Add new landscape constraints after device rotates.
    */
    func addLandscapeConstraints()
    
    /*
    Remove old constraints before device rotates.
    */
    func removeOrientationConstraints()
}