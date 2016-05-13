package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TalkWithCaitlyn;

/**
 * Created by christopherraleigh on 2016-05-12.
 */
public class CaitlynMightBeGoodMother extends StoryChoice {
    public CaitlynMightBeGoodMother() {
        super(R.string.ch3CaitlynMightBeGoodMother, 3072);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh3TalkedWithCaitlyn(TalkWithCaitlyn.SaidMaybeGoodMother);
        super.select();
    }
}
