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
    
    private static let dwc = "ch3DroveWithCaitlyn"
    private static let twc = "ch3TalkedWithCaitlyn"
    private static let twy = "ch3TalkedWithYukio"
    private static let als = "ch5AnsweredLiteratureStory"
    private static let amq1 = "ch5AnsweredMathQuestion1"
    private static let amq4 = "ch5AnsweredMathQuestion4"
    private static let amq9 = "ch5AnsweredMathQuestion9"
    private static let ac = "ch5AnsweredCoach"
    private static let swc = "ch5SparredWithCheerleader"
    private static let howh = "ch7HungOutWithHewitt"
    private static let kv = "ch7KissedVaNal"
    private static let fr = "ch9FoxtrotReacted"
    private static let pfhr = "ch11PayedForHotelRoom"
    private static let haw = "ch11HarassedAfterWorkout"
    private static let aisr = "ch11ActedInSarahRoom"
    
    /*
    The route will determine the ending.
    */
    var route: Route {
        if (ch3TalkedWithCaitlyn == .SaidGoodMother) || (ch3TalkedWithCaitlyn == .EnjoyedPossession) {
            return .Caitlyn
        } else if ch7KissedVaNal == .Kissed {
            return .VaNal
        } else if ch11ActedInSarahRoom == .Showered {
            return .Sarah
        }
        return .Phantom
    }
    
    /*
    In Chapter 3, what did Dr. Kaden do when Caitlyn asked him to disguise as an infant?
    */
    var ch3DroveWithCaitlyn: DriveWithCaitlyn
    
    /*
    In Chapter 3, in Arcticon, how did Dr. Kaden respond while talking with Caitlyn?
    */
    var ch3TalkedWithCaitlyn: TalkWithCaitlyn
    
    /*
    In Chapter 3, in Arcticon, did Dr. Kaden talk with Yukio?
    */
    var ch3TalkedWithYukio: Bool
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Élodie, answer the story abour Paul?
    */
    var ch5AnsweredLiteratureStory: LiteratureStoryAnswer
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Carleigh, answer Question 1 in math class?
    */
    var ch5AnsweredMathQuestion1: TwoChoiceAnswer
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Carleigh, answer Question 4 in math class?
    */
    var ch5AnsweredMathQuestion4: TwoChoiceAnswer
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Carleigh, answer Question 9 in math class?
    */
    var ch5AnsweredMathQuestion9: TwoChoiceAnswer
    
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
    var ch5AnsweredCoach: PhysicalEducationAnswer
    
    /*
    In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, end the spar with the cheerleader?
    */
    var ch5SparredWithCheerleader: CheerleaderSpar
    
    /*
    In Chapter 7, did Dr. Kaden, as Élodie, accept going out with Hewitt?
    */
    var ch7HungOutWithHewitt: HewittHangout
    
    /*
    In Chapter 7, did Dr. Kaden, as Hewitt, kiss Va'Nal, as Élodie?
    */
    var ch7KissedVaNal: VaNalKiss
    
    /*
    In Chapter 9, how did Foxtrot react to Dr. Kaden?
    */
    var ch9FoxtrotReacted: FoxtrotReaction
    
    /*
    In Chapter 11, how did Dr. Kaden, as Sarah, pay for Yukio and Caitlyn's hotel room?
    */
    var ch11PayedForHotelRoom: HotelRoomPayment
    
    /*
    In Chapter 11, how did Dr. Kaden, as Sarah, react to being harassed at the health club?
    */
    var ch11HarassedAfterWorkout: WorkoutHarassment
    
    /*
    Near the end of Chapter 11, what did Dr. Kaden, as Sarah, do in his hotel room?
    */
    var ch11ActedInSarahRoom: ActivityInSarahRoom
    
    override init() {
        ch3DroveWithCaitlyn = .NotYetDriven
        ch3TalkedWithCaitlyn = .HasNotTalked
        ch3TalkedWithYukio = false
        ch5AnsweredLiteratureStory = .NotYetAnswered
        ch5AnsweredMathQuestion1 = .NotYetAnswered
        ch5AnsweredMathQuestion4 = .NotYetAnswered
        ch5AnsweredMathQuestion9 = .NotYetAnswered
        ch5AnsweredCoach = .NotYetAnswered
        ch5SparredWithCheerleader = .NotYetSparred
        ch7HungOutWithHewitt = .NotYetAsked
        ch7KissedVaNal = .NotYetAsked
        ch9FoxtrotReacted = .NotYetEncountered
        ch11PayedForHotelRoom = .NotYetPaid
        ch11HarassedAfterWorkout = .NotYetHarassed
        ch11ActedInSarahRoom = .NotYetReturned
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        if let rawValue = DriveWithCaitlyn(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.dwc)) {
            ch3DroveWithCaitlyn = rawValue
        } else {
            ch3DroveWithCaitlyn = .NotYetDriven
        }
        if let rawValue = TalkWithCaitlyn(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.twc)) {
            ch3TalkedWithCaitlyn = rawValue
        } else {
            ch3TalkedWithCaitlyn = .HasNotTalked
        }
        ch3TalkedWithYukio = aDecoder.decodeBoolForKey(EventFlagsCollection.twy)
        if let rawValue = LiteratureStoryAnswer(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.als)) {
            ch5AnsweredLiteratureStory = rawValue
        } else {
            ch5AnsweredLiteratureStory = .NotYetAnswered
        }
        if let rawValue = TwoChoiceAnswer(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.amq1)) {
            ch5AnsweredMathQuestion1 = rawValue
        } else {
            ch5AnsweredMathQuestion1 = .NotYetAnswered
        }
        if let rawValue = TwoChoiceAnswer(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.amq4)) {
            ch5AnsweredMathQuestion4 = rawValue
        } else {
            ch5AnsweredMathQuestion4 = .NotYetAnswered
        }
        if let rawValue = TwoChoiceAnswer(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.amq9)) {
            ch5AnsweredMathQuestion9 = rawValue
        } else {
            ch5AnsweredMathQuestion9 = .NotYetAnswered
        }
        if let rawValue = PhysicalEducationAnswer(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.ac)) {
            ch5AnsweredCoach = rawValue
        } else {
            ch5AnsweredCoach = .NotYetAnswered
        }
        if let rawValue = CheerleaderSpar(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.swc)) {
            ch5SparredWithCheerleader = rawValue
        } else {
            ch5SparredWithCheerleader = .NotYetSparred
        }
        if let rawValue = HewittHangout(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.howh)) {
            ch7HungOutWithHewitt = rawValue
        } else {
            ch7HungOutWithHewitt = .NotYetAsked
        }
        if let rawValue = VaNalKiss(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.kv)) {
            ch7KissedVaNal = rawValue
        } else {
            ch7KissedVaNal = .NotYetAsked
        }
        if let rawValue = FoxtrotReaction(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.fr)) {
            ch9FoxtrotReacted = rawValue
        } else {
            ch9FoxtrotReacted = .NotYetEncountered
        }
        if let rawValue = HotelRoomPayment(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.pfhr)) {
            ch11PayedForHotelRoom = rawValue
        } else {
            ch11PayedForHotelRoom = .NotYetPaid
        }
        if let rawValue = WorkoutHarassment(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.haw)) {
            ch11HarassedAfterWorkout = rawValue
        } else {
            ch11HarassedAfterWorkout = .NotYetHarassed
        }
        if let rawValue = ActivityInSarahRoom(rawValue: aDecoder.decodeIntegerForKey(EventFlagsCollection.aisr)) {
            ch11ActedInSarahRoom = rawValue
        } else {
            ch11ActedInSarahRoom = .NotYetReturned
        }
        super.init()
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeInteger(ch3DroveWithCaitlyn.rawValue, forKey: EventFlagsCollection.dwc)
        aCoder.encodeInteger(ch3TalkedWithCaitlyn.rawValue, forKey: EventFlagsCollection.twc)
        aCoder.encodeBool(ch3TalkedWithYukio, forKey: EventFlagsCollection.twy)
        aCoder.encodeInteger(ch5AnsweredLiteratureStory.rawValue, forKey: EventFlagsCollection.als)
        aCoder.encodeInteger(ch5AnsweredMathQuestion1.rawValue, forKey: EventFlagsCollection.amq1)
        aCoder.encodeInteger(ch5AnsweredMathQuestion4.rawValue, forKey: EventFlagsCollection.amq4)
        aCoder.encodeInteger(ch5AnsweredMathQuestion9.rawValue, forKey: EventFlagsCollection.amq9)
        aCoder.encodeInteger(ch5AnsweredCoach.rawValue, forKey: EventFlagsCollection.ac)
        aCoder.encodeInteger(ch5SparredWithCheerleader.rawValue, forKey: EventFlagsCollection.swc)
        aCoder.encodeInteger(ch7HungOutWithHewitt.rawValue, forKey: EventFlagsCollection.howh)
        aCoder.encodeInteger(ch7KissedVaNal.rawValue, forKey: EventFlagsCollection.kv)
        aCoder.encodeInteger(ch9FoxtrotReacted.rawValue, forKey: EventFlagsCollection.fr)
        aCoder.encodeInteger(ch11PayedForHotelRoom.rawValue, forKey: EventFlagsCollection.pfhr)
        aCoder.encodeInteger(ch11HarassedAfterWorkout.rawValue, forKey: EventFlagsCollection.haw)
        aCoder.encodeInteger(ch11ActedInSarahRoom.rawValue, forKey: EventFlagsCollection.aisr)
    }
}

