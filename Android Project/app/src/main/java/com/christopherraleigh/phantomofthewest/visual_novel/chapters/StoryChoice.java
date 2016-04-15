package com.christopherraleigh.phantomofthewest.visual_novel.chapters;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;

/**
 * Created by christopherraleigh on 2016-04-15.
 */
public class StoryChoice implements IStoryChoice {
    private int nextState;

    private CharSequence text;

    StoryChoice(CharSequence text, int nextState) {
        this.text = text;
        this.nextState = nextState;
    }

    @Override
    public CharSequence getText() {
        return text;
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.goToState(nextState);
    }
}
