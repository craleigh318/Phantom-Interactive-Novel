package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TalkWithCaitlyn;

/**
 * Created by christopherraleigh on 2016-05-12.
 */
public class PossessionFeltWeird extends StoryChoice {
    public PossessionFeltWeird() {
        super(R.string.ch3PossessionFeltWeird, 3083);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh3TalkedWithCaitlyn(TalkWithCaitlyn.WeirdedByPossession);
        super.select();
    }
}
