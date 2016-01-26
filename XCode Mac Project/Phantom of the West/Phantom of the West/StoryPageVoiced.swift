//
//  StoryPageVoiced.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2016-01-25.
//  Copyright © 2016 Christopher Raleigh. All rights reserved.
//

import AppKit

class StoryPageVoicedKaden: StoryPage {
    override func playAudioSynthesized() {
        CharacterVoices.kadenUtter(text)
    }
}

class StoryPageVoicedArvin: StoryPage {
    override func playAudioSynthesized() {
        CharacterVoices.arvinUtter(text)
    }
}