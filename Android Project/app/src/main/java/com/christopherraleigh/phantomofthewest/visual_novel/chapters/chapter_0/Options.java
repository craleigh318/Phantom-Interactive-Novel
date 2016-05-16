package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;

/**
 * Created by christopherraleigh on 2016-05-15.
 */
public class Options extends StoryChoice {
    public Options() {
        super(R.string.ch0Options, 1001);
    }

    @Override
    public CharSequence getText(Context c) {
        String opt = c.getString(R.string.buttonMenuText);
        String ok = c.getString(R.string.buttonOKText);
        CharSequence text = c.getString(getTextID(), opt, ok);
        return text;
    }
}
