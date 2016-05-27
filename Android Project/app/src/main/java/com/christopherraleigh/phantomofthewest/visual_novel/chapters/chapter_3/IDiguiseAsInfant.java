package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.DriveWithCaitlyn;

/**
 * Created by christopherraleigh on 2016-05-12.
 */
public class IDiguiseAsInfant extends StoryChoice {
    public IDiguiseAsInfant() {
        super(R.string.ch3IDiguiseAsInfant, 3025);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh3DroveWithCaitlyn(DriveWithCaitlyn.DisguisedAsInfant);
        super.select();
    }
}
