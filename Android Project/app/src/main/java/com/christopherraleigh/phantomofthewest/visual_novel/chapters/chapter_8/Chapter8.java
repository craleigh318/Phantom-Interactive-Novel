package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_8;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-19.
 */
public class Chapter8 extends Chapter {
    private static StoryChoiceList ch8Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8Title, 8002)}));

    private static StoryChoiceList ch8TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8TimeAgo, 8003)}));

    private static StoryChoiceList ch8INeededHelpWithReport = new StoryChoiceList(R.drawable.kaden_walks_around_high_school,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8INeededHelpWithReport, 8004)}));

    private static StoryChoiceList ch8IMetSarah = new StoryChoiceList(R.drawable.young_sarah_looks_down,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8IMetSarah, 8005)}));

    private static StoryChoiceList ch8SarahAskedColdly = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8SarahAskedColdly, 8006)}));

    private static StoryChoiceList ch8DidSarahKnowMe = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8DidSarahKnowMe, 8007)}));

    private static StoryChoiceList ch8OKAndSarahAsked = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8OKAndSarahAsked, 8008)}));

    private static StoryChoiceList ch8IAskedSarahForHelp = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8IAskedSarahForHelp, 8009)}));

    private static StoryChoiceList ch8SarahDeclinesHelping = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8SarahDeclinesHelping, 8010)}));

    private static StoryChoiceList ch8RebeccaCouldNotHelp = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8RebeccaCouldNotHelp, 8011)}));

    private static StoryChoiceList ch8DidIKnowRebecca = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8DidIKnowRebecca, 8012)}));

    private static StoryChoiceList ch8IDatedRebecca = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8IDatedRebecca, 8013)}));

    private static StoryChoiceList ch8SarahAgreedToHelp = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8SarahAgreedToHelp, 8014)}));

    private static StoryChoiceList ch8Thanks = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8Thanks, 8015)}));

    private static StoryChoiceList ch8ILookedAtSarahsJournal = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8ILookedAtSarahsJournal, 8016)}));

    private static StoryChoiceList ch8SarahStudiedJournalism = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8SarahStudiedJournalism, 8017)}));

    private static StoryChoiceList ch8IWishedSarahLuck = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8IWishedSarahLuck, 8018)}));

    private static StoryChoiceList ch8SarahThankedMe = new StoryChoiceList(R.drawable.young_sarah_looks_up,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch8SarahThankedMe, 9001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 8001:
                return ch8Title;
            case 8002:
                return ch8TimeAgo;
            case 8003:
                return ch8INeededHelpWithReport;
            case 8004:
                return ch8IMetSarah;
            case 8005:
                return ch8SarahAskedColdly;
            case 8006:
                return ch8DidSarahKnowMe;
            case 8007:
                return ch8OKAndSarahAsked;
            case 8008:
                return ch8IAskedSarahForHelp;
            case 8009:
                return ch8SarahDeclinesHelping;
            case 8010:
                return ch8RebeccaCouldNotHelp;
            case 8011:
                return ch8DidIKnowRebecca;
            case 8012:
                return ch8IDatedRebecca;
            case 8013:
                return ch8SarahAgreedToHelp;
            case 8014:
                return ch8Thanks;
            case 8015:
                return ch8ILookedAtSarahsJournal;
            case 8016:
                return ch8SarahStudiedJournalism;
            case 8017:
                return ch8IWishedSarahLuck;
            case 8018:
                return ch8SarahThankedMe;
        }
        return null;
    }
}
