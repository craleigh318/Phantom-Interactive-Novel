package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_1;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-11.
 */
public class Chapter1 extends Chapter {
    private static StoryChoiceList ch1Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1Title, 1002)}));

    private static StoryChoiceList ch1IAmDrKaden = new StoryChoiceList(R.drawable.i_am_dr_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1IAmDrKaden, 1003)}));

    private static StoryChoiceList ch1ThisIsNewFerando = new StoryChoiceList(R.drawable.cityscape_from_window,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1ThisIsNewFerando, 1004)}));

    private static StoryChoiceList ch1IDrinkElixir = new StoryChoiceList(R.drawable.dr_kaden_drinks_elixir,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1IDrinkElixir, 1005)}));

    private static StoryChoiceList ch1ILeaveHotel = new StoryChoiceList(R.drawable.dr_kaden_walking_among_citizens,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1ILeaveHotel, 1006)}));

    private static StoryChoiceList ch1IGoToAlley = new StoryChoiceList(R.drawable.dr_kaden_ill,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1IGoToAlley, 1007)}));

    private static StoryChoiceList ch1OfficerSeesMe = new StoryChoiceList(R.drawable.officer_notices_dr_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1OfficerSeesMe, 1008)}));

    private static StoryChoiceList ch1MyFaceDisappears = new StoryChoiceList(R.drawable.phantom_reveal,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1MyFaceDisappears, 1009)}));

    private static StoryChoiceList ch1IOpenMyEyes = new StoryChoiceList(R.drawable.phantom_reveal_with_eyes,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1IOpenMyEyes, 1010)}));

    private static StoryChoiceList ch1IPossessOfficer = new StoryChoiceList(R.drawable.possess_police_officer,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1IPossessOfficer, 1011)}));

    private static StoryChoiceList ch1ILookAtMyHands = new StoryChoiceList(R.drawable.officer_hands,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1ILookAtMyHands, 1012)}));

    private static StoryChoiceList ch1IGoToOfficersHome = new StoryChoiceList(R.drawable.drive_to_officer_home,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1IGoToOfficersHome, 1013)}));

    private static StoryChoiceList ch1ISleep = new StoryChoiceList(R.drawable.officer_on_bed,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch1ISleep, 2001)}));

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
