//
//  CharacterVoices.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015-11-05.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import AVFoundation

class CharacterVoices {
    static let synthesizer = AVSpeechSynthesizer()
    
    private static let voiceKaden = AVSpeechSynthesisVoice(language: "en-US")
    
    private static let voiceArvin = AVSpeechSynthesisVoice(language: "fr-FR")
    
    static func kadenUtter(string: String) -> AVSpeechUtterance {
        let newUtterance = AVSpeechUtterance()
        newUtterance.voice = voiceKaden
        newUtterance.pitchMultiplier = 0.75
        return newUtterance
    }
    
    static func arvinUtter(string: String) -> AVSpeechUtterance {
        let newUtterance = AVSpeechUtterance()
        newUtterance.voice = voiceArvin
        newUtterance.pitchMultiplier = 0.75
        return newUtterance
    }
}