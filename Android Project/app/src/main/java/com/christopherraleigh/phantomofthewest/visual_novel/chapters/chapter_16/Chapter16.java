package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_16;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.Route;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-23.
 */
public class Chapter16 extends Chapter {
    private static StoryChoiceList ch16Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16Title, 16002)}));

    private static StoryChoiceList ch16DoIGiveUp = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16DoIGiveUp, 16003)}));

    private static StoryChoiceList ch16HerBrotherWon = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16HerBrotherWon, 16004)}));

    private static StoryChoiceList ch16WhyAreGodsHere = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhyAreGodsHere, 16005)}));

    private static StoryChoiceList ch16IDrankBekShtiisBlood = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16IDrankBekShtiisBlood, 16006)}));

    private static StoryChoiceList ch16IsThatReallyWhy = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16IsThatReallyWhy, 16007)}));

    private static StoryChoiceList ch16SezjaSaidSo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16SezjaSaidSo, 16008)}));

    private static StoryChoiceList ch16WhatDoIDream = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhatDoIDream, 16009)}));

    private static StoryChoiceList ch16VaNalKnows = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16VaNalKnows, 16010)}));

    private static StoryChoiceList ch16WhyDoIKeepDreaming = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhyDoIKeepDreaming, 16011)}));

    private static StoryChoiceList ch16SenseStopped = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16SenseStopped, 16012)}));

    private static StoryChoiceList ch16HowWouldSheFeelAtReunion = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16HowWouldSheFeelAtReunion, 16013)}));

    private static StoryChoiceList ch16ImNotSure = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16ImNotSure, 16014)}));

    private static StoryChoiceList ch16DoINotRemember = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16DoINotRemember, 16015)}));

    private static StoryChoiceList ch16RememberWhat = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16RememberWhat, 16016)}));

    private static StoryChoiceList ch16TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16TimeAgo, 16017)}));

    private static StoryChoiceList ch16WhatTimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhatTimeAgo, 16018)}));

    private static StoryChoiceList ch16IWasAtAirport = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16IWasAtAirport, 16019)}));

    private static StoryChoiceList ch16WhatDidRebeccaSay = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhatDidRebeccaSay, 16020)}));

    private static StoryChoiceList ch16LongTimeNoSee = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16LongTimeNoSee, 16021)}));

    private static StoryChoiceList ch16WhatDidSheSayAfter = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhatDidSheSayAfter, 16022)}));

    private static StoryChoiceList ch16NoHurtFeelings = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16NoHurtFeelings, 16023)}));

    private static StoryChoiceList ch16WhatDidYouSay = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16WhatDidYouSay, 16024)}));
    private static StoryChoiceList ch16BeSuccessful = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16BeSuccessful, 16027)}));
    private static StoryChoiceList ch16FindSomeoneElse = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16FindSomeoneElse, 16027)}));
    private static StoryChoiceList ch16DoThatOK = new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16DoThatOK, 16028)}));
    private static StoryChoiceList ch16RebeccaAndIHugged = new StoryChoiceList(R.drawable.kaden_and_rebecca_hug_at_airport,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch16RebeccaAndIHugged, 17001)}));

    private static StoryChoiceList ch16IAmStillBadWithPeople() {
        PotWVN vn = PotWVN.getMainVN();
        EventFlagsCollection flags = vn.getEventFlags();
        int nextState;
        boolean phantomRoute = (flags.getStoryRoute() == Route.Phantom);
        if (phantomRoute) {
            nextState = 16025;
        } else {
            nextState = 16026;
        }
        return new StoryChoiceList(R.drawable.kaden_and_rebecca_at_airport,
                Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.
                        ch16IAmStillBadWithPeople, nextState)}));
    }

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 16001:
                return ch16Title;
            case 16002:
                return ch16DoIGiveUp;
            case 16003:
                return ch16HerBrotherWon;
            case 16004:
                return ch16WhyAreGodsHere;
            case 16005:
                return ch16IDrankBekShtiisBlood;
            case 16006:
                return ch16IsThatReallyWhy;
            case 16007:
                return ch16SezjaSaidSo;
            case 16008:
                return ch16WhatDoIDream;
            case 16009:
                return ch16VaNalKnows;
            case 16010:
                return ch16WhyDoIKeepDreaming;
            case 16011:
                return ch16SenseStopped;
            case 16012:
                return ch16HowWouldSheFeelAtReunion;
            case 16013:
                return ch16ImNotSure;
            case 16014:
                return ch16DoINotRemember;
            case 16015:
                return ch16RememberWhat;
            case 16016:
                return ch16TimeAgo;
            case 16017:
                return ch16WhatTimeAgo;
            case 16018:
                return ch16IWasAtAirport;
            case 16019:
                return ch16WhatDidRebeccaSay;
            case 16020:
                return ch16LongTimeNoSee;
            case 16021:
                return ch16WhatDidSheSayAfter;
            case 16022:
                return ch16NoHurtFeelings;
            case 16023:
                return ch16WhatDidYouSay;
            case 16024:
                return ch16IAmStillBadWithPeople();
            case 16025:
                return ch16BeSuccessful;
            case 16026:
                return ch16FindSomeoneElse;
            case 16027:
                return ch16DoThatOK;
            case 16028:
                return ch16RebeccaAndIHugged;
        }
        return null;
    }
}
