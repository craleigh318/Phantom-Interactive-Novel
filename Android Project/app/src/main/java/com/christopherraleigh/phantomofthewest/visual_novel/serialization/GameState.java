package com.christopherraleigh.phantomofthewest.visual_novel.serialization;

import com.christopherraleigh.phantomofthewest.visual_novel.serialization.event_flagging.EventFlagsCollection;

import java.io.Serializable;

/**
 * Created by christopherraleigh on 2016-04-01.
 */
public class GameState implements Serializable {
    private EventFlagsCollection eventFlags;

    private int id;

    public GameState(EventFlagsCollection eventFlags, int id) {
        this.eventFlags = eventFlags;
        this.id = id;
    }

    public EventFlagsCollection getEventFlags() {
        return eventFlags;
    }

    public int getID() {
        return id;
    }
}
