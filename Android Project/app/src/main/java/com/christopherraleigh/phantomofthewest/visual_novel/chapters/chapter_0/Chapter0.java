package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
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

    private static HashMap<Integer, StoryChoiceList> dictionary = new HashMap<Integer, StoryChoiceList>(){{
        put(1, ch0Welcome);
        put(2, ch0POTWSimple);
        put(3, ch0MultipleChoices);
        put(4, ch0FirstChoice);
        put(5, ch0Options);
    }};

    public Chapter0() {
        super(dictionary);
    }
}
