//
//  ViewController.swift
//  SwiftTestProject
//
//  Created by Lander Brandt on 6/2/14.
//  Copyright (c) 2014 Lander Brandt. All rights reserved.
//

import Cocoa

class ViewController: NSViewController, NSTableViewDataSource {

    @IBOutlet var tableView : NSTableView
    @IBOutlet var hashText : NSTextField
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
                                    
    }
    
    @IBAction func add(sender:AnyObject?) {
        
    }


}

