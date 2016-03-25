package com.christopherraleigh.phantomofthewest;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    private static final float IMAGE_VIEW_ASPECT_RATIO = 16 / 9;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        setImageViewHeight();
    }

    private void setImageViewHeight() {
        View iv = findViewById(R.id.imageView);
        float ivWidth = (float) iv.getWidth();
        float newHeight = ivWidth / IMAGE_VIEW_ASPECT_RATIO;
        int newHeightInt = Math.round(newHeight);
        iv.requestLayout();
        iv.getLayoutParams().height = newHeightInt;
    }
}
