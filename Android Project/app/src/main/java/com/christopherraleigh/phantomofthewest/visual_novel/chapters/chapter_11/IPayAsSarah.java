package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_11;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.HotelRoomPayment;

/**
 * Created by christopherraleigh on 2016-05-22.
 */
public class IPayAsSarah extends StoryChoice {
    public IPayAsSarah() {
        super(R.string.ch11IPayAsSarah, 11069);
    }

    @Override
    public void select() {
        PotWVN vn = PotWVN.getMainVN();
        vn.getEventFlags().setCh11PayedForHotelRoom(HotelRoomPayment.SarahMoney);
        super.select();
    }
}
