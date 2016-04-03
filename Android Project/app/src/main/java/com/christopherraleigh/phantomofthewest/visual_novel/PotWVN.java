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

    private IStoryChoiceList currentChoices = null;

    private EventFlagsCollection eventFlags = null;

    private int id = 0;

    public IStoryChoiceList getCurrentChoices() {
        return currentChoices;
    }

    public void loadGame(GameState gs) {
        /*EventFlags = gs.EventFlags;
        GoToState(gs.ID);*/
    }

    public void newGame() {
        /*EventFlags = new EventFlagsCollection();
        GoToState(1001);*/
    }

    public void playTutorial() {
        /*EventFlags = new EventFlagsCollection();
        GoToState(1);*/
    }

    public GameState saveGame() {
        GameState gs = new GameState(EventFlags, id);
        return gs;
    }

    public void startUp() {
        /*GameState autoSave = await LoadAutoSave();
        if (autoSave != null) {
            LoadGame(autoSave);
        } else {
            PlayTutorial();
        }*/
    }

    EventFlagsCollection getEventFlags() {
        return eventFlags;
    }

    void goToState(int id) {
        this.id = id;
        setCurrentChoices(ChapterSelector.goToState(id));
    }

    void setCurrentChoices(IStoryChoiceList choices) {
        currentChoices = choices;
        prepareToNotifyObservers();
    }

    private void autoSave() {
        /*GameState gs = SaveGame();
        Task t = DataManager.AutoSave(gs);*/
    }

    private GameState loadAutoSave() {
        GameState gs = DataManager.loadAutoSave();
        return gs;
    }

    private void playAudio() {
        if (currentChoices != null) {
            currentChoices.playAudio();
        }
    }

    private void prepareToNotifyObservers() {
        /*StopAudio();
        AutoSave();
        observable.NotifyObservers(this);
        PlayAudio();*/
    }

    private void stopAudio() {
        /*VoiceoverManager.MainManager.StopSpeech();*/
    }
}