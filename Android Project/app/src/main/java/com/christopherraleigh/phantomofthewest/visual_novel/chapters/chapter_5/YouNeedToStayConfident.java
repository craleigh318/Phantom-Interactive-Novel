package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.LiteratureStoryAnswer;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class YouNeedToStayConfident extends StoryChoice {
    public YouNeedToStayConfident() {
        super(R.string.ch5YouNeedToStayConfident, 5026);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5AnsweredLiteratureStory(LiteratureStoryAnswer.StayConfident);
        super.select();
    }
}
