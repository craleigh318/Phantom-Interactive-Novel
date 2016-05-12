package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by christopherraleigh on 2016-04-19.
 */
public class Chapter0 extends Chapter {
    private static StoryChoiceList ch0Welcome = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch0Welcome, 2)}));

    private static StoryChoiceList ch0POTWSimple = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch0POTWSimple, 3)}));

    private static StoryChoiceList ch0MultipleChoices = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch0MultipleChoices, 4)}));

    private static StoryChoiceList ch0FirstChoice = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{
                    new StoryChoice(R.string.ch0FirstChoice, 5),
                    new StoryChoice(R.string.ch0SecondChoice, 5)
            }));

    private static StoryChoiceList ch0Options = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch0Options, 1001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 1:
                return ch0Welcome;
            case 2:
                return ch0POTWSimple;
            case 3:
                return ch0MultipleChoices;
            case 4:
                return ch0FirstChoice;
            case 5:
                return ch0Options;
        }
        return null;
    }

    public Chapter0() {
        super();
    }
}