/*
The route will determine the ending.
*/
enum Route {
    case Phantom
    case Caitlyn
    case VaNal
    case Sarah
}

/*
In Chapter 3, what did Dr. Kaden do when Caitlyn asked him to disguise as an infant?
*/
enum DriveWithCaitlyn: Int {
    case NotYetDriven
    case DisguisedAsInfant
    case PossessedCaitlyn
}

/*
In Chapter 3, in Arcticon, how did Dr. Kaden respond while talking with Caitlyn?
*/
enum TalkWithCaitlyn: Int {
    case HasNotTalked
    case SaidGoodMother
    case SaidMaybeGoodMother
    case EnjoyedPossession
    case WeirdedByPossession
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Élodie, answer the story abour Paul?
*/
enum LiteratureStoryAnswer: Int {
    case NotYetAnswered
    case PlayToStrengths
    case StayConfident
    case AvoidStupidity
}

/*
A question that has one correct answer and one incorrect answer.
*/
enum TwoChoiceAnswer: Int {
    case NotYetAnswered
    case Correct
    case Incorrect
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, answer the coach's question?
*/
enum PhysicalEducationAnswer: Int {
    case NotYetAnswered
    case Submit
    case Run
    case Disarm
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, end the spar with the cheerleader?
*/
enum CheerleaderSpar: Int {
    case NotYetSparred
    case Pinned
    case Kicked
}

/*
In Chapter 7, did Dr. Kaden, as Élodie, accept going out with Hewitt?
*/
enum HewittHangout: Int {
    case NotYetAsked
    case Accepted
    case Refused
}

/*
In Chapter 7, did Dr. Kaden, as Hewitt, kiss Va'Nal, as Élodie?
*/
enum VaNalKiss: Int {
    case NotYetAsked
    case Kissed
    case Refused
}

/*
In Chapter 9, how did Foxtrot react to Dr. Kaden?
*/
enum FoxtrotReaction: Int {
    case NotYetEncountered
    case NotPetted
    case AcceptedPet
    case Hissed
}

/*
In Chapter 11, how did Dr. Kaden, as Sarah, pay for Yukio and Caitlyn's hotel room?
*/
enum HotelRoomPayment: Int {
    case NotYetPaid
    case KadenMoney
    case SarahMoney
}

/*
In Chapter 11, how did Dr. Kaden, as Sarah, react to being harassed at the health club?
*/
enum WorkoutHarassment: Int {
    case NotYetHarassed
    case Left
    case PlayedAlong
}

/*
Near the end of Chapter 11, what did Dr. Kaden, as Sarah, do in his hotel room?
*/
enum ActivityInSarahRoom: Int {
    case NotYetReturned
    case Showered
    case WatchedTV
}