package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TwoChoiceAnswer;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class MathQuestion9IncorrectAnswer extends StoryChoice {
    public MathQuestion9IncorrectAnswer() {
        super(R.string.ch5MathQuestion9IncorrectAnswer, 5052);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5AnsweredMathQuestion9(TwoChoiceAnswer.Incorrect);
        super.select();
    }
}
