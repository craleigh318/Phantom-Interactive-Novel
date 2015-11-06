//
//  StoryPageVoiced.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015-11-05.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import AVFoundation

class StoryPageVoiced {
    static func speak(utterance: AVSpeechUtterance) {
        utterance.preUtteranceDelay = 0.5
        CharacterVoices.synthesizer.speakUtterance(utterance)
    }
}

class StoryPageVoicedKaden: StoryPage {
    override func playAudioSynthesized() {
        let u = CharacterVoices.kadenUtter(text)
        StoryPageVoiced.speak(u)
    }
}

class StoryPageVoicedArvin: StoryPage {
    override func playAudioSynthesized() {
        let u = CharacterVoices.arvinUtter(text)
        StoryPageVoiced.speak(u)
    }
}