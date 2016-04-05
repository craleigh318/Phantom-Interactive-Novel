package com.christopherraleigh.phantomofthewest.visual_novel;

import com.christopherraleigh.phantomofthewest.data_management.DataManager;
import com.christopherraleigh.phantomofthewest.visual_novel.chapters.*;

import com.christopherraleigh.phantomofthewest.visual_novel.serialization.*;

import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.*;

import java.util.Observable;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
public class PotWVN extends Observable {

    private static PotWVN mainVN = new PotWVN();

    public static PotWVN getMainVN() {
        return mainVN;
    }

    private static final int STORY_START = 1001;

    private static final int TUTORIAL_START = 1;

    private IStoryChoiceList currentChoices = null;

    private EventFlagsCollection eventFlags = null;

    private int id = 0;

    public IStoryChoiceList getCurrentChoices() {
        return currentChoices;
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

    public void startUp() {
        GameState autoSave = loadAutoSave();
        if (autoSave != null) {
            loadGame(autoSave);
        } else {
            playTutorial();
        }
    }

    private void autoSave() {
        GameState gs = saveGame();
        DataManager.autoSave(gs);
    }

    private EventFlagsCollection getEventFlags() {
        return eventFlags;
    }

    private void goToState(int id) {
        this.id = id;
        setCurrentChoices(ChapterSelector.goToState(id));
    }

    private GameState loadAutoSave() {
        GameState gs = DataManager.loadAutoSave();
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