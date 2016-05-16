package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_4;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-15.
 */
public class Chapter4 extends Chapter {
    private static StoryChoiceList ch4Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4Title, 4002)}));

    private static StoryChoiceList ch4TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4TimeAgo, 4003)}));

    private static StoryChoiceList ch4FieldTripBegan = new StoryChoiceList(R.drawable.field_trip,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4FieldTripBegan, 4004)}));

    private static StoryChoiceList ch4BobbyTeasedMe = new StoryChoiceList(R.drawable.field_trip_kaden_bullied,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4BobbyTeasedMe, 4005)}));

    private static StoryChoiceList ch4RebeccaDefendedMe = new StoryChoiceList(R.drawable.field_trip_kaden_bullied,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4RebeccaDefendedMe, 4006)}));

    private static StoryChoiceList ch4RebeccaComfortedMe = new StoryChoiceList(R.drawable.kaden_meets_rebecca,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4RebeccaComfortedMe, 4007)}));

    private static StoryChoiceList ch4RebeccaLookedFamiliar = new StoryChoiceList(R.drawable.kaden_meets_rebecca,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4RebeccaLookedFamiliar, 4008)}));

    private static StoryChoiceList ch4RebeccaLivedDownstairs = new StoryChoiceList(R.drawable.kaden_meets_rebecca,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4RebeccaLivedDownstairs, 4009)}));

    private static StoryChoiceList ch4IThankedRebecca = new StoryChoiceList(R.drawable.kaden_meets_rebecca,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch4IThankedRebecca, 5001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 4001:
                return ch4Title;
            case 4002:
                return ch4TimeAgo;
            case 4003:
                return ch4FieldTripBegan;
            case 4004:
                return ch4BobbyTeasedMe;
            case 4005:
                return ch4RebeccaDefendedMe;
            case 4006:
                return ch4RebeccaComfortedMe;
            case 4007:
                return ch4RebeccaLookedFamiliar;
            case 4008:
                return ch4RebeccaLivedDownstairs;
            case 4009:
                return ch4IThankedRebecca;
        }
        return null;
    }
}
