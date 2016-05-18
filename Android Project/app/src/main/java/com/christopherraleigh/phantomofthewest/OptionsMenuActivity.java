package com.christopherraleigh.phantomofthewest;

import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.christopherraleigh.phantomofthewest.data_management.DataManager;
import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.visual_novel.serialization.GameState;

public class OptionsMenuActivity extends AppCompatActivity {

    public void onButtonSaveClick(View view) {
        PotWVN vn = PotWVN.getMainVN();
        GameState game = vn.saveGame();
        boolean saveSuccessful = DataManager.manuallySave(this, game);
        AlertDialog.Builder dialogBuilder = new AlertDialog.Builder(this);
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

    public void onButtonLoadClick(View view) {
        GameState game = DataManager.loadManualSave(this);
        PotWVN vn = PotWVN.getMainVN();
        vn.loadGame(game);
        goBack();
    }

    public void onButtonNewGameClick(View view) {
        PotWVN vn = PotWVN.getMainVN();
        vn.newGame();
        goBack();
    }

    public void onButtonPlayTutorial(View view) {
        PotWVN vn = PotWVN.getMainVN();
        vn.playTutorial();
        goBack();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_options_menu);
    }

    private void goBack() {
        finish();
    }
}
