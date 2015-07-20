//
//  ViewController.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/17/07.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var storyView = StoryView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(storyView.view)
        view.addConstraints([
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Left, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: topLayoutGuide, attribute: NSLayoutAttribute.Bottom, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Right, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Right, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: storyView.view, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: bottomLayoutGuide, attribute: NSLayoutAttribute.Top, multiplier: 1.0, constant: 0.0)
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

