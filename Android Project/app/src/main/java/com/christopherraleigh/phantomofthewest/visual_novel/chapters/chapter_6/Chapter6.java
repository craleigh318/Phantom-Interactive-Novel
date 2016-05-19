package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_6;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class Chapter6 extends Chapter {
    private static StoryChoiceList ch6Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6Title, 6002)}));

    private static StoryChoiceList ch6TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6TimeAgo, 6003)}));

    private static StoryChoiceList ch6IDatedRebecca = new StoryChoiceList(R.drawable.main_avenue_past,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6IDatedRebecca, 6004)}));

    private static StoryChoiceList ch6RebeccaPhotographedUs = new StoryChoiceList(R.drawable.rebecca_takes_photo,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6RebeccaPhotographedUs, 6005)}));

    private static StoryChoiceList ch6WeWentToRestaurant = new StoryChoiceList(R.drawable.rebecca_dates_kaden,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6WeWentToRestaurant, 6006)}));

    private static StoryChoiceList ch6WeAte = new StoryChoiceList(R.drawable.kaden_and_rebecca_eat,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6WeAte, 6007)}));

    private static StoryChoiceList ch6IWillCompute = new StoryChoiceList(R.drawable.kaden_and_rebecca_eat,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6IWillCompute, 6008)}));

    private static StoryChoiceList ch6RebeccaWillPostPhoto = new StoryChoiceList(R.drawable.kaden_and_rebecca_eat,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6RebeccaWillPostPhoto, 6009)}));

    private static StoryChoiceList ch6IKissedRebecca = new StoryChoiceList(R.drawable.kaden_kisses_rebecca,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch6IKissedRebecca, 7001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 6001:
                return ch6Title;
            case 6002:
                return ch6TimeAgo;
            case 6003:
                return ch6IDatedRebecca;
            case 6004:
                return ch6RebeccaPhotographedUs;
            case 6005:
                return ch6WeWentToRestaurant;
            case 6006:
                return ch6WeAte;
            case 6007:
                return ch6IWillCompute;
            case 6008:
                return ch6RebeccaWillPostPhoto;
            case 6009:
                return ch6IKissedRebecca;
        }
        return null;
    }
}
