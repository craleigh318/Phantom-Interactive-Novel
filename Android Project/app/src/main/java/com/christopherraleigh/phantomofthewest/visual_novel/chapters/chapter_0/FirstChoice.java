package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;

/**
 * Created by christopherraleigh on 2016-05-15.
 */
public class FirstChoice extends StoryChoice {
    public FirstChoice() {
        super(R.string.ch0FirstChoice, 5);
    }

    @Override
    public CharSequence getText(Context c) {
        String next = c.getString(R.string.buttonNextText);
        String ok = c.getString(R.string.buttonOKText);
        CharSequence text = c.getString(getTextID(), next, ok);
        return text;
    }
}
