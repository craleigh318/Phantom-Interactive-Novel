package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_12;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-22.
 */
public class Chapter12 extends Chapter {
    private static StoryChoiceList ch12Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12Title, 12002)}));

    private static StoryChoiceList ch12TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12TimeAgo, 12003)}));

    private static StoryChoiceList ch12RebeccaAvoidedMe = new StoryChoiceList(R.drawable.kaden_alone_at_school,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12RebeccaAvoidedMe, 12004)}));

    private static StoryChoiceList ch12ISpiedOnRebecca = new StoryChoiceList(R.drawable.kaden_binoculars_raised,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12ISpiedOnRebecca, 12005)}));

    private static StoryChoiceList ch12ISawIntoRebeccaRoom = new StoryChoiceList(R.drawable.rebecca_cheats,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12ISawIntoRebeccaRoom, 12006)}));

    private static StoryChoiceList ch12DidRebeccaLoseInterest = new StoryChoiceList(R.drawable.kaden_binoculars_lowered_color,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12DidRebeccaLoseInterest, 12007)}));

    private static StoryChoiceList ch12MyHeartStopped = new StoryChoiceList(R.drawable.kaden_binoculars_lowered_greyscale,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12MyHeartStopped, 12008)}));

    private static StoryChoiceList ch12ICaughtRebecca = new StoryChoiceList(R.drawable.rebecca_breaks_up_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12ICaughtRebecca, 12009)}));

    private static StoryChoiceList ch12RebeccaWasUncomfortable = new StoryChoiceList(R.drawable.rebecca_breaks_up_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12RebeccaWasUncomfortable, 12010)}));

    private static StoryChoiceList ch12ILeftRebeccaAlone = new StoryChoiceList(R.drawable.rebecca_breaks_up_with_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch12ILeftRebeccaAlone, 13001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 12001:
                return ch12Title;
            case 12002:
                return ch12TimeAgo;
            case 12003:
                return ch12RebeccaAvoidedMe;
            case 12004:
                return ch12ISpiedOnRebecca;
            case 12005:
                return ch12ISawIntoRebeccaRoom;
            case 12006:
                return ch12DidRebeccaLoseInterest;
            case 12007:
                return ch12MyHeartStopped;
            case 12008:
                return ch12ICaughtRebecca;
            case 12009:
                return ch12RebeccaWasUncomfortable;
            case 12010:
                return ch12ILeftRebeccaAlone;
        }
        return null;
    }
}
