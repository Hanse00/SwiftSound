//
//  Track.swift
//  SwiftSound
//
//  Created by Philip Hansen on 03/11/15.
//  Copyright © 2015 Philip Hansen. All rights reserved.
//

import Cocoa

class Track: NSObject {
    var sound: NSSound!
    
    var volume: Float = 0 {
        didSet {
            // Valid volumes are from 0 to 11, sound takes a float value between 0 and 1
            let scaledVolume = volume / 11
            sound.volume = scaledVolume
        }
    }
    
    init(path: String) {
        let pathComponents = path.componentsSeparatedByString(".")
        let file: String! = NSBundle.mainBundle().pathForResource(pathComponents[0], ofType: pathComponents[1])
        sound = NSSound.init(contentsOfFile: file, byReference: false)
        sound.loops = true
        sound.volume = volume
        sound.play()
    }
}
