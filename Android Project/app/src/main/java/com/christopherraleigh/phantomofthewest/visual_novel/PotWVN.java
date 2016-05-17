package com.christopherraleigh.phantomofthewest.visual_novel;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.data_management.DataManager;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.*;

import com.christopherraleigh.phantomofthewest.visual_novel.serialization.*;

import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.*;

import java.lang.ref.WeakReference;
import java.util.Observable;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
public class PotWVN extends Observable {

    private static PotWVN mainVN = null;

    public static PotWVN getMainVN() {
        return mainVN;
    }

    private static final int STORY_START = 1001;

    private static final int TUTORIAL_START = 1;

    public static void startUp(Context c) {
        mainVN = new PotWVN(c);
        GameState autoSave = mainVN.loadAutoSave();
        if (autoSave != null) {
            mainVN.loadGame(autoSave);
        } else {
            mainVN.playTutorial();
        }
    }

    private WeakReference<Context> context;

    private IStoryChoiceList currentChoices = null;

    private EventFlagsCollection eventFlags = null;

    private int id = 0;

    public IStoryChoiceList getCurrentChoices() {
        return currentChoices;
    }

    public EventFlagsCollection getEventFlags() {
        return eventFlags;
    }

    public void goToState(int id) {
        this.id = id;
        setCurrentChoices(ChapterSelector.goToState(id));
    }

    public void loadGame(GameState gs) {
        eventFlags = gs.getEventFlags();
        goToState(gs.getID());
    }

    public void newGame() {
        newGameAt(STORY_START);
    }

    public void playTutorial() {

        newGameAt(TUTORIAL_START);
    }

    public GameState saveGame() {
        GameState gs = new GameState(eventFlags, id);
        return gs;
    }

    private PotWVN(Context context) {
        this.context = new WeakReference<>(context);
    }

    private void autoSave() {
        Context strongContext = context.get();
        if (strongContext != null) {
            GameState gs = saveGame();
            DataManager.autoSave(strongContext, gs);
        }
    }

    private GameState loadAutoSave() {
        GameState gs = null;
        Context strongContext = context.get();
        if (strongContext != null) {
            gs = DataManager.loadAutoSave(strongContext);
        }
        return gs;
    }

    private void newGameAt(int startingPage) {
        eventFlags = new EventFlagsCollection();
        goToState(startingPage);
    }

    private void playAudio() {
        if (currentChoices != null) {
            currentChoices.playAudio();
        }
    }

    private void prepareToNotifyObservers() {
        stopAudio();
        autoSave();
        setChanged();
        notifyObservers(this);
        playAudio();
    }

    private void setCurrentChoices(IStoryChoiceList choices) {
        currentChoices = choices;
        prepareToNotifyObservers();
    }

    private void stopAudio() {
        /*VoiceoverManager.MainManager.StopSpeech();*/
    }
}