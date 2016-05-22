package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_9;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.CheerleaderSpar;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.FoxtrotReaction;

/**
 * Created by christopherraleigh on 2016-05-21.
 */
public class IWillPetFoxtrot extends StoryChoice {
    public IWillPetFoxtrot() {
        super(R.string.ch9IWillPetFoxtrot, 9096);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        boolean kickedCheerleader = (flags.getCh5SparredWithCheerleader() == CheerleaderSpar.Kicked);
        FoxtrotReaction reaction;
        if (kickedCheerleader)
        {
            reaction = FoxtrotReaction.Hissed;
        }
        else
        {
            reaction = FoxtrotReaction.AcceptedPet;
        }
        vn.getEventFlags().setCh9FoxtrotReacted(reaction);
        super.select();
    }
}
