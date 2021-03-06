package com.christopherraleigh.phantomofthewest.visual_novel.chapters;

import android.util.SparseArray;

import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_0.Chapter0;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_1.Chapter1;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_10.Chapter10;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_11.Chapter11;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_12.Chapter12;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_13.Chapter13;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_14.Chapter14;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_15.Chapter15;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_16.Chapter16;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_17.Chapter17;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_18.Chapter18;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_2.Chapter2;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3.Chapter3;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_4.Chapter4;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5.Chapter5;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_6.Chapter6;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_7.Chapter7;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_8.Chapter8;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_9.Chapter9;

/**
 * Created by christopherraleigh on 2016-04-03.
 */
public class ChapterSelector {
    private final static int CHAPTER_MAX_PAGES = 1000;

    private static SparseArray<Chapter> idToChapter =
            new SparseArray<Chapter>() {{
                put(0, new Chapter0());
                put(1, new Chapter1());
                put(2, new Chapter2());
                put(3, new Chapter3());
                put(4, new Chapter4());
                put(5, new Chapter5());
                put(6, new Chapter6());
                put(7, new Chapter7());
                put(8, new Chapter8());
                put(9, new Chapter9());
                put(10, new Chapter10());
                put(11, new Chapter11());
                put(12, new Chapter12());
                put(13, new Chapter13());
                put(14, new Chapter14());
                put(15, new Chapter15());
                put(16, new Chapter16());
                put(17, new Chapter17());
                put(18, new Chapter18());
            }};

    public static IStoryChoiceList goToState(int id) {
        int chapterNumber = id / CHAPTER_MAX_PAGES;
        IStoryChoiceList nextList = null;
        IChapter chapter = idToChapter.get(chapterNumber);
        if (chapter != null) {
            nextList = chapter.goToState(id);
        }
        return nextList;
    }
}
