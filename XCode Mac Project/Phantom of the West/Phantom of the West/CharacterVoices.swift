//
//  CharacterVoices.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

class CharacterVoices {
    static let synthesizer = NSSpeechSynthesizer()
    
    private static let voiceKaden = CharacterVoices.preferVoice("com.apple.speech.synthesis.voice.Daniel")
    
    private static let voiceArvin = CharacterVoices.preferVoice("com.apple.speech.synthesis.voice.Thomas")
    
    static func kadenUtter(string: String) -> Bool {
        let newUtterance = utter(string, synthesizer: voiceKaden)
        return newUtterance
    }
    
    static func arvinUtter(string: String) -> Bool {
        let newUtterance = utter(string, synthesizer: voiceArvin)
        return newUtterance
    }
    
    static func stopUtterance() {
        if let vk = voiceKaden {
            vk.stopSpeaking()
        }
        if let va = voiceArvin {
            va.stopSpeaking()
        }
    }
    
    private static func utter(string: String, synthesizer: NSSpeechSynthesizer?) -> Bool {
        stopUtterance()
        var spoke = false
        if let synth = synthesizer {
            spoke = synth.startSpeakingString(string)
        }
        return spoke
    }
    
    private static func preferVoice(voiceName: String) -> NSSpeechSynthesizer? {
        let lowercaseName = voiceName.lowercaseString
        let voices = NSSpeechSynthesizer.availableVoices()
        for v in voices {
            if v.lowercaseString.rangeOfString(lowercaseName) != nil {
                let bestVoice = NSSpeechSynthesizer(voice: v)
                return bestVoice
            }
        }
        let bestVoice = NSSpeechSynthesizer()
        return bestVoice
    }
}