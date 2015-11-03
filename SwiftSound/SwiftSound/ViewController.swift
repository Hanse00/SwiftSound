//
//  ViewController.swift
//  SwiftSound
//
//  Created by Philip Hansen on 03/11/15.
//  Copyright © 2015 Philip Hansen. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    
    var volume: Float = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func mute(sender: AnyObject) {
        volume = 0
        NSLog("Mute clicked!")
        updateUI()
    }
    
    @IBAction func updateVolume(sender: AnyObject) {
        volume = sender.floatValue
        NSLog("Volume set to: \(volume)")
        updateUI()
    }
    
    func updateUI() {
        textField.floatValue = volume
        slider.floatValue = volume
    }
}

