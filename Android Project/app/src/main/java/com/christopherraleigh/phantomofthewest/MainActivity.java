package com.christopherraleigh.phantomofthewest;

import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    private static final float IMAGE_VIEW_ASPECT_RATIO = 16 / 9;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    @Override
    protected void onStart() {
        super.onStart();
        //setImageViewHeight();
    }

    private void aliasImageView() {
        View iv = findViewById(R.id.imageView);
        //BitmapDrawable draw = new BitmapDrawable(iv.getsr);
        draw.setAntiAlias(false);
        imageView.setImageDrawable(draw);

        iv.requestLayout();
        float ivWidth = (float) iv.getWidth();
        float newHeight = ivWidth / IMAGE_VIEW_ASPECT_RATIO;
        int newHeightInt = Math.round(newHeight);
        iv.getLayoutParams().height = newHeightInt;
    }
}
