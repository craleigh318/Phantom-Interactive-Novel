//
//  EventFlagsCollection.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/08/13.
//  Copyright (c) 2015 Christopher Raleigh. All rights reserved.
//

/*
Stores the story's event flags, so that the story can branch according to the reader's choices.
*/
class EventFlagsCollection {
    
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
    var actedInSarahRoom: ActivityInSarahRoom?
    
    init() {
        ch3TalkedWithYukio = false
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
enum DriveWithCaitlyn {
    case DisguisedAsInfant
    case PossessedCaitlyn
}

/*
In Chapter 3, in Arcticon, how did Dr. Kaden respond while talking with Caitlyn?
*/
enum TalkWithCaitlyn {
    case SaidGoodMother
    case SaidMaybeGoodMother
    case EnjoyedPossession
    case WeirdedByPossession
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Élodie, answer the story abour Paul?
*/
enum LiteratureStoryAnswer {
    case PlayToStrengths
    case StayConfident
    case AvoidStupidity
}

/*
A question that has one correct answer and one incorrect answer.
*/
enum TwoChoiceAnswer {
    case Correct
    case Incorrect
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, answer the coach's question?
*/
enum PhysicalEducationAnswer {
    case Submit
    case Run
    case Disarm
}

/*
In Chapter 5, at St. Josephine's, how did Dr. Kaden, as Ananya, end the spar with the cheerleader?
*/
enum CheerleaderSpar {
    case Pinned
    case Kicked
}

/*
In Chapter 7, did Dr. Kaden, as Hewitt, kiss Va'Nal, as Élodie?
*/
enum VaNalKiss {
    case Kissed
    case Refused
}

/*
In Chapter 9, how did Foxtrot react to Dr. Kaden?
*/
enum FoxtrotReaction {
    case NotPetted
    case AcceptedPet
    case Hissed
}

/*
In Chapter 11, how did Dr. Kaden, as Sarah, pay for Yukio and Caitlyn's hotel room?
*/
enum HotelRoomPayment {
    case KadenMoney
    case SarahMoney
}

/*
In Chapter 11, how did Dr. Kaden, as Sarah, react to being harassed at the health club?
*/
enum WorkoutHarassment {
    case Left
    case PlayedAlong
}

/*
Near the end of Chapter 11, what did Dr. Kaden, as Sarah, do in his hotel room?
*/
enum ActivityInSarahRoom {
    case Showered
    case WatchedTV
}