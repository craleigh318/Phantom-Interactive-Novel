package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.PhysicalEducationAnswer;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class IWouldRun extends StoryChoice {
    public IWouldRun() {
        super(R.string.ch5IWouldRun, 5063);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5AnsweredCoach(PhysicalEducationAnswer.Run);
        super.select();
    }
}
