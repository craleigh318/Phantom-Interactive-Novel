package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;

/**
 * Created by christopherraleigh on 2016-05-15.
 */
public class Welcome extends StoryChoice {
    public Welcome() {
        super(R.string.ch0Welcome, 2);
    }

    @Override
    public CharSequence getText(Context c) {
        String ok = c.getString(R.string.buttonOKText);
        CharSequence text = c.getString(getTextID(), ok);
        return text;
    }
}
