package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;

/**
 * Created by christopherraleigh on 2016-05-15.
 */
public class SecondChoice extends StoryChoice {
    public SecondChoice() {
        super(R.string.ch0SecondChoice, 5);
    }

    @Override
    public CharSequence getText(Context c) {
        String prev = c.getString(R.string.buttonPreviousText);
        String ok = c.getString(R.string.buttonOKText);
        CharSequence text = c.getString(getTextID(), prev, ok);
        return text;
    }
}
