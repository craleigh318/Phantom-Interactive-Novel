package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_18;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.FoxtrotReaction;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.Route;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-24.
 */
public class Chapter18 extends Chapter {
    private static StoryChoiceList ch18pTimeLater = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pTimeLater, 18101)}));
    private static StoryChoiceList ch18cTimeLater = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18csTimeLater, 18201)}));
    private static StoryChoiceList ch18sTimeLater = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18csTimeLater, 18301)}));
    private static StoryChoiceList ch18vTimeLater = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vTimeLater, 18401)}));
    private static StoryChoiceList ch18pStadium = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_entrance,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pStadium, 18102)}));
    private static StoryChoiceList ch18pIEnterStage = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pIEnterStage, 18103)}));
    private static StoryChoiceList ch18pCountlessPhantoms = new StoryChoiceList(R.drawable.phantom_epilogue_phantom_crowd,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pCountlessPhantoms, 18104)}));
    private static StoryChoiceList ch18pIGreetPhantoms = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pIGreetPhantoms, 18105)}));
    private static StoryChoiceList ch18pGrownCommunity = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pGrownCommunity, 18106)}));
    private static StoryChoiceList ch18pNextChapter = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pNextChapter, 18107)}));
    private static StoryChoiceList ch18pInfiltrateSociety = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pInfiltrateSociety, 18108)}));
    private static StoryChoiceList ch18pYeah = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pYeah, 18109)}));
    private static StoryChoiceList ch18pWeWillRule = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field_raised_fist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pWeWillRule, 18110)}));
    private static StoryChoiceList ch18pApplause = new StoryChoiceList(R.drawable.phantom_epilogue_stadium_field_raised_fist,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18pApplause, 18901)}));
    private static StoryChoiceList ch18cFoxtrotStoppedHiss = new StoryChoiceList(R.drawable.caitlyn_epilogue_park,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cFoxtrotStoppedHiss, 18203)}));
    private static StoryChoiceList ch18cCaitlynWantsStrawberry = new StoryChoiceList(R.drawable.caitlyn_epilogue_ice_cream_vendor,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cCaitlynWantsStrawberry, 18204)}));
    private static StoryChoiceList ch18cIWantVanilla = new StoryChoiceList(R.drawable.caitlyn_epilogue_ice_cream_vendor,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cIWantVanilla, 18205)}));
    private static StoryChoiceList ch18cWeBuyIceCream = new StoryChoiceList(R.drawable.caitlyn_epilogue_ice_cream_vendor,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cWeBuyIceCream, 18206)}));
    private static StoryChoiceList ch18cWeEat = new StoryChoiceList(R.drawable.caitlyn_epilogue_eating_ice_cream,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cWeEat, 18207)}));
    private static StoryChoiceList ch18cWeGoToFlat = new StoryChoiceList(R.drawable.caitlyn_epilogue_in_car,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18csWeGoToFlat, 18208)}));
    private static StoryChoiceList ch18cWeCuddle = new StoryChoiceList(R.drawable.caitlyn_epilogue_fireplace,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cWeCuddle, 18209)}));
    private static StoryChoiceList ch18cIExaminePhoto = new StoryChoiceList(R.drawable.epilogue_rebecca_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cIExaminePhoto, 18210)}));
    private static StoryChoiceList ch18cCaitlynSeesPhoto = new StoryChoiceList(R.drawable.caitlyn_epilogue_caitlyn_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cCaitlynSeesPhoto, 18211)}));
    private static StoryChoiceList ch18cFormerAngst = new StoryChoiceList(R.drawable.caitlyn_epilogue_caitlyn_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cFormerAngst, 18212)}));
    private static StoryChoiceList ch18cWeLookedCute = new StoryChoiceList(R.drawable.caitlyn_epilogue_caitlyn_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cWeLookedCute, 18213)}));
    private static StoryChoiceList ch18cThingsDoNotWorkOut = new StoryChoiceList(R.drawable.caitlyn_epilogue_caitlyn_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cThingsDoNotWorkOut, 18315)}));
    private static StoryChoiceList ch18sSupermarket = new StoryChoiceList(R.drawable.sarah_epilogue_grocery_shopping,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sSupermarket, 18302)}));
    private static StoryChoiceList ch18sWeBuyGroceries = new StoryChoiceList(R.drawable.sarah_epilogue_grocer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sWeBuyGroceries, 18303)}));
    private static StoryChoiceList ch18sWeMightStay = new StoryChoiceList(R.drawable.sarah_epilogue_grocer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sWeMightStay, 18304)}));
    private static StoryChoiceList ch18sAlwaysAPleasure = new StoryChoiceList(R.drawable.sarah_epilogue_grocer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sAlwaysAPleasure, 18305)}));
    private static StoryChoiceList ch18sWeGoToFlat = new StoryChoiceList(R.drawable.sarah_epilogue_in_car,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18csWeGoToFlat, 18306)}));
    private static StoryChoiceList ch18sWeCuddle = new StoryChoiceList(R.drawable.sarah_epilogue_fireplace,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sWeCuddle, 18307)}));
    private static StoryChoiceList ch18sSarahKnowsMeBetter = new StoryChoiceList(R.drawable.sarah_epilogue_fireplace,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sSarahKnowsMeBetter, 18308)}));
    private static StoryChoiceList ch18sSoAmI = new StoryChoiceList(R.drawable.sarah_epilogue_fireplace,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sSoAmI, 18309)}));
    private static StoryChoiceList ch18sWeKiss = new StoryChoiceList(R.drawable.sarah_epilogue_fireplace_kiss,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sWeKiss, 18310)}));
    private static StoryChoiceList ch18sIExaminePhoto = new StoryChoiceList(R.drawable.epilogue_rebecca_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sIExaminePhoto, 18311)}));
    private static StoryChoiceList ch18sSarahSeesPhoto = new StoryChoiceList(R.drawable.sarah_epilogue_sarah_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sSarahSeesPhoto, 18312)}));
    private static StoryChoiceList ch18sYeahItIs = new StoryChoiceList(R.drawable.sarah_epilogue_sarah_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sYeahItIs, 18313)}));
    private static StoryChoiceList ch18sWeLookedCute = new StoryChoiceList(R.drawable.sarah_epilogue_sarah_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sWeLookedCute, 18314)}));
    private static StoryChoiceList ch18sINuzzleSarah = new StoryChoiceList(R.drawable.sarah_epilogue_sarah_sees_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18sINuzzleSarah, 18315)}));
    private static StoryChoiceList ch18csIBurnPhoto = new StoryChoiceList(R.drawable.epilogue_rebecca_photo_burns,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18csIBurnPhoto, 18901)}));
    private static StoryChoiceList ch18vGoddessOfPride = new StoryChoiceList(R.drawable.vanal_epilogue_vanal_kaden_alone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vGoddessOfPride, 18402)}));
    private static StoryChoiceList ch18vContinentIsWell = new StoryChoiceList(R.drawable.vanal_epilogue_vanal_kaden_alone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vContinentIsWell, 18403)}));
    private static StoryChoiceList ch18vCaitlynAndYukioResearch = new StoryChoiceList(R.drawable.vanal_epilogue_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vCaitlynAndYukioResearch, 18404)}));
    private static StoryChoiceList ch18vCaitlynAndYukioTogether = new StoryChoiceList(R.drawable.vanal_epilogue_caitlyn_and_yukio,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vCaitlynAndYukioTogether, 18405)}));
    private static StoryChoiceList ch18vSarahReports = new StoryChoiceList(R.drawable.vanal_epilogue_sarah,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vSarahReports, 18406)}));
    private static StoryChoiceList ch18vCarleighHonors = new StoryChoiceList(R.drawable.vanal_epilogue_students,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vCarleighHonors, 18408)}));
    private static StoryChoiceList ch18vICannotSeeRebecca = new StoryChoiceList(R.drawable.vanal_epilogue_vanal_kaden_alone,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vICannotSeeRebecca, 18409)}));
    private static StoryChoiceList ch18vSunSets = new StoryChoiceList(R.drawable.vanal_epilogue_sunset,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18vSunSets, 18901)}));
    private static StoryChoiceList ch18TheEnd = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.theEnd, -1)}));

    private static StoryChoiceList ch18Title() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        Route route = flags.getStoryRoute();
        switch (route) {
            case Caitlyn:
                nextState = 18003;
                break;
            case Sarah:
                nextState = 18004;
                break;
            case VaNal:
                nextState = 18005;
                break;
            default:
                nextState = 18002;
                break;
        }
        return new StoryChoiceList(R.drawable.black,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18Title, nextState)}));
    }

    private static StoryChoiceList ch18cRaylenPark() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        boolean foxtrotHissed = (flags.getCh9FoxtrotReacted() == FoxtrotReaction.Hissed);
        if (foxtrotHissed) {
            nextState = 18202;
        } else {
            nextState = 18203;
        }
        return new StoryChoiceList(R.drawable.caitlyn_epilogue_park,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch18cRaylenPark, nextState)}));
    }

    private static StoryChoiceList ch18vElodieCarleighAndHewittStudy() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        int score = flags.getCh5NumCorrectMathAnswers();
        if (score >= 3) {
            nextState = 18407;
        } else {
            nextState = 18408;
        }
        return new StoryChoiceList(R.drawable.vanal_epilogue_students,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.
                        ch18vElodieCarleighAndHewittStudy, nextState)}));
    }

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 18001:
                return ch18Title();
            case 18002:
                return ch18pTimeLater;
            case 18003:
                return ch18cTimeLater;
            case 18004:
                return ch18sTimeLater;
            case 18005:
                return ch18vTimeLater;
            case 18101:
                return ch18pStadium;
            case 18102:
                return ch18pIEnterStage;
            case 18103:
                return ch18pCountlessPhantoms;
            case 18104:
                return ch18pIGreetPhantoms;
            case 18105:
                return ch18pGrownCommunity;
            case 18106:
                return ch18pNextChapter;
            case 18107:
                return ch18pInfiltrateSociety;
            case 18108:
                return ch18pYeah;
            case 18109:
                return ch18pWeWillRule;
            case 18110:
                return ch18pApplause;
            case 18201:
                return ch18cRaylenPark();
            case 18202:
                return ch18cFoxtrotStoppedHiss;
            case 18203:
                return ch18cCaitlynWantsStrawberry;
            case 18204:
                return ch18cIWantVanilla;
            case 18205:
                return ch18cWeBuyIceCream;
            case 18206:
                return ch18cWeEat;
            case 18207:
                return ch18cWeGoToFlat;
            case 18208:
                return ch18cWeCuddle;
            case 18209:
                return ch18cIExaminePhoto;
            case 18210:
                return ch18cCaitlynSeesPhoto;
            case 18211:
                return ch18cFormerAngst;
            case 18212:
                return ch18cWeLookedCute;
            case 18213:
                return ch18cThingsDoNotWorkOut;
            case 18301:
                return ch18sSupermarket;
            case 18302:
                return ch18sWeBuyGroceries;
            case 18303:
                return ch18sWeMightStay;
            case 18304:
                return ch18sAlwaysAPleasure;
            case 18305:
                return ch18sWeGoToFlat;
            case 18306:
                return ch18sWeCuddle;
            case 18307:
                return ch18sSarahKnowsMeBetter;
            case 18308:
                return ch18sSoAmI;
            case 18309:
                return ch18sWeKiss;
            case 18310:
                return ch18sIExaminePhoto;
            case 18311:
                return ch18sSarahSeesPhoto;
            case 18312:
                return ch18sYeahItIs;
            case 18313:
                return ch18sWeLookedCute;
            case 18314:
                return ch18sINuzzleSarah;
            case 18315:
                return ch18csIBurnPhoto;
            case 18401:
                return ch18vGoddessOfPride;
            case 18402:
                return ch18vContinentIsWell;
            case 18403:
                return ch18vCaitlynAndYukioResearch;
            case 18404:
                return ch18vCaitlynAndYukioTogether;
            case 18405:
                return ch18vSarahReports;
            case 18406:
                return ch18vElodieCarleighAndHewittStudy();
            case 18407:
                return ch18vCarleighHonors;
            case 18408:
                return ch18vICannotSeeRebecca;
            case 18409:
                return ch18vSunSets;
            case 18901:
                return ch18TheEnd;
        }
        return null;
    }
}
