package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-04-19.
 */
public class Chapter0 extends Chapter {
    private static StoryChoiceList ch0Welcome = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new Welcome()}));

    private static StoryChoiceList ch0POTWSimple = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new POTWSimple()}));

    private static StoryChoiceList ch0MultipleChoices = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new MultipleChoices()}));

    private static StoryChoiceList ch0FirstChoice = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{
                    new FirstChoice(),
                    new SecondChoice()
            }));

    private static StoryChoiceList ch0Options = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new Options()}));

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
}
