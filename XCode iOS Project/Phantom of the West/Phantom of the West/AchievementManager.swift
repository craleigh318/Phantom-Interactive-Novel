//
//  AchievementManager.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/31.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

import GameKit

public class AchievementManager {
    private static let achievementToString: [POTWAchievement: String] = [
        .AnyEnding: "heroOfTheWest",
        .PhantomEnding: "lonelyAtTheTop",
        .CaitlynEnding: "doctorNextDoor",
        .SarahEnding: "oldPeerNewFlame",
        .VaNalEnding: "goddessOfPride",
        .AcedMathTest: "acedMathTest",
        .PettedFoxtrot: "pettedFoxtrot",
        .FoxtrotHissed: "foxtrotHissed"
    ]
    
    static func unlockAchievements(achievements: [POTWAchievement]) {
        let lp = GKLocalPlayer.localPlayer()
        if lp.authenticated {
            var gka = [GKAchievement]()
            for a in achievements {
                let sa = achievementToString[a]
                let gk = GKAchievement(identifier: sa)
                gka.append(gk)
            }
            for gk in gka {
                gk.percentComplete = 100.0
            }
            GKAchievement.reportAchievements(gka, withCompletionHandler: nil)
        }
    }
}

public enum POTWAchievement {
    case AnyEnding
    case PhantomEnding
    case CaitlynEnding
    case SarahEnding
    case VaNalEnding
    case AcedMathTest
    case PettedFoxtrot
    case FoxtrotHissed
}

