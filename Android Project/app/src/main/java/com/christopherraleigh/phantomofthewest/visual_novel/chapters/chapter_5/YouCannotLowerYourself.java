package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.LiteratureStoryAnswer;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class YouCannotLowerYourself extends StoryChoice {
    public YouCannotLowerYourself() {
        super(R.string.ch5YouCannotLowerYourself, 5025);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5AnsweredLiteratureStory(LiteratureStoryAnswer.PlayToStrengths);
        super.select();
    }
}
