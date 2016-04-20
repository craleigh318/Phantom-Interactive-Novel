package com.christopherraleigh.phantomofthewest.visual_novel;

import android.content.Context;
import android.graphics.drawable.Drawable;

import java.util.List;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
public interface IStoryChoiceList extends List<IStoryChoice> {
    Drawable getImage(Context c);

    void playAudio();
}
