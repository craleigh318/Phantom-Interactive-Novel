//
//  POTWChapter18.swift
//  Phantom of the West
//
//  Created by Christopher Raleigh on 2015/10/24.
//  Copyright © 2015 Christopher Raleigh. All rights reserved.
//

class Chapter18: PPageTurner {
    func goToStoryState(stateID: Int, observer: PhantomOfTheWest) -> [StoryPage] {
        var nextPages: [StoryPage]
        switch stateID {
        case 18001:
            nextPages = [ch18Title(observer: observer)]
        case 18002:
            nextPages = [ch18pTimeLater(observer: observer)]
        case 18003:
            nextPages = [ch18pStadium(observer: observer)]
        case 18004:
            nextPages = [ch18pIEnterStage(observer: observer)]
        case 18005:
            nextPages = [ch18pCountlessPhantoms(observer: observer)]
        case 18006:
            nextPages = [ch18pIGreetPhantoms(observer: observer)]
        case 18007:
            nextPages = [ch18pWeWillRule(observer: observer)]
        case 18008:
            nextPages = [ch18cTimeLater(observer: observer)]
        case 18009:
            nextPages = [ch18cRaylenPark(observer: observer)]
        case 18010:
            nextPages = [ch18cFoxtrotStoppedHiss(observer: observer)]
        case 18011:
            nextPages = [ch18cCaitlynWantsStrawberry(observer: observer)]
        case 18012:
            nextPages = [ch18cWeEat(observer: observer)]
        case 18013:
            nextPages = [ch18cWeGoToFlat(observer: observer)]
        case 18014:
            nextPages = [ch18cWeCuddle(observer: observer)]
        case 18015:
            nextPages = [ch18cIExaminePhoto(observer: observer)]
        case 18016:
            nextPages = [ch18cCaitlynSeesPhoto(observer: observer)]
        case 18017:
            nextPages = [ch18sTimeLater(observer: observer)]
        case 18018:
            nextPages = [ch18sSupermarket(observer: observer)]
        case 18019:
            nextPages = [ch18sWeBuyGroceries(observer: observer)]
        case 18020:
            nextPages = [ch18sWeGoToFlat(observer: observer)]
        case 18021:
            nextPages = [ch18sWeCuddle(observer: observer)]
        case 18022:
            nextPages = [ch18sWeKiss(observer: observer)]
        case 18023:
            nextPages = [ch18sIExaminePhoto(observer: observer)]
        case 18024:
            nextPages = [ch18sSarahSeesPhoto(observer: observer)]
        case 18025:
            nextPages = [ch18csIBurnPhoto(observer: observer)]
        case 18026:
            nextPages = [ch18vTimeLater(observer: observer)]
        case 18027:
            nextPages = [ch18vGoddessOfPride(observer: observer)]
        case 18028:
            nextPages = [ch18vCaitlynAndYukioResearch(observer: observer)]
        case 18029:
            nextPages = [ch18vSarahReports(observer: observer)]
        case 18030:
            nextPages = [ch18vElodieCarleighAndHewittStudy(observer: observer)]
        case 18031:
            nextPages = [ch18vCarleighHonors(observer: observer)]
        case 18032:
            nextPages = [ch18vICannotSeeRebecca(observer: observer)]
        case 18033:
            nextPages = [ch18vSunSets(observer: observer)]
        case 18034:
            nextPages = [ch18TheEnd(observer: observer)]
        default:
            nextPages = []
        }
        return nextPages
    }
}

class ch18Title: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch18Title"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 18002
        if let ef = observer.eventFlags {
            switch ef.route {
            case .Caitlyn:
                nextState = 18008
            case .Sarah:
                nextState = 18017
            case .VaNal:
                nextState = 18026
            default:
                break
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch18pTimeLater: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch18pTimeLater"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18003)
    }
}

class ch18pStadium: StoryPage {
    
    let imageName = "Phantom-Epilogue-Stadium-Entrance"
    
    let textName = ["ch18pStadium"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18004)
    }
}

class ch18pIEnterStage: StoryPage {
    
    let imageName = "Phantom-Epilogue-Stadium-Field"
    
    let textName = ["ch18pIEnterStage"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18005)
    }
}

class ch18pCountlessPhantoms: StoryPage {
    
    let imageName = "Phantom-Epilogue-Phantom-Crowd"
    
    let textName = ["ch18pCountlessPhantoms"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18006)
    }
}

class ch18pIGreetPhantoms: StoryPage {
    
    let imageName = "Phantom-Epilogue-Stadium-Field"
    
    let textName = ["ch18pIGreetPhantoms", "ch18pGrownCommunity", "ch18pNextChapter", "ch18pInfiltrateSociety", "ch18pYeah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18007)
    }
}

class ch18pWeWillRule: StoryPage {
    
    let imageName = "Phantom-Epilogue-Stadium-Field-Raised-Fist"
    
    let textName = ["ch18pWeWillRule", "ch18pApplause"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18034)
    }
}

class ch18cTimeLater: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch18csTimeLater"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18009)
    }
}

class ch18cRaylenPark: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-Park"
    
    let textName = ["ch18cRaylenPark"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 18011
        if let ef = observer.eventFlags {
            if ef.ch9FoxtrotReacted == .Hissed {
                nextState = 18010
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch18cFoxtrotStoppedHiss: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-Park"
    
    let textName = ["ch18cFoxtrotStoppedHiss"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18011)
    }
}

class ch18cCaitlynWantsStrawberry: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-Ice-Cream-Vendor"
    
    let textName = ["ch18cCaitlynWantsStrawberry", "ch18cIWantVanilla", "ch18cWeBuyIceCream"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18012)
    }
}

