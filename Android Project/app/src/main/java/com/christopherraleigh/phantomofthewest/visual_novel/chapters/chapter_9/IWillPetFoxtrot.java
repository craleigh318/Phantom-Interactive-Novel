package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_9;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.FoxtrotReaction;

/**
 * Created by christopherraleigh on 2016-05-21.
 */
public class IWillPetFoxtrot extends StoryChoice {
    private FoxtrotReaction reaction;

    private IWillPetFoxtrot(int nextState, FoxtrotReaction reaction) {
        super(R.string.ch9IWillPetFoxtrot, nextState);
        this.reaction = reaction;
    }

    public static IWillPetFoxtrot Create(boolean kickedCheerleader) {
        int nextState;
        FoxtrotReaction reaction;
        if (kickedCheerleader) {
            nextState = 9095;
            reaction = FoxtrotReaction.Hissed;
        } else {
            nextState = 9096;
            reaction = FoxtrotReaction.AcceptedPet;
        }
        return new IWillPetFoxtrot(nextState, reaction);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh9FoxtrotReacted(reaction);
        super.select();
    }
}
