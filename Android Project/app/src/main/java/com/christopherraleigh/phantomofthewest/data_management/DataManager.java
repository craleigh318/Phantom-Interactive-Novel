package com.christopherraleigh.phantomofthewest.data_management;

import android.content.Context;

import com.christopherraleigh.phantomofthewest.visual_novel.serialization.GameState;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

/**
 * Created by christopherraleigh on 2016-04-03.
 */
public class DataManager {

    private static final String autoSaveName = "autoSave";

    private static final String manualSaveName = "manualSave";

    public static boolean autoSave(Context c, GameState gs) {
        return save(c, autoSaveName, gs);
    }

    public static GameState loadAutoSave(Context c) {
        return load(c, autoSaveName);
    }

    public static GameState loadManualSave(Context c) {
        return load(c, manualSaveName);
    }

    public static boolean manuallySave(Context c, GameState gs) {
        return save(c, manualSaveName, gs);
    }

    private static GameState load(Context c, String fileName) {
        GameState gs = null;
        try {
            FileInputStream streamFileIn = c.openFileInput(fileName);
            ObjectInputStream streamObjIn = new ObjectInputStream(streamFileIn);
            try {
                gs = (GameState) streamObjIn.readObject();
            } catch (ClassNotFoundException e2) {
                e2.printStackTrace();
            }
            streamObjIn.close();
            streamFileIn.close();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return gs;
    }

    private static boolean save(Context c, String fileName, GameState gs) {
        try {
            FileOutputStream streamFileOut = c.openFileOutput(fileName, Context.MODE_PRIVATE);
            ObjectOutputStream streamObjOut = new ObjectOutputStream(streamFileOut);
            streamObjOut.writeObject(gs);
            streamObjOut.close();
            streamFileOut.close();
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }
}
