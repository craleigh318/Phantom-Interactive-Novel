package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_7;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.HewittHangout;

/**
 * Created by christopherraleigh on 2016-05-19.
 */
public class IAcceptHangout extends StoryChoice {
    public IAcceptHangout() {
        super(R.string.ch7IAcceptHangout, 7022);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh7HungOutWithHewitt(HewittHangout.Accepted);
        super.select();
    }
}
