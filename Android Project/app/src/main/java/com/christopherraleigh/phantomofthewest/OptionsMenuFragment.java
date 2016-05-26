package com.christopherraleigh.phantomofthewest;

import android.app.Activity;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.support.v7.app.AlertDialog;
import android.view.MenuItem;

import com.christopherraleigh.phantomofthewest.data_management.DataManager;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.GameState;

/**
 * Created by christopherraleigh on 2016-05-25.
 */
public class OptionsMenuFragment extends PreferenceFragment implements Preference.OnPreferenceClickListener {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.activity_options_menu);
        addPreferenceListeners();
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                goBack();
                break;
            default:
                return super.onOptionsItemSelected(item);
        }
        return true;
    }

    @Override
    public boolean onPreferenceClick(Preference preference) {
        String key = preference.getKey();
        switch (key) {
            case "buttonSave":
                onButtonSaveClick();
                break;
            case "buttonLoad":
                onButtonLoadClick();
                break;
            case "buttonNewGame":
                onButtonNewGameClick();
                break;
            case "buttonPlayTutorial":
                onButtonPlayTutorialClick();
                break;
            default:
                return false;
        }
        return true;
    }

    private void addPreferenceListeners() {
        Preference pButtonSave = findPreference("buttonSave");
        Preference pButtonLoad = findPreference("buttonLoad");
        Preference pButtonNewGame = findPreference("buttonNewGame");
        Preference pButtonPlayTutorial = findPreference("buttonPlayTutorial");
        pButtonSave.setOnPreferenceClickListener(this);
        pButtonLoad.setOnPreferenceClickListener(this);
        pButtonNewGame.setOnPreferenceClickListener(this);
        pButtonPlayTutorial.setOnPreferenceClickListener(this);
    }

    private void onButtonSaveClick() {
        PotWVN vn = PotWVN.getMainVN();
        GameState game = vn.saveGame();
        Activity thisActivity = getActivity();
        boolean saveSuccessful = DataManager.manuallySave(thisActivity, game);
        AlertDialog.Builder dialogBuilder = new AlertDialog.Builder(thisActivity);
        int dialogMessageID;
        if (saveSuccessful) {
            dialogMessageID = R.string.saveSuccessful;
        } else {
            dialogMessageID = R.string.saveUnsuccessful;
        }
        CharSequence dialogMessage = getText(dialogMessageID);
        dialogBuilder.setMessage(dialogMessage);
        dialogBuilder.setPositiveButton(android.R.string.ok, null);
        AlertDialog dialog = dialogBuilder.create();
        dialog.show();
    }

    private void onButtonLoadClick() {
        GameState game = DataManager.loadManualSave(getActivity());
        PotWVN vn = PotWVN.getMainVN();
        vn.loadGame(game);
        goBack();
    }

    private void onButtonNewGameClick() {
        PotWVN vn = PotWVN.getMainVN();
        vn.newGame();
        goBack();
    }

    private void onButtonPlayTutorialClick() {
        PotWVN vn = PotWVN.getMainVN();
        vn.playTutorial();
        goBack();
    }

    private void goBack() {
        getActivity().finish();
    }
}
