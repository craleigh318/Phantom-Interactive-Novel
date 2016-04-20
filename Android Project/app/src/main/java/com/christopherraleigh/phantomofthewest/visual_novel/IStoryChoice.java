package com.christopherraleigh.phantomofthewest.visual_novel;

import android.content.Context;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
public interface IStoryChoice {
    CharSequence getText(Context c);

    void select();
}
