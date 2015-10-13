//
//  EventFlagsCollection.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/13.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

import Foundation

/*
Stores the story's event flags, so that the story can branch according to the reader's choices.
*/
class EventFlagsCollection: NSObject, NSCoding {
    
    /*
    The route will determine the ending.
    */
    var route: Route?
    
    /*
    In Chapter 3, what did Dr. Kaden do when Caitlyn asked him to disguise as an infant?
    */
    var ch3DroveWithCaitlyn: DriveWithCaitlyn?
    
    /*
    In Chapter 3, in Arcticon, how did Dr. Kaden respond while talking with Caitlyn?
    */
    var ch3TalkedWithCaitlyn: TalkWithCaitlyn?
    
    /*
    In Chapter 3, in Arcticon, did Dr. Kaden talk with Yukio?
    */
    var ch3TalkedWithYukio: Bool
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Élodie, answer the story abour Paul?
    */
    var ch5AnsweredLiteratureStory: LiteratureStoryAnswer?
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Carleigh, answer Question 1 in math class?
    */
    var ch5AnsweredMathQuestion1: TwoChoiceAnswer?
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Carleigh, answer Question 4 in math class?
    */
    var ch5AnsweredMathQuestion4: TwoChoiceAnswer?
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Carleigh, answer Question 9 in math class?
    */
    var ch5AnsweredMathQuestion9: TwoChoiceAnswer?
    
    /*
    In Chapter 5, at St. Josephine's, how many questions did Dr. Kaden, as Carleigh, answer correctly in math class under the player's control?
    */
    var ch5numCorrectMathAnswers: Int {
        var numCorrectAnswers = 0
        let questions = [ch5AnsweredMathQuestion1, ch5AnsweredMathQuestion4, ch5AnsweredMathQuestion9]
        for q in questions {
            if q == .Correct {
                ++numCorrectAnswers
            }
        }
        return numCorrectAnswers
    }
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, answer the coach's question?
    */
    var ch5AnsweredCoach: PhysicalEducationAnswer?
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, end the spar with the cheerleader?
    */
    var ch5SparredWithCheerleader: CheerleaderSpar?
    
    /*
    In Chapter 7, did Dr. Kaden, as Élodie, accept going out with Hewitt?
    */
    var ch7HungOutWithHewitt: HewittHangout?
    
    /*
    In Chapter 7, did Dr. Kaden, as Hewitt, kiss Va'Nal, as Élodie?
    */
    var ch7KissedVaNal: VaNalKiss?
    
    /*
    In Chapter 9, how did Foxtrot react to Dr. Kaden?
    */
    var ch9FoxtrotReacted: FoxtrotReaction?
    
    /*
    In Chapter 11, how did Dr. Kaden, as Sarah, pay for Yukio and Caitlyn's hotel room?
    */
    var ch11PayedForHotelRoom: HotelRoomPayment?
    
    /*
    In Chapter 11, how did Dr. Kaden, as Sarah, react to being harassed at the health club?
    */
    var ch11HarassedAfterWorkout: WorkoutHarassment?
    
    /*
    Near the end of Chapter 11, what did Dr. Kaden, as Sarah, do in his hotel room?
    */
    var ch11ActedInSarahRoom: ActivityInSarahRoom?
    
