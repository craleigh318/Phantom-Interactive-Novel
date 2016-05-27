package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_11;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.HotelRoomPayment;

/**
 * Created by christopherraleigh on 2016-05-22.
 */
public class IPayAsMyself extends StoryChoice {
    public IPayAsMyself() {
        super(R.string.ch11IPayAsMyself, 11062);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh11PayedForHotelRoom(HotelRoomPayment.KadenMoney);
        super.select();
    }
}