class ch18cWeEat: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-Eating-Ice-Cream"
    
    let textName = ["ch18cWeEat"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18013)
    }
}

class ch18cWeGoToFlat: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-In-Car"
    
    let textName = ["ch18csWeGoToFlat"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18014)
    }
}

class ch18cWeCuddle: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-Fireplace"
    
    let textName = ["ch18cWeCuddle"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18015)
    }
}

class ch18cIExaminePhoto: StoryPage {
    
    let imageName = "Epilogue-Rebecca-Photo"
    
    let textName = ["ch18cIExaminePhoto"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18016)
    }
}

class ch18cCaitlynSeesPhoto: StoryPage {
    
    let imageName = "Caitlyn-Epilogue-Caitlyn-Sees-Photo"
    
    let textName = ["ch18cCaitlynSeesPhoto", "ch18cFormerAngst", "ch18cWeLookedCute", "ch18cThingsDoNotWorkOut"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18025)
    }
}

class ch18sTimeLater: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch18csTimeLater"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18018)
    }
}

class ch18sSupermarket: StoryPage {
    
    let imageName = "Sarah-Epilogue-Grocery-Shopping"
    
    let textName = ["ch18sSupermarket"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18019)
    }
}

class ch18sWeBuyGroceries: StoryPage {
    
    let imageName = "Sarah-Epilogue-Grocer"
    
    let textName = ["ch18sWeBuyGroceries", "ch18sWeMightStay", "ch18sAlwaysAPleasure"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18020)
    }
}

class ch18sWeGoToFlat: StoryPage {
    
    let imageName = "Sarah-Epilogue-In-Car"
    
    let textName = ["ch18csWeGoToFlat"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18021)
    }
}

class ch18sWeCuddle: StoryPage {
    
    let imageName = "Sarah-Epilogue-Fireplace"
    
    let textName = ["ch18sWeCuddle", "ch18sSarahKnowsMeBetter", "ch18sSoAmI"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18022)
    }
}

class ch18sWeKiss: StoryPage {
    
    let imageName = "Sarah-Epilogue-Fireplace-Kiss"
    
    let textName = ["ch18sWeKiss"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18023)
    }
}

class ch18sIExaminePhoto: StoryPage {
    
    let imageName = "Epilogue-Rebecca-Photo"
    
    let textName = ["ch18sIExaminePhoto"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18024)
    }
}

class ch18sSarahSeesPhoto: StoryPage {
    
    let imageName = "Sarah-Epilogue-Sarah-Sees-Photo"
    
    let textName = ["ch18sSarahSeesPhoto", "ch18sYeahItIs", "ch18sWeLookedCute", "ch18sINuzzleSarah"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18025)
    }
}

class ch18csIBurnPhoto: StoryPage {
    
    let imageName = "Epilogue-Rebecca-Photo-Burns"
    
    let textName = ["ch18csIBurnPhoto"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18034)
    }
}

class ch18vTimeLater: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["ch18vTimeLater"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18027)
    }
}

class ch18vGoddessOfPride: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Va'Nal-Kaden-Alone"
    
    let textName = ["ch18vGoddessOfPride", "ch18vContinentIsWell"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18028)
    }
}

class ch18vCaitlynAndYukioResearch: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Caitlyn-and-Yukio"
    
    let textName = ["ch18vCaitlynAndYukioResearch", "ch18vCaitlynAndYukioTogether"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18029)
    }
}

class ch18vSarahReports: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Sarah"
    
    let textName = ["ch18vSarahReports"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18030)
    }
}

class ch18vElodieCarleighAndHewittStudy: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Students"
    
    let textName = ["ch18vElodieCarleighAndHewittStudy"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        var nextState = 18032
        if let ef = observer.eventFlags {
            if ef.ch5numCorrectMathAnswers >= 3 {
                nextState = 18031
            }
        }
        observer.goToStoryState(nextState)
    }
}

class ch18vCarleighHonors: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Students"
    
    let textName = ["ch18vCarleighHonors"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18032)
    }
}

class ch18vICannotSeeRebecca: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Va'Nal-Kaden-Alone"
    
    let textName = ["ch18vICannotSeeRebecca"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18033)
    }
}

class ch18vSunSets: StoryPage {
    
    let imageName = "Va'Nal-Epilogue-Sunset"
    
    let textName = ["ch18vSunSets"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
    }
    
    override func continueStory() {
        observer.goToStoryState(18034)
    }
}

class ch18TheEnd: StoryPage {
    
    let imageName = "Black"
    
    let textName = ["theEnd"]
    
    init(observer: PhantomOfTheWest) {
        super.init(image: imageName, text: textName, observer: observer)
        var achievementsToUnlock: [POTWAchievement] = [.AnyEnding]
        if let ef = observer.eventFlags {
            var ending: POTWAchievement
            let route = ef.route
            switch route {
            case .Phantom:
                ending = .PhantomEnding
            case .Caitlyn:
                ending = .CaitlynEnding
            case .VaNal:
                ending = .VaNalEnding
            case .Sarah:
                ending = .SarahEnding
            }
            achievementsToUnlock.append(ending)
        }
        AchievementManager.unlockAchievements(achievementsToUnlock)
    }
}