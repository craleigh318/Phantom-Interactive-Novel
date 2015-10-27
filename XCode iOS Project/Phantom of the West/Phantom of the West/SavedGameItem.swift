//
//  SavedGameItem.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/26.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Menu to remove advertisements
*/
class SavedGameItem: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    private var savedGame: ManualSave
    
    /*
    Initializes
    */
    init(savedGame: ManualSave) {
        self.savedGame = savedGame
        cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = savedGame.name
        }
        if let detailLabel = cell.detailTextLabel {
            let date = NSDateFormatter.localizedStringFromDate(savedGame.date, dateStyle: .ShortStyle, timeStyle: .NoStyle)
            detailLabel.text = date
        }
    }
    
    func onSelect() {
        let potw = AppDelegate.potwStory
        savedGame.load(potw)
    }
}
