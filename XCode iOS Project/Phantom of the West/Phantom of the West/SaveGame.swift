//
//  SaveGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Save Game option.
*/
class SaveGame: POptionsMenuItem {
    
    private(set) var cell: UITableViewCell
    
    /*
    Initializes
    */
    init() {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)
        if let label = cell.textLabel {
            label.text = StringLocalizer.getGUIString("save")
        }
    }
    
    func onSelect() {
        /*let localPlayer = GKLocalPlayer.localPlayer()
        if localPlayer.authenticated {
            // Push load game view.
            if let vc = displayingVC {
                if let nc = vc.navigationController {
                    nc.pushViewController(SaveGameMenu(), animated: true)
                }
            }
        } else {
            // Present Game Center view.
            ManualSave.authenticatePlayer()
        }*/
    }
}