    override init() {
        ch3TalkedWithYukio = false
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        let r = "route"
        let dwc = "ch3DroveWithCaitlyn"
        let twc = "ch3TalkedWithCaitlyn"
        let twy = "ch3TalkedWithYukio"
        let als = "ch5AnsweredLiteratureStory"
        let amq1 = "ch5AnsweredMathQuestion1"
        let amq4 = "ch5AnsweredMathQuestion4"
        let amq9 = "ch5AnsweredMathQuestion9"
        let ac = "ch5AnsweredCoach"
        let swc = "ch5SparredWithCheerleader"
        let howh = "ch7HungOutWithHewitt"
        let kv = "ch7KissedVaNal"
        let fr = "ch9FoxtrotReacted"
        let pfhr = "ch11PayedForHotelRoom"
        let haw = "ch11HarassedAfterWorkout"
        let aisr = "ch11ActedInSarahRoom"
        if aDecoder.containsValueForKey(r) {
            let rawValue = aDecoder.decodeIntegerForKey(r)
            route = Route(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(dwc) {
            let rawValue = aDecoder.decodeIntegerForKey(dwc)
            ch3DroveWithCaitlyn = DriveWithCaitlyn(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(twc) {
            let rawValue = aDecoder.decodeIntegerForKey(twc)
            ch3TalkedWithCaitlyn = TalkWithCaitlyn(rawValue: rawValue)
        }
        ch3TalkedWithYukio = aDecoder.decodeBoolForKey(twy)
        if aDecoder.containsValueForKey(als) {
            let rawValue = aDecoder.decodeIntegerForKey(als)
            ch5AnsweredLiteratureStory = LiteratureStoryAnswer(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(amq1) {
            let rawValue = aDecoder.decodeIntegerForKey(amq1)
            ch5AnsweredMathQuestion1 = TwoChoiceAnswer(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(amq4) {
            let rawValue = aDecoder.decodeIntegerForKey(amq4)
            ch5AnsweredMathQuestion4 = TwoChoiceAnswer(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(amq9) {
            let rawValue = aDecoder.decodeIntegerForKey(amq9)
            ch5AnsweredMathQuestion9 = TwoChoiceAnswer(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(ac) {
            let rawValue = aDecoder.decodeIntegerForKey(ac)
            ch5AnsweredCoach = PhysicalEducationAnswer(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(swc) {
            let rawValue = aDecoder.decodeIntegerForKey(swc)
            ch5SparredWithCheerleader = CheerleaderSpar(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(howh) {
            let rawValue = aDecoder.decodeIntegerForKey(howh)
            ch7HungOutWithHewitt = HewittHangout(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(kv) {
            let rawValue = aDecoder.decodeIntegerForKey(kv)
            ch7KissedVaNal = VaNalKiss(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(fr) {
            let rawValue = aDecoder.decodeIntegerForKey(fr)
            ch9FoxtrotReacted = FoxtrotReaction(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(pfhr) {
            let rawValue = aDecoder.decodeIntegerForKey(pfhr)
            ch11PayedForHotelRoom = HotelRoomPayment(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(haw) {
            let rawValue = aDecoder.decodeIntegerForKey(haw)
            ch11HarassedAfterWorkout = WorkoutHarassment(rawValue: rawValue)
        }
        if aDecoder.containsValueForKey(aisr) {
            let rawValue = aDecoder.decodeIntegerForKey(aisr)
            ch11ActedInSarahRoom = ActivityInSarahRoom(rawValue: rawValue)
        }
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        if let r = route {
            aCoder.encodeInteger(r.rawValue, forKey: "route")
        }
        if let dwc = ch3DroveWithCaitlyn {
            aCoder.encodeInteger(dwc.rawValue, forKey: "ch3DroveWithCaitlyn")
        }
        if let twc = ch3TalkedWithCaitlyn {
            aCoder.encodeInteger(twc.rawValue, forKey: "ch3TalkedWithCaitlyn")
        }
        aCoder.encodeBool(ch3TalkedWithYukio, forKey: "ch3TalkedWithYukio")
        if let als = ch5AnsweredLiteratureStory {
            aCoder.encodeInteger(als.rawValue, forKey: "ch5AnsweredLiteratureStory")
        }
        if let amq1 = ch5AnsweredMathQuestion1 {
            aCoder.encodeInteger(amq1.rawValue, forKey: "ch5AnsweredMathQuestion1")
        }
        if let amq4 = ch5AnsweredMathQuestion4 {
            aCoder.encodeInteger(amq4.rawValue, forKey: "ch5AnsweredMathQuestion4")
        }
        if let amq9 = ch5AnsweredMathQuestion9 {
            aCoder.encodeInteger(amq9.rawValue, forKey: "ch5AnsweredMathQuestion9")
        }
        if let ac = ch5AnsweredCoach {
            aCoder.encodeInteger(ac.rawValue, forKey: "ch5AnsweredCoach")
        }
        if let swc = ch5SparredWithCheerleader {
            aCoder.encodeInteger(swc.rawValue, forKey: "ch5SparredWithCheerleader")
        }
        if let howh = ch7HungOutWithHewitt {
            aCoder.encodeInteger(howh.rawValue, forKey: "ch7HungOutWithHewitt")
        }
        if let kv = ch7KissedVaNal {
            aCoder.encodeInteger(kv.rawValue, forKey: "ch7KissedVaNal")
        }
        if let fr = ch9FoxtrotReacted {
            aCoder.encodeInteger(fr.rawValue, forKey: "ch9FoxtrotReacted")
        }
        if let pfhr = ch11PayedForHotelRoom {
            aCoder.encodeInteger(pfhr.rawValue, forKey: "ch11PayedForHotelRoom")
        }
        if let haw = ch11HarassedAfterWorkout {
            aCoder.encodeInteger(haw.rawValue, forKey: "ch11HarassedAfterWorkout")
        }
        if let aisr = ch11ActedInSarahRoom {
            aCoder.encodeInteger(aisr.rawValue, forKey: "ch11ActedInSarahRoom")
        }
    }
}

/*
The route will determine the ending.
*/
enum Route: Int {
    case Phantom
    case Caitlyn
    case VaNal
    case Sarah
}

/*
In Chapter 3, what did Dr. Kaden do when Caitlyn asked him to disguise as an infant?
*/
enum DriveWithCaitlyn: Int {
    case DisguisedAsInfant
    case PossessedCaitlyn
}

/*
In Chapter 3, in Arcticon, how did Dr. Kaden respond while talking with Caitlyn?
*/
enum TalkWithCaitlyn: Int {
    case SaidGoodMother
    case SaidMaybeGoodMother
    case EnjoyedPossession
    case WeirdedByPossession
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Élodie, answer the story abour Paul?
*/
enum LiteratureStoryAnswer: Int {
    case PlayToStrengths
    case StayConfident
    case AvoidStupidity
}

/*
A question that has one correct answer and one incorrect answer.
*/
enum TwoChoiceAnswer: Int {
    case Correct
    case Incorrect
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, answer the coach's question?
*/
enum PhysicalEducationAnswer: Int {
    case Submit
    case Run
    case Disarm
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, end the spar with the cheerleader?
*/
enum CheerleaderSpar: Int {
    case Pinned
    case Kicked
}

/*
In Chapter 7, did Dr. Kaden, as Élodie, accept going out with Hewitt?
*/
enum HewittHangout: Int {
    case Accepted
    case Refused
}

/*
In Chapter 7, did Dr. Kaden, as Hewitt, kiss Va'Nal, as Élodie?
*/
enum VaNalKiss: Int {
    case Kissed
    case Refused
}

/*
In Chapter 9, how did Foxtrot react to Dr. Kaden?
*/
enum FoxtrotReaction: Int {
    case NotPetted
    case AcceptedPet
    case Hissed
}

/*
In Chapter 11, how did Dr. Kaden, as Sarah, pay for Yukio and Caitlyn's hotel room?
*/
enum HotelRoomPayment: Int {
    case KadenMoney
    case SarahMoney
}

/*
In Chapter 11, how did Dr. Kaden, as Sarah, react to being harassed at the health club?
*/
enum WorkoutHarassment: Int {
    case Left
    case PlayedAlong
}

/*
Near the end of Chapter 11, what did Dr. Kaden, as Sarah, do in his hotel room?
*/
enum ActivityInSarahRoom: Int {
    case Showered
    case WatchedTV
}