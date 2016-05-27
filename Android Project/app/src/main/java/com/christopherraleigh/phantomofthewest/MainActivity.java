package com.christopherraleigh.phantomofthewest;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;
import com.christopherraleigh.phantomofthewest.voice_overs.VoiceoverManager;

public class MainActivity extends AppCompatActivity {

    private static final float IMAGE_VIEW_ASPECT_RATIO = 16 / 9;

    private Bookmark bookmark = null;

    private VoiceoverManager voiceoverManager = null;

    public void onButtonPreviousClick(View view) {
        bookmark.previousChoice();
    }

    public void onButtonOKClick(View view) {
        bookmark.selectChoice();
    }

    public void onButtonNextClick(View view) {
        bookmark.nextChoice();
    }

    public void onButtonMenuClick(View view) {
        Intent intentOptionsMenu = new Intent(this, OptionsMenuActivity.class);
        startActivity(intentOptionsMenu);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        bookmark = new Bookmark(this);
        voiceoverManager = new VoiceoverManager(this);
        PotWVN.startUp(this);
        PotWVN vn = PotWVN.getMainVN();
        vn.addObserver(bookmark);
        bookmark.update(vn, vn);
    }

    void setImage(Drawable image) {
        View v = findViewById(R.id.imageView);
        if (v instanceof ImageView) {
            ImageView iv = (ImageView) v;
            iv.setImageDrawable(image);
        }
    }

    void setText(CharSequence text) {
        View v = findViewById(R.id.textView);
        if (v instanceof TextView) {
            TextView tv = (TextView) v;
            tv.setText(text);
        }
        speakTextIfEnabled(text);
    }

    void enableChoiceButtons(boolean enabled) {
        enableButton(R.id.buttonPrevious, enabled);
        enableButton(R.id.buttonNext, enabled);
    }

    void enableOKButton(boolean enabled) {
        enableButton(R.id.buttonOK, enabled);
    }

    private void enableButton(int buttonID, boolean enabled) {
        View v = findViewById(buttonID);
        v.setEnabled(enabled);
    }

    private void speakTextIfEnabled(CharSequence text) {
        if (voiceoverManager != null) {
            voiceoverManager.stopSpeech();
            SharedPreferences prefs = PreferenceManager.getDefaultSharedPreferences(this);
            boolean voiceoverEnabled = prefs.getBoolean("switchVoiceover", false);
            if (voiceoverEnabled) {
                voiceoverManager.speak(text);
            }
        }
    }
}
