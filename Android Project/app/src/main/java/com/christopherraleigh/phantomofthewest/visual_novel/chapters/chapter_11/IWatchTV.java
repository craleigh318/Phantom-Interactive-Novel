package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_11;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.ActivityInSarahRoom;

/**
 * Created by christopherraleigh on 2016-05-22.
 */
public class IWatchTV extends StoryChoice {
    public IWatchTV() {
        super(R.string.ch11IWatchTV, 11132);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh11ActedInSarahRoom(ActivityInSarahRoom.WatchedTV);
        super.select();
    }
}
