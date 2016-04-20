package com.christopherraleigh.phantomofthewest.visual_novel.chapters;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;

/**
 * Created by christopherraleigh on 2016-04-19.
 */
public interface IChapter {
    IStoryChoiceList goToState(int id);
}
