package com.christopherraleigh.phantomofthewest;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.christopherraleigh.phantomofthewest.visual_novel.PotWVN;

public class MainActivity extends AppCompatActivity {

    private static final float IMAGE_VIEW_ASPECT_RATIO = 16 / 9;

    private Bookmark bookmark = null;

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

    private void setTextViewHeight() {
        View textView = findViewById(R.id.scrollView);
        View gridLayout = findViewById(R.id.mainGrid);
        View imageView = findViewById(R.id.imageView);
        View button = findViewById(R.id.buttonOK);
        int gridLayoutHeight = gridLayout.getMeasuredHeight();
        int imageViewHeight = imageView.getMeasuredHeight();
        int buttonHeight = button.getMeasuredHeight();
        int newHeight = gridLayoutHeight - imageViewHeight - buttonHeight;
        ViewGroup.LayoutParams newParams = textView.getLayoutParams();
        newParams.height = newHeight;
        textView.setLayoutParams(newParams);
    }
}
