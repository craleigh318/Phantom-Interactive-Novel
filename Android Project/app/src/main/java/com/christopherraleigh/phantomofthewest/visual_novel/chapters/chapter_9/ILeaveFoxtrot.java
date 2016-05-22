package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_9;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.FoxtrotReaction;

/**
 * Created by christopherraleigh on 2016-05-21.
 */
public class ILeaveFoxtrot extends StoryChoice {
    public ILeaveFoxtrot() {
        super(R.string.ch9ILeaveFoxtrot, 9094);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh9FoxtrotReacted(FoxtrotReaction.NotPetted);
        super.select();
    }
}
