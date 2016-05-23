package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_14;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-23.
 */
public class Chapter14 extends Chapter {
    private static StoryChoiceList ch14Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14Title, 14002)}));

    private static StoryChoiceList ch14TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14TimeAgo, 14003)}));

    private static StoryChoiceList ch14ItWasDusk = new StoryChoiceList(R.drawable.warm_bloody_dusk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14ItWasDusk, 14004)}));

    private static StoryChoiceList ch14ArmyMarched = new StoryChoiceList(R.drawable.conquistador_with_torch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14ArmyMarched, 14005)}));

    private static StoryChoiceList ch14MenCarriedTorches = new StoryChoiceList(R.drawable.conquistador_with_torch,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14MenCarriedTorches, 14006)}));

    private static StoryChoiceList ch14MenCarriedFirearms = new StoryChoiceList(R.drawable.conquistador_with_gun,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14MenCarriedFirearms, 14007)}));

    private static StoryChoiceList ch14NativesFled = new StoryChoiceList(R.drawable.natives_flee,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14NativesFled, 14008)}));

    private static StoryChoiceList ch14ArmyReachedPyramid = new StoryChoiceList(R.drawable.warm_bloody_dusk,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14ArmyReachedPyramid, 14009)}));

    private static StoryChoiceList ch14PhantomArose = new StoryChoiceList(R.drawable.bekshtii_phantom_from_pyramid,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14PhantomArose, 14010)}));

    private static StoryChoiceList ch14ElFantasma = new StoryChoiceList(R.drawable.bekshtii_phantom_from_pyramid,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch14ElFantasma, 15001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 14001:
                return ch14Title;
            case 14002:
                return ch14TimeAgo;
            case 14003:
                return ch14ItWasDusk;
            case 14004:
                return ch14ArmyMarched;
            case 14005:
                return ch14MenCarriedTorches;
            case 14006:
                return ch14MenCarriedFirearms;
            case 14007:
                return ch14NativesFled;
            case 14008:
                return ch14ArmyReachedPyramid;
            case 14009:
                return ch14PhantomArose;
            case 14010:
                return ch14ElFantasma;
        }
        return null;
    }
}
