//
//  POTWChapter17.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/23.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter17: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 17001:
            nextPages = [ch17Title(observer: observer)]
        case 17002:
            nextPages = [ch17IOpenEyes(observer: observer)]
        case 17003:
            nextPages = [ch17DrKaden(observer: observer)]
        case 17004:
            nextPages = [ch17VaNalIsBehindMe(observer: observer)]
        case 17005:
            nextPages = [ch17VaNalHoldsHands(observer: observer)]
        case 17006:
            nextPages = [ch17VaNalAbsorbsMe(observer: observer)]
        case 17007:
            nextPages = [ch17IMergedWithVaNal(observer: observer)]
        case 17008:
            nextPages = [ch17VaNalsSkinChanges(observer: observer)]
        case 17009:
            nextPages = [ch17IWalkToShop(observer: observer)]
        case 17010:
            nextPages = [ch17IExamineVaNal(observer: observer)]
        case 17011:
            nextPages = [ch17HelicoptersFlyAbove(observer: observer)]
        case 17012:
            nextPages = [ch17IClimbBuildingAsVaNal(observer: observer)]
        case 17013:
            nextPages = [ch17HelicoptersFlyToCamp(observer: observer)]
        case 17014:
            nextPages = [ch17OtherGodsBehindMe(observer: observer)]
        case 17015:
            nextPages = [ch17SezjaHugsMe(observer: observer)]
        case 17016:
            nextPages = [ch17IExamineMyselfAsPhantom(observer: observer)]
        case 17017:
            nextPages = [ch17BekShtiiIsBehindMe(observer: observer)]
        case 17018:
            nextPages = [ch17BekShtiiGivesMeDagger(observer: observer)]
        case 17019:
            nextPages = [ch17IStabBekShtii(observer: observer)]
        case 17020:
            nextPages = [ch17IAbsorbBekShtii(observer: observer)]
        case 17021:
            nextPages = [ch17IShake(observer: observer)]
        case 17022:
            nextPages = [ch17IKnowWhatToDo(observer: observer)]
        case 17023:
            nextPages = [ch17IShootTentacles(observer: observer)]
        case 17024:
            nextPages = [ch17TheyPossessCitizens(observer: observer)]
        case 17025:
            nextPages = [ch17WeMarchIntoCity(observer: observer)]
            
        case 17026:
            nextPages = [ch17WeExtinguishFire(observer: observer)]
        case 17027:
            nextPages = [ch17WeDrainFlood(observer: observer)]
        case 17028:
            nextPages = [ch17WeRepairBuildings(observer: observer)]
        case 17029:
            nextPages = [ch17WeRepairBuildings(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch17Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch17Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17002)
    }
}

class ch17IOpenEyes: StoryPage {
    
    let imageName = "Main-Avenue-Present"
    
    let textName = ["ch17IOpenEyes", "ch17IAmOnMainAve", "ch17RainStops", "ch17AveIsEmpty"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 17009
        if let ef = observer.eventFlags {
            if ef.route == .VaNal {
                nextState = 17003
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch17DrKaden: StoryPage {
    
    let imageName = "Main-Avenue-Present"
    
    let textName = ["ch17DrKaden"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17004)
    }
}

class ch17VaNalIsBehindMe: StoryPage {
    
    let imageName = "Main-Avenue-Va'Nal-Talks"
    
    let textName = ["ch17VaNalIsBehindMe", "ch17DoITrulyKnowVaNal", "ch17IKnowVaNal", "ch17INeglectedVaNal", "ch17IAssumedEmpathyVaNal", "ch17ILostTrustVaNal", "ch17IShouldHaveCared", "ch17VaNalAsksWereYou", "ch17RebeccaWantsMeToAcceptVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17005)
    }
}

class ch17VaNalHoldsHands: StoryPage {
    
    let imageName = "Main-Avenue-Va'Nal-Holds-Hands"
    
    let textName = ["ch17VaNalHoldsHands", "ch17ILeanIntoVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17006)
    }
}

class ch17VaNalAbsorbsMe: StoryPage {
    
    let imageName = "Kaden-Possesses-Va'Nal"
    
    let textName = ["ch17VaNalAbsorbsMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17007)
    }
}

class ch17IMergedWithVaNal: StoryPage {
    
    let imageName = "Va'Nal-Hands-Green"
    
    let textName = ["ch17IMergedWithVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17008)
    }
}

class ch17VaNalsSkinChanges: StoryPage {
    
    let imageName = "Va'Nal-Hands-Brown"
    
    let textName = ["ch17VaNalsSkinChanges"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17009)
    }
}

class ch17IWalkToShop: StoryPage {
    
    let imageName = "Shop-Storefront"
    
    let textName = ["ch17IWalkToShop"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 17016
        if let ef = observer.eventFlags {
            let r = ef.route
            if r == .VaNal {
                nextState = 17010
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch17IExamineVaNal: StoryPage {
    
    let imageName = "Shop-Reflection-Va'Nal-Kaden"
    
    let textName = ["ch17IExamineVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17011)
    }
}

class ch17HelicoptersFlyAbove: StoryPage {
    
    let imageName = "Helicopter-in-Sky"
    
    let textName = ["ch17HelicoptersFlyAbove"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17012)
    }
}

class ch17IClimbBuildingAsVaNal: StoryPage {
    
    let imageName = "Va'Nal-Kaden-Climbs"
    
    let textName = ["ch17IClimbBuildingAsVaNal"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17013)
    }
}

class ch17HelicoptersFlyToCamp: StoryPage {
    
    let imageName = "Airport-Evacuees"
    
    let textName = ["ch17HelicoptersFlyToCamp", "ch17IOverlookCamp", "ch17SavedCitizensMakesMeHappy", "ch17ISeemPleasant"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17014)
    }
}

class ch17OtherGodsBehindMe: StoryPage {
    
    let imageName = "Gods-Meet-Va'Nal-Kaden"
    
    let textName = ["ch17OtherGodsBehindMe", "ch17IJoinKinship", "ch17SezjaLovesMe"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17015)
    }
}

class ch17SezjaHugsMe: StoryPage {
    
    let imageName = "Sezja-Hugs-Va'Nal-Kaden"
    
    let textName = ["ch17SezjaHugsMe", "ch17HeartyFeast", "ch17LetUsEat"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18001)
    }
}

class ch17IExamineMyselfAsPhantom: StoryPage {
    
