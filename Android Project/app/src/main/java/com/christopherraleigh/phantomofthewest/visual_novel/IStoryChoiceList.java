package com.christopherraleigh.phantomofthewest.visual_novel;

import android.graphics.drawable.Drawable;

import java.util.List;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
interface IStoryChoiceList extends List<IStoryChoice> {
    Drawable getImage();

    void playAudio();
}
