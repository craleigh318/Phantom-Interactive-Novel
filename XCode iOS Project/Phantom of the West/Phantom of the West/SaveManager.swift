//
//  SaveManager.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/22.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

public class SaveManager {
    
    public static let defaults = NSUserDefaults.standardUserDefaults()
    
    private static let purchasedAdRemovalKey: String  = "purchasedAdRemoval"
    
    private static let voiceoverKey: String  = "voiceoverEnabled"
    
    public internal(set) static var purchasedAdRemoval: Bool {
        get {
        return defaults.boolForKey(purchasedAdRemovalKey)
        }
        set {
            defaults.setBool(newValue, forKey: purchasedAdRemovalKey)
        }
    }
    
    public internal(set) static var voiceover: Bool {
        get {
        return defaults.boolForKey(voiceoverKey)
        }
        set {
            defaults.setBool(newValue, forKey: voiceoverKey)
            if !newValue {
                CharacterVoices.synthesizer.stopSpeakingAtBoundary(.Immediate)
            }
        }
    }
}