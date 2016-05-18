package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.CheerleaderSpar;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class IKickCheerleader extends StoryChoice {
    public IKickCheerleader() {
        super(R.string.ch5IKickCheerleader, 5071);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5SparredWithCheerleader(CheerleaderSpar.Kicked);
        super.select();
    }
}