    let imageName = "Shop-Reflection-Phantom"
    
    let textName = ["ch17IExamineMyselfAsPhantom"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17017)
    }
}

class ch17BekShtiiIsBehindMe: StoryPage {
    
    let imageName = "Main-Avenue-Bek'Shtii-Talks"
    
    let textName = ["ch17BekShtiiIsBehindMe", "ch17DoITrulyKnowBekShtii", "ch17IKnowBekShtii", "ch17IHeldBekShtii", "ch17IAssumedEmpathyBekShtii", "ch17ILostTrustBekShtii", "ch17IShouldHaveWorriedAboutMyself", "ch17BekShtiiAsksShouldYou", "ch17RebeccaWantsMeToReleaseBekShtii"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17018)
    }
}

class ch17BekShtiiGivesMeDagger: StoryPage {
    
    let imageName = "Bek'Shtii-Pulls-Dagger"
    
    let textName = ["ch17BekShtiiGivesMeDagger"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17019)
    }
}

class ch17IStabBekShtii: StoryPage {
    
    let imageName = "Bek'Shtii-Stabbed"
    
    let textName = ["ch17IStabBekShtii", "ch17BekShtiiBleeds"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17020)
    }
}

class ch17IAbsorbBekShtii: StoryPage {
    
    let imageName = "Kaden-Absorbs-Bek'Shtii"
    
    let textName = ["ch17IAbsorbBekShtii"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17021)
    }
}

class ch17IShake: StoryPage {
    
    let imageName = "Super-Kaden-Shakes-Greyscale"
    
    let textName = ["ch17IShake"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17022)
    }
}

class ch17IKnowWhatToDo: StoryPage {
    
    let imageName = "Super-Kaden-Shakes-Color"
    
    let textName = ["ch17IKnowWhatToDo"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17023)
    }
}

class ch17IShootTentacles: StoryPage {
    
    let imageName = "Super-Kaden-Unleashes-Tentacles"
    
    let textName = ["ch17IShootTentacles", "ch17TentaclesRise"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17024)
    }
}

class ch17TheyPossessCitizens: StoryPage {
    
    let imageName = "Airport-Evacuees-Possessed"
    
    let textName = ["ch17TheyPossessCitizens", "ch17Hundreds", "ch17Thousands", "ch17TenThousands", "ch17HundredThousands", "ch17IReadEveryone"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17025)
    }
}

class ch17WeMarchIntoCity: StoryPage {
    
    let imageName = "Main-Avenue-Crowd"
    
    let textName = ["ch17WeMarchIntoCity", "ch17WeRestoreCity"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17026)
    }
}

class ch17WeExtinguishFire: StoryPage {
    
    let imageName = "Crowd-Extinguishes-Fire"
    
    let textName = ["ch17WeExtinguishFire"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17027)
    }
}

class ch17WeDrainFlood: StoryPage {
    
    let imageName = "Crowd-Drains-Water"
    
    let textName = ["ch17WeDrainFlood"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(17028)
    }
}

class ch17WeRepairBuildings: StoryPage {
    
    let imageName = "Crowd-Repairs-Building"
    
    let textName = ["ch17WeRepairBuildings", "ch17WeCelebrate"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18001)
    }
}