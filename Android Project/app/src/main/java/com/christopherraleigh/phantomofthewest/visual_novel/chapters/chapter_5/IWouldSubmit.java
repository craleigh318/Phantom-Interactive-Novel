package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.PhysicalEducationAnswer;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class IWouldSubmit extends StoryChoice {
    public IWouldSubmit() {
        super(R.string.ch5IWouldSubmit, 5062);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5AnsweredCoach(PhysicalEducationAnswer.Submit);
        super.select();
    }
}
