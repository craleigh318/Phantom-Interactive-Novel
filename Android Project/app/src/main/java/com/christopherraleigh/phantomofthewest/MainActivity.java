package com.christopherraleigh.phantomofthewest;

import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    private static final float IMAGE_VIEW_ASPECT_RATIO = 16 / 9;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        BitmapDrawable drawable = (BitmapDrawable) ContextCompat.getDrawable(this, R.drawable.ananya_hands);
        setImage(drawable);
    }

    void setImage(BitmapDrawable image) {
        View v = findViewById(R.id.imageView);
        if (v instanceof ImageView) {
            ImageView iv = (ImageView) v;
            image.setAntiAlias(false);
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
}
