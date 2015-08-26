//
//  LoadGame.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/07/25.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

/*
Load Game option.
*/
class LoadGame: POptionsMenuItem {
    
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
            label.text = StringLocalizer.getGUIString("load")
        }
    }
    
    func onSelect() {
        if ManualSave.localPlayer.authenticated {
            // Push load game view.
        } else {
            // Present Game Center view.
            ManualSave.localPlayer.authenticateHandler = {
                (viewController, error) in
                if let vc = viewController {
                    if let nc = self.displayingVC?.navigationController {
                        nc.presentViewController(vc, animated: true, completion: nil)
                    }
                } else if let e = error {
                    AlertManager.showError(e)
                }
            }
        }
    }
}