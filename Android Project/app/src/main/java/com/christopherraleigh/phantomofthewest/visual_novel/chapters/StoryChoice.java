package com.christopherraleigh.phantomofthewest.visual_novel.chapters;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;

/**
 * Created by christopherraleigh on 2016-04-15.
 */
public class StoryChoice implements IStoryChoice {
    private int nextState;

    private int textID;

    public StoryChoice(int textID, int nextState) {
        this.textID = textID;
        this.nextState = nextState;
    }

    @Override
    public CharSequence getText(Context c) {
        return c.getText(textID);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.goToState(nextState);
    }
}
