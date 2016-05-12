package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_2;

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
public class Chapter2 extends Chapter {
    private static StoryChoiceList ch2Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2Title, 2002)}));

    private static StoryChoiceList ch2TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2TimeAgo, 2003)}));

    private static StoryChoiceList ch2ThereWereFourGods = new StoryChoiceList(R.drawable.professor_lecture,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ThereWereFourGods, 2004)}));

    private static StoryChoiceList ch2ThereWasSezja = new StoryChoiceList(R.drawable.sezja_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ThereWasSezja, 2005)}));

    private static StoryChoiceList ch2ThereWasBaqer = new StoryChoiceList(R.drawable.baqer_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ThereWasBaqer, 2006)}));

    private static StoryChoiceList ch2ThereWasVaNal = new StoryChoiceList(R.drawable.vanal_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ThereWasVaNal, 2007)}));

    private static StoryChoiceList ch2ThereWasBekShtii = new StoryChoiceList(R.drawable.bekshtii_intro,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ThereWasBekShtii, 2008)}));

    private static StoryChoiceList ch2LectureEnded = new StoryChoiceList(R.drawable.kaden_in_lecture,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2LectureEnded, 2009)}));

    private static StoryChoiceList ch2IWentToProfArvin = new StoryChoiceList(R.drawable.kaden_walks_in_school_hall,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2IWentToProfArvin, 2010)}));

    private static StoryChoiceList ch2IGreetProf = new StoryChoiceList(R.drawable.kaden_talks_to_prof,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2IGreetProf, 2011)}));

    private static StoryChoiceList ch2ProfGreetsMe = new StoryChoiceList(R.drawable.kaden_talks_to_prof,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ProfGreetsMe, 2012)}));

    private static StoryChoiceList ch2IConfideToProf = new StoryChoiceList(R.drawable.kaden_talks_to_prof,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2IConfideToProf, 2013)}));

    private static StoryChoiceList ch2ProfDismissesMe = new StoryChoiceList(R.drawable.kaden_talks_to_prof,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch2ProfDismissesMe, 3001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 2001:
                return ch2Title;
            case 2002:
                return ch2TimeAgo;
            case 2003:
                return ch2ThereWereFourGods;
            case 2004:
                return ch2ThereWasSezja;
            case 2005:
                return ch2ThereWasBaqer;
            case 2006:
                return ch2ThereWasVaNal;
            case 2007:
                return ch2ThereWasBekShtii;
            case 2008:
                return ch2LectureEnded;
            case 2009:
                return ch2IWentToProfArvin;
            case 2010:
                return ch2IGreetProf;
            case 2011:
                return ch2ProfGreetsMe;
            case 2012:
                return ch2IConfideToProf;
            case 2013:
                return ch2ProfDismissesMe;
        }
        return null;
    }
}
