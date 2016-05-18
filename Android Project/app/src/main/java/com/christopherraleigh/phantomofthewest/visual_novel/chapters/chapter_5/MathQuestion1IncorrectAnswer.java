package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_5;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.TwoChoiceAnswer;

/**
 * Created by christopherraleigh on 2016-05-18.
 */
public class MathQuestion1IncorrectAnswer extends StoryChoice {
    public MathQuestion1IncorrectAnswer() {
        super(R.string.ch5MathQuestion1IncorrectAnswer, 5048);
    }

    @Override
    public void select()
    {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh5AnsweredMathQuestion1(TwoChoiceAnswer.Incorrect);
        super.select();
    }
}
