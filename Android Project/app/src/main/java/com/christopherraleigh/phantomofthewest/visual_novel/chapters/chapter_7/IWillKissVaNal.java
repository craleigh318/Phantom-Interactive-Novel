package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_7;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.VaNalKiss;

/**
 * Created by christopherraleigh on 2016-05-19.
 */
public class IWillKissVaNal extends StoryChoice {
    public IWillKissVaNal() {
        super(R.string.ch7IWillKissVaNal, 7071);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh7KissedVaNal(VaNalKiss.Kissed);
        super.select();
    }
}
