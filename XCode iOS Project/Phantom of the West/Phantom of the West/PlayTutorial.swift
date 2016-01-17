//
//  PlayTutorial.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-16.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
New Game option.
*/
class PlayTutorial: POptionsMenuItem {
    
    /*
    The view controller displaying this cell.
    */
    var displayingVC: UIViewController?
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = StringLocalizer.getGUIString("playTutorial")
        }
    }
    
    func onSelect() {
        AppDelegate.potwStory.playTutorial()
        if let nc = displayingVC?.navigationController {
            nc.popToRootViewControllerAnimated(true)
        }
    }
}