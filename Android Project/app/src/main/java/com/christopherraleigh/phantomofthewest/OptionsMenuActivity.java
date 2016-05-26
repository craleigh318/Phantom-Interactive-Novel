package com.christopherraleigh.phantomofthewest;

import android.app.Activity;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceFragment;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.christopherraleigh.phantomofthewest.data_management.DataManager;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.GameState;

public class OptionsMenuActivity extends PreferenceActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getFragmentManager().beginTransaction().replace(android.R.id.content,
                new MainFragment()).commit();
    }

    public static class MainFragment extends PreferenceFragment {
        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            addPreferencesFromResource(R.xml.activity_options_menu);
        }

        private void onButtonSaveClick(View view) {
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

        private void onButtonLoadClick(View view) {
            GameState game = DataManager.loadManualSave(getActivity());
            PotWVN vn = PotWVN.getMainVN();
            vn.loadGame(game);
            goBack();
        }

        private void onButtonNewGameClick(View view) {
            PotWVN vn = PotWVN.getMainVN();
            vn.newGame();
            goBack();
        }

        private void onButtonPlayTutorial(View view) {
            PotWVN vn = PotWVN.getMainVN();
            vn.playTutorial();
            goBack();
        }

        private void goBack() {
            getActivity().finish();
        }
    }
}
