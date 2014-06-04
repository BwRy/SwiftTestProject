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
    
    var tableData = ["test".hash()]
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
                                    
    }
    
    @IBAction func add(sender:AnyObject?) {
        if !hashText.stringValue.isEmpty {
            tableData.append(hashText.stringValue.hash())
        } else {
            var alert = NSAlert()
            alert.alertStyle = NSAlertStyle.InformationalAlertStyle
            alert.messageText = "No Input Data"
            alert.informativeText = "Enter a value to be hashed"
            alert.runModal()
        }
    }
    
    func numberOfRowsInTableView(tableView: NSTableView!) -> Int {
        return tableData.count
    }
    
    func tableView(tableView: NSTableView!, objectValueForTableColumn tableColumn: NSTableColumn!, row: Int) -> AnyObject! {
        return tableData[row].valueForKey(tableColumn.identifier)
    }
}

