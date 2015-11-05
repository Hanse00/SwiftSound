//
//  ViewController.swift
//  SwiftSound
//
//  Created by Philip Hansen on 03/11/15.
//  Copyright © 2015 Philip Hansen. Licensed under the MIT Licnse.
//  See the LICENSE file in the repository root for details.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var textField: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    
    var track: Track!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        track = Track(path: "beatbox.mp3")
        updateUI()
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func mute(sender: AnyObject) {
        track.volume = 0
        NSLog("Mute clicked!")
        updateUI()
    }
    
    @IBAction func updateVolume(sender: AnyObject) {
        track.volume = sender.floatValue
        NSLog("Volume set to: \(track.volume)")
        updateUI()
    }
    
    func updateUI() {
        textField.floatValue = track.volume
        slider.floatValue = track.volume
    }
}

