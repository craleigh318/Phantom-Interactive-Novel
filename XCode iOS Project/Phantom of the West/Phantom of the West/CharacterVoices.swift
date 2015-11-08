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
    
    private static let voiceKaden = CharacterVoices.preferLanguage("en-GB")
    
    private static let voiceArvin = CharacterVoices.preferLanguage("fr-FR")
    
    static func kadenUtter(string: String) -> AVSpeechUtterance {
        let newUtterance = AVSpeechUtterance(string: string)
        newUtterance.voice = voiceKaden
        //newUtterance.pitchMultiplier = 0.75
        return newUtterance
    }
    
    static func arvinUtter(string: String) -> AVSpeechUtterance {
        let newUtterance = AVSpeechUtterance(string: string)
        newUtterance.voice = voiceArvin
        //newUtterance.pitchMultiplier = 0.75
        return newUtterance
    }
    
    private static func preferLanguage(language: String) -> AVSpeechSynthesisVoice? {
        var voice = AVSpeechSynthesisVoice(language: language)
        if voice == nil {
            voice = AVSpeechSynthesisVoice()
        }
        return voice
    }
}