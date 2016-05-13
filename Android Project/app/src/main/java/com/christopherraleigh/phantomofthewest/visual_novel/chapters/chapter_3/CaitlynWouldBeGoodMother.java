package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TalkWithCaitlyn;

/**
 * Created by christopherraleigh on 2016-05-12.
 */
public class CaitlynWouldBeGoodMother extends StoryChoice {
    public CaitlynWouldBeGoodMother() {
        super(R.string.ch3CaitlynWouldBeGoodMother, 3071);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh3TalkedWithCaitlyn(TalkWithCaitlyn.SaidGoodMother);
        super.select();
    }
}
