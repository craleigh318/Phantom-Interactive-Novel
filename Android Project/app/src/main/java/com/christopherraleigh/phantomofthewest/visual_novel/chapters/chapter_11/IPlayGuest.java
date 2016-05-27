package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_11;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.WorkoutHarassment;

/**
 * Created by christopherraleigh on 2016-05-22.
 */
public class IPlayGuest extends StoryChoice {
    public IPlayGuest() {
        super(R.string.ch11IPlayGuest, 11117);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh11HarassedAfterWorkout(WorkoutHarassment.PlayedAlong);
        super.select();
    }
}
