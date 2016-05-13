package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_3;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;

/**
 * Created by christopherraleigh on 2016-05-12.
 */
public class IVisitYukio extends StoryChoice {
    public IVisitYukio() {
        super(R.string.ch3IVisitYukio, 3086);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh3TalkedWithYukio(true);
        super.select();
    }
}
