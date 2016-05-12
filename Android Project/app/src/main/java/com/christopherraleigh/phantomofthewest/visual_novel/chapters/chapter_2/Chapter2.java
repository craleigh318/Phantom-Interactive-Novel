package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_2;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;

/**
 * Created by christopherraleigh on 2016-05-11.
 */
public class Chapter2 {
    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 1001:
                return ch1Title;
            case 1002:
                return ch1IAmDrKaden;
            case 1003:
                return ch1ThisIsNewFerando;
            case 1004:
                return ch1IDrinkElixir;
            case 1005:
                return ch1ILeaveHotel;
            case 1006:
                return ch1IGoToAlley;
            case 1007:
                return ch1OfficerSeesMe;
            case 1008:
                return ch1MyFaceDisappears;
            case 1009:
                return ch1IOpenMyEyes;
            case 1010:
                return ch1IPossessOfficer;
            case 1011:
                return ch1ILookAtMyHands;
            case 1012:
                return ch1IGoToOfficersHome;
            case 1013:
                return ch1ISleep;
        }
        return null;
    }
}
