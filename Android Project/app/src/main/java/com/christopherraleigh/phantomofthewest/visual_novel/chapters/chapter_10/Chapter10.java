package com.christopherraleigh.phantomofthewest.visual_novel.chapters.chapter_10;

import com.christopherraleigh.phantomofthewest.R;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.IStoryChoiceList;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.Chapter;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoice;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.StoryChoiceList;

import java.util.Arrays;

/**
 * Created by christopherraleigh on 2016-05-21.
 */
public class Chapter10 extends Chapter {
    private static StoryChoiceList ch10Title = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10Title, 10002)}));

    private static StoryChoiceList ch10TimeAgo = new StoryChoiceList(R.drawable.black,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10TimeAgo, 10003)}));

    private static StoryChoiceList ch10WeFinishedDinner = new StoryChoiceList(R.drawable.kaden_jim_and_co,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WeFinishedDinner, 10004)}));

    private static StoryChoiceList ch10WhereDoesYukioWork = new StoryChoiceList(R.drawable.kaden_jim_and_co,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WhereDoesYukioWork, 10005)}));

    private static StoryChoiceList ch10ArcticonHiredUs = new StoryChoiceList(R.drawable.kaden_jim_and_co,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10ArcticonHiredUs, 10006)}));

    private static StoryChoiceList ch10CaitlynResearchesMedicine = new StoryChoiceList(R.drawable.kaden_jim_and_co,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10CaitlynResearchesMedicine, 10007)}));

    private static StoryChoiceList ch10JimIsAssistantProf = new StoryChoiceList(R.drawable.kaden_jim_and_co,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10JimIsAssistantProf, 10008)}));

    private static StoryChoiceList ch10WeMissedJim = new StoryChoiceList(R.drawable.kaden_jim_and_co,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WeMissedJim, 10009)}));

    private static StoryChoiceList ch10CaitlynNoticesRAF = new StoryChoiceList(R.drawable.raf_sign_at_ballroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10CaitlynNoticesRAF, 10010)}));

    private static StoryChoiceList ch10WhyDoesCaitlynCallMeKadey = new StoryChoiceList(R.drawable.raf_sign_at_ballroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WhyDoesCaitlynCallMeKadey, 10011)}));

    private static StoryChoiceList ch10CaitlynLikesToNickname = new StoryChoiceList(R.drawable.raf_sign_at_ballroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10CaitlynLikesToNickname, 10012)}));

    private static StoryChoiceList ch10IHadNotBeenGoodFriend = new StoryChoiceList(R.drawable.raf_sign_at_ballroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10IHadNotBeenGoodFriend, 10013)}));

    private static StoryChoiceList ch10WeHadGottenWellTogether = new StoryChoiceList(R.drawable.raf_sign_at_ballroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WeHadGottenWellTogether, 10014)}));

    private static StoryChoiceList ch10WeWentToRAF = new StoryChoiceList(R.drawable.raf_sign_at_ballroom,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WeWentToRAF, 10015)}));

    private static StoryChoiceList ch10WeExploredRAF = new StoryChoiceList(R.drawable.raf_employee,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10WeExploredRAF, 10016)}));

    private static StoryChoiceList ch10CaitlynLookedAtAnimals = new StoryChoiceList(R.drawable.raf_employee,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10CaitlynLookedAtAnimals, 10017)}));

    private static StoryChoiceList ch10CaitlynWantedFerret = new StoryChoiceList(R.drawable.ballroom_ferrets,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10CaitlynWantedFerret, 10018)}));

    private static StoryChoiceList ch10IRejectedFerret = new StoryChoiceList(R.drawable.ballroom_ferrets,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10IRejectedFerret, 10019)}));

    private static StoryChoiceList ch10PleaseCaitlynAsked = new StoryChoiceList(R.drawable.ballroom_ferrets,
            Arrays.asList(new IStoryChoice[]{new StoryChoice(R.string.ch10PleaseCaitlynAsked, 11001)}));

    @Override
    public IStoryChoiceList goToState(int id) {
        switch (id) {
            case 10001:
                return ch10Title;
            case 10002:
                return ch10TimeAgo;
            case 10003:
                return ch10WeFinishedDinner;
            case 10004:
                return ch10WhereDoesYukioWork;
            case 10005:
                return ch10ArcticonHiredUs;
            case 10006:
                return ch10CaitlynResearchesMedicine;
            case 10007:
                return ch10JimIsAssistantProf;
            case 10008:
                return ch10WeMissedJim;
            case 10009:
                return ch10CaitlynNoticesRAF;
            case 10010:
                return ch10WhyDoesCaitlynCallMeKadey;
            case 10011:
                return ch10CaitlynLikesToNickname;
            case 10012:
                return ch10IHadNotBeenGoodFriend;
            case 10013:
                return ch10WeHadGottenWellTogether;
            case 10014:
                return ch10WeWentToRAF;
            case 10015:
                return ch10WeExploredRAF;
            case 10016:
                return ch10CaitlynLookedAtAnimals;
            case 10017:
                return ch10CaitlynWantedFerret;
            case 10018:
                return ch10IRejectedFerret;
            case 10019:
                return ch10PleaseCaitlynAsked;
        }
        return null;
    }
}
