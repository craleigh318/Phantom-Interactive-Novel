package com.christopherraleigh.phantomofthewest.visual_novel.chapters;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0.Chapter0;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_1.Chapter1;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_2.Chapter2;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3.Chapter3;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_4.Chapter4;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5.Chapter5;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_6.Chapter6;

import java.util.HashMap;

/**
 * Created by christopherraleigh on 2016-04-03.
 */
public class ChapterSelector {
    private final static int CHAPTER_MAX_PAGES = 1000;

    private static HashMap<Integer, Chapter> idToChapter =
            new HashMap<Integer, Chapter>() {{
                put(0, new Chapter0());
                put(1, new Chapter1());
                put(2, new Chapter2());
                put(3, new Chapter3());
                put(4, new Chapter4());
                put(5, new Chapter5());
                put(6, new Chapter6());
            }};

    public static IStoryChoiceList goToState(int id) {
        int chapterNumber = id / CHAPTER_MAX_PAGES;
        IStoryChoiceList nextList = null;
        if (idToChapter.containsKey(chapterNumber)) {
            IChapter chapter = idToChapter.get(chapterNumber);
            nextList = chapter.goToState(id);
        }
        return nextList;
    }
}